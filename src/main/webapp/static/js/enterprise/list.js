var name =$("#enterprise\\.name").val();
 $(function(){
			
			
			var  gridUrl =ctx+'/enterprise/list.json';
			  $("#dataTables").jqGrid({
		          url: gridUrl,
		          mtype: "GET",
		          page:pages,
		          postData:{"enterprise.name":name},
		          datatype: "json",
		          colModel: [
		              //{ label: '姓名', name: 'jobNum', width: 90 },
		              { label: '企业名称', name: 'name', width: 90 },
		              { label: '法人', name: 'corporation', width: 90 },
		              { label: '权限', name: 'permission', width: 100 ,formatter : publiced },
		              {label: "操作",name: 'operation',fixed:true, sortable:false, resize:false, width: 250,formatter: operation}
			  		  ] 
		                           
		      });
			  

			  $("#querybtn").click(function(){
				  name =$("#enterprise\\.name").val();
				  $("#dataTables").jqGrid("setGridParam",{"url":gridUrl,
						"postData":{"enterprise.name":name},
						 }).trigger("reloadGrid",[{page:1}]);

			  });

			  
		  });
		function currencyFmatter (cellvalue, options, rowObject)
		{

		   return options.rowId;
		}
		function operation (cellvalue, options, rowObject)
		{
     	   var id = rowObject.pkId;
     	   var page = $('#dataTables').getGridParam('page'); // current page
     		return   "<a href="+"/enterprise/toList/"+id+"/"+page+"?name="+name+">查看预约信息</a>&nbsp;&nbsp;";
		}
		function publiced(cellvalue, options, rowObject){
			var permission = rowObject.permission;
			var obj = JSON.parse(Orders);
			for (var i = 0; i < obj.length; i++) {
				if(obj[i].sort == permission){
					return obj[i].name;
				}else{
					return '无';
				}
			}
		}
		
		function del(id){
			$.confirm({success:function(index){
				
				$.ajax({
					type : "POST",
					url : "/enterprise/del/"+id,
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