 $(function(){
			
			
			var  gridUrl =ctx+'/inivestor/list.json' ;
			  $("#dataTables").jqGrid({
		          url: gridUrl,
		          mtype: "GET",
		          datatype: "json",
		          colModel: [
		              //{ label: '姓名', name: 'jobNum', width: 90 },
		              { label: '工作单位', name: 'company', width: 90 },
		              { label: '资历', name: 'qualification', width: 90 },
		              { label: '投资者权限', name: 'permission', width: 100 ,formatter : publiced },
		              {label: "操作",name: 'operation',fixed:true, sortable:false, resize:false, width: 250,formatter: operation}
			  		  ] 
		                           
		      });
			  

			  $("#querybtn").click(function(){
				  var name =$("#inivestor\\.company").val();
				  $("#dataTables").jqGrid("setGridParam",{"url":gridUrl,
						"postData":{"inivestor.company":name},
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
     		  return   "<a href="+"/inivestor/toEdit/"+id+">编辑</a>&nbsp;&nbsp;"+
     		  "<a href='javascript:void(0)' onclick='del(\""+id+"\")'>删除</a>&nbsp;&nbsp;";
		}
		function publiced(cellvalue, options, rowObject){
			var permission = rowObject.permission;
			var obj = JSON.parse(Orders);
			for (var i = 0; i < obj.length; i++) {
				if(obj[i].sort == permission){
					return obj[i].name;
				}
			}
		}
		
		function del(id){
			$.confirm({success:function(index){
				
				$.ajax({
					type : "POST",
					url : "/inivestor/del/"+id,
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