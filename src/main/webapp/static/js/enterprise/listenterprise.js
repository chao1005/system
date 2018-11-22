 $(function(){
			
			
			var  gridUrl =ctx+'/order/list.json' ;
			  $("#dataTables").jqGrid({
		          url: gridUrl,
		          mtype: "GET",
		          postData:{"order.enterpriseId":userId},
		          datatype: "json",
		          colModel: [
		              //{ label: '姓名', name: 'jobNum', width: 90 },
		              { label: '专家姓名', name: 'loginName', width: 90 },
		              { label: '预约次数', name: 'times', width: 90 },
		              { label: '专家类别', name: 'mes', width: 100 ,formatter : publiced },
		              {label: "操作",name: 'operation',fixed:true, sortable:false, resize:false, width: 250,formatter: operation}
			  		  ] 
		                           
		      });
			  

			 /* $("#querybtn").click(function(){
				  var name =$("#enterprise\\.name").val();
				  $("#dataTables").jqGrid("setGridParam",{"url":gridUrl,
						"postData":{"enterprise.name":name},
						 }).trigger("reloadGrid",[{page:1}]);

			  });*/

			  
		  });
		function currencyFmatter (cellvalue, options, rowObject)
		{

		   return options.rowId;
		}
		function operation (cellvalue, options, rowObject)
		{
     	   var id = rowObject.pkId;
     		  return   "<a href="+"/enterprise/toEdit/"+id+">编辑</a>&nbsp;&nbsp;"+
     		  "<a href='javascript:void(0)' onclick='del(\""+id+"\")'>删除</a>&nbsp;&nbsp;";
		}
		function publiced(cellvalue, options, rowObject){
			/*var permission = rowObject.permission;
			var obj = JSON.parse(Orders);
			for (var i = 0; i < obj.length; i++) {
				if(obj[i].sort == permission){
					return obj[i].name;
				}
			}*/
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