var name =$("#roadshow\\.name").val(); 
$(function(){
			
			
			var  gridUrl =ctx+'/roadshow/list.json' ;
			  $("#dataTables").jqGrid({
		          url: gridUrl,
		          mtype: "GET",
		          postData:{"roadshow.name":name},
		          datatype: "json",
		          page : pages,
		          colModel: [
		              //{ label: '姓名', name: 'jobNum', width: 90 },
		              { label: '项目名称', name: 'name', width: 90  },
		              { label: '企业主体', name: 'bodyName', width: 90 },
		              { label: '审核状态', name: 'aduitorStatus', width: 100,formatter : publiced },
		              {label: "操作",name: 'operation',fixed:true, sortable:false, resize:false, width: 250,formatter: operation}
			  		  ] 
		                           
		      });
			  

			  $("#querybtn").click(function(){
				  var name =$("#roadshow\\.name").val();
				  $("#dataTables").jqGrid("setGridParam",{"url":gridUrl,
						"postData":{"roadshow.name":name},
						 }).trigger("reloadGrid",[{page:1}]);

			  });

			  
		  });
		function currencyFmatter (cellvalue, options, rowObject)
		{

		   return options.rowId;
		}
		function operation (cellvalue, options, rowObject)
		{
			var page = $('#dataTables').getGridParam('page'); // current page
     	   var id = rowObject.pkId;
     	  var name =$("#roadshow\\.name").val();
     	 
     		  return   "<a href="+"/roadshow/toEdit/"+id+"/"+page+"?name="+name+">编辑</a>&nbsp;&nbsp;"+
     		  "<a href='javascript:void(0)' onclick='del(\""+id+"\")'>删除</a>&nbsp;&nbsp;";
		}
		function publiced(cellvalue, options, rowObject){
			var aduitorStatus = rowObject.aduitorStatus;
			var obj = JSON.parse(Orders);
			for (var i = 0; i < obj.length; i++) {
				if(obj[i].sort == aduitorStatus){
					return obj[i].name;
				}
			}
		}
		
		function del(id){
			$.confirm({success:function(index){
				
				$.ajax({
					type : "POST",
					url : "/roadshow/del/"+id,
					dataType : "json",
					success :  function (data){
						if(data){
							 layer.close(index);
							 $("#querybtn").trigger("click");
						}else{
							layer.close(index);
							layer.alert("系统繁忙请稍后再试!",{'icon': 3, title:'提示' });
						}
					},
					error:function(){
						parent.layer.close(index);
						layer.alert("系统繁忙请稍后再试!",{'icon': 3, title:'提示' });
					}

				});
				
				
			}}); 
			
		}
