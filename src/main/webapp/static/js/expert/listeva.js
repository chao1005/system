 $(function(){
			
			var  gridUrl =ctx+'/expert/listTj.json' ;
			  $("#dataTables").jqGrid({
		          url: gridUrl,
		          mtype: "GET",
		          datatype: "json",
		          colModel: [
		              { label: '姓名', name: 'name', width: 90 },
		              { label: '专家分类', name: 'levelName', width: 90 ,formatter : publiced },
		              { label: '关注度', name: 'times', width: 120 },
		              { label: '企业打分', name: 'score', width: 100 }/*,
		              {label: "操作",name: 'operation',fixed:true, sortable:false, resize:false, width: 90,formatter: operation}*/
			  		  ] 
		      });
			  $("#querybtn").click(function(){
				  var name =$("#expert\\.name").val();
				  $("#dataTables").jqGrid("setGridParam",{"url":gridUrl,
						"postData":{"expert.name":name},
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
     		  return  "<a href=/scheduling/list/"+id+">查看排班</a>&nbsp;&nbsp";
		}
		function publiced(cellvalue, options, rowObject){
			var category = rowObject.category;
			var obj = JSON.parse(Orders);
			for (var i = 0; i < obj.length; i++) {
				if(obj[i].sort == category){
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
					url : "/expert/del/"+id,
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
