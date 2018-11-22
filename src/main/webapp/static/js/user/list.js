
var category =$("#user\\.category").val();
var name =$("#user\\.userName").val();
var checkStatus =$("#user\\.checkStatus").val();
var  cellUrl =ctx+"/user/changeUserStatus.json";
var check;
var newcheck = "1";
$(function(){
			
			
			var  gridUrl =ctx+'/user/list.json' ;
			  $("#dataTables").jqGrid({
		          url: gridUrl,
		          mtype: "GET",
		          postData:{"user.userName":name,"user.checkStatus":checkStatus,"user.category":category},
		          datatype: "json",
		          page : pages,
		          //cellsubmit:'remote',
		          //cellurl: cellUrl,
		          //cellEdit:true,
		          //multiselect:false,         
		          colModel: [
                 	  { label: 'id', name: 'pkId', width: 90, hidden:true },
                 	  { label: 'oldStatus', name: 'oldStatus', width: 90, hidden:true },
		              { label: '账号', name: 'loginName', width: 90 },
		              { label: '姓名', name: 'userName', width: 90 },
		              { label: '审核状态', name: 'checkStatus', width: 100 ,formatter : checkStatusPubliced ,editable: true,edittype:'select',   
		                    editoptions:{  
		                        value:"1:待审核;2:已通过;3:未通过",
		                        dataEvents:[{
                            	   type:'change',
                            	   fn:function(e){
                            	   var val = this.value;
                            	   newcheck = this.value;
                            	   // do whatever u want
                            	   }
                        	   }]
		                    },  
		              formoptions:{colpos:5,rowpos:3,elmsuffix:'<font color="red" >*</font>'}},
		              { label: '用户分类', name: 'category', width: 80 ,formatter : publiced  },
		              { label: '注册时间', name: 'createTime', width: 80  },
		              { label: '地址', name: 'address', width: 80  },
		             /* {label: "操作",name: 'operation',fixed:true, sortable:false, resize:false, width: 250,formatter: operation},*/
		              {label: "操作" ,name : 'edit',index : 'edit'}
			  		  ] ,
			  		/*beforeSaveCell : function(rowid,celname,value,iRow,iCol) {
		        		
	        		},
		        	beforeSubmitCell : function(rowId,celname,value,iRow,iCol) {
		        		var rowData = $("#dataTables").jqGrid("getRowData",rowId);
		        		return {tid:rowData.pkId,value:value}
		        		},
	        		afterSaveCell : function(rowid, celname, value, iRow, iCol){
	        			
	        		},
	        		afterSubmitCell : function(serverresponse, rowid, celname, value, iRow, iCol){
	        			console.log(serverresponse.responseText);
	        		}*/
			  		 gridComplete : function() { // 第二步：数据加载完成后 添加操作按钮  
			             var ids = $("#dataTables").jqGrid('getDataIDs'); //获取表格的所有列
			             for (var i = 0; i < ids.length; i++) {
			                 var id = ids[i];
			                 var rowData = $("#dataTables").jqGrid("getRowData",id);
			                
			     			if(checkStatus == '' || checkStatus == null){
			     				checkStatus ="0";
			     			}
			     			var page = $('#dataTables').getGridParam('page'); // current page
			                var editBtn = "<div class=\"btnBox\"> "
			                	 			+"<a href=\"javascript:void(0)\" id=\""+id+"_edit\" onclick='editParam(\""+id+"\")'>审核</a>&nbsp;&nbsp;"
			                	 			+"<a id=\""+id+"_edit1\" href=\"/user/toEdit/"+rowData.pkId+"/"+checkStatus+"/"+page+"?userName="+name+"&category="+category+"\">编辑</a>&nbsp;&nbsp;"
		                	 				+"<a id=\""+id+"_del\"  href=\"javascript:void(0)\" onclick='del(\""+rowData.pkId+"\")'>删除</a>&nbsp;&nbsp;"
		                	 				+"<a href=\"javascript:void(0)\" style=\"display:none;\" id=\""+id+"_save\" onclick='saveParam(\""+id+"\")'>保存</a>&nbsp;&nbsp;"
		                	 				+"<a href=\"javascript:void(0)\" style=\"display:none;\" id=\""+id+"_cancel\" onclick='cancelParam(\""+id+"\")'>取消</a>&nbsp;&nbsp;"
			                                +"</div>";

			                 $("#dataTables").jqGrid('setRowData',ids[i], {edit : editBtn}); //给每一列添加操作按钮
			                 }//end for (var i = 0; i < ids.length; i++)
			         }
		                           
		      });
			  

			  $("#querybtn").click(function(){
				  name =$("#user\\.userName").val();
				  checkStatus =$("#user\\.checkStatus").val();
				  category =$("#user\\.category").val();
				  $("#dataTables").jqGrid("setGridParam",{"url":gridUrl,
						"postData":{"user.userName":name,"user.checkStatus":checkStatus,"user.category":category},
						 }).trigger("reloadGrid",[{page:1}]);

			  });

			  
		  });
		function editParam(rowId) { //第三步：定义编辑操作
			var rowData = $("#dataTables").jqGrid("getRowData",rowId);
			//check = $('#check_'+rowData.pkId).val();
			//newcheck = "1";
		    var parameter = {
		        oneditfunc : function(rowid) { //在行成功转为编辑模式下触发的事件，参数为此行数据id
		            //alert("edited" + rowid);
		        }}
		    $('#'+rowId+'_edit').hide();
		    $('#'+rowId+'_edit1').hide();
		    $('#'+rowId+'_del').hide();
	        $('#'+rowId+'_save').show();
	        $('#'+rowId+'_cancel').show();
		    $("#dataTables").editRow(rowId);//开启可编辑模式
		    //jQuery("#list").editRow(rowId,parameter); //如果需要参数
		    $("#dataTables").jqGrid('editRow', rowId, true);//开启可编辑模式
		}
		function saveParam(rowId) {
			var rowData = $("#dataTables").jqGrid("getRowData",rowId);
		    var parameter = {
		        url : cellUrl, //代替jqgrid中的editurl
		        mtype : "POST",
		        extraparam : { // 额外 提交到后台的数据
		                "tid" : rowData.pkId
		         },
		        successfunc : function(XHR) { //在成功请求后触发;事件参数为XHR对象，需要返回true/false;
		        	$('#'+rowId+'_edit').show();
		        	$('#'+rowId+'_edit1').show();
		        	$('#'+rowId+'_del').show();
	            	$('#'+rowId+'_save').hide();
	            	$('#'+rowId+'_cancel').hide();
	            	var strs = XHR.responseText;
		        	if (strs == "-1") {
		        		layer.alert("修改失败!",{icon:2});
		                if(rowData.oldStatus == '1'){
		    				html = '<input id="check_'+rowData.pkId+'" name="check" hidden="" value="1"><span style="color:#30B6E1;font-weight: bold;">待审核</span>';
		    			}else if(rowData.oldStatus == '2'){
		    				html = '<input id="check_'+rowData.pkId+'" name="check" hidden="" value="2"><span style="color:#22b122;font-weight: bold;">已通过</span>';
		    			}else if(rowData.oldStatus == '3'){
		    				html = '<input id="check_'+rowData.pkId+'" name="check" hidden="" value="3"><span style="color:#FF745E;font-weight: bold;">未通过</span>';
		    			}
		            	$("#"+rowId).find("td[aria-describedby='dataTables_checkStatus']").html(html);
		            	//newcheck = "1";
		                return false; //返回false会使用修改前的数据填充,同时关闭编辑模式。
		            } else {
		            	var html;
		            	if(strs == '1'){
		    				html = '<input id="check_'+rowData.pkId+'" name="check" hidden="" value="1"><span style="color:#30B6E1;font-weight: bold;">待审核</span>';
		    			}else if(strs == '2'){
		    				html = '<input id="check_'+rowData.pkId+'" name="check" hidden="" value="2"><span style="color:#22b122;font-weight: bold;">已通过</span>';
		    			}else if(strs == '3'){
		    				html = '<input id="check_'+rowData.pkId+'" name="check" hidden="" value="3"><span style="color:#FF745E;font-weight: bold;">未通过</span>';
		    			}
		            	$("#"+rowId).find("td[aria-describedby='dataTables_checkStatus']").html(html);
		            	layer.alert("修改成功!",{icon:1});
		                //newcheck = "1";
		                return true; //返回true会使用修改后的数据填充当前行,同时关闭编辑模式。
		            }
		
		          }//end successfunc
		     }//end paramenter
		    $("#dataTables").saveRow(rowId, parameter);
		    $("#dataTables").jqGrid('saveRow', rowId, parameter);
		}
		
		//第五步：定义取消操作
		   function cancelParam(rowId) {
			   var rowData = $("#dataTables").jqGrid("getRowData",rowId);
				$('#'+rowId+'_edit').show();
		        $('#'+rowId+'_edit1').show();
		        $('#'+rowId+'_del').show();
	           	$('#'+rowId+'_save').hide();
	           	$('#'+rowId+'_cancel').hide();
	           	var html ="";
	           	if(rowData.oldStatus == '1'){
    				html = '<input id="check_'+rowData.pkId+'" name="check" hidden="" value="1"><span style="color:#30B6E1;font-weight: bold;">待审核</span>';
    			}else if(rowData.oldStatus == '2'){
    				html = '<input id="check_'+rowData.pkId+'" name="check" hidden="" value="2"><span style="color:#22b122;font-weight: bold;">已通过</span>';
    			}else if(rowData.oldStatus == '3'){
    				html = '<input id="check_'+rowData.pkId+'" name="check" hidden="" value="3"><span style="color:#FF745E;font-weight: bold;">未通过</span>';
    			}
            	$("#"+rowId).find("td[aria-describedby='dataTables_checkStatus']").html(html);
            	newcheck = "1";
				$("#dataTables").jqGrid('restoreRow', rowId);
		        $("#dataTables").restoreRow(rowId); //用修改前的数据填充当前行
		    }
		function changeStatus(id,status){
			$.ajax({
				type : "POST",
				url : "/user/changeUserStatus/"+id+"/"+status,
				dataType : "json",
				success :  function (data){
					if(data){
						 alert("修改成功");
					}else{
						alert("修改失败");
					}
				},
				error:function(){
					parent.layer.close(index);
					layer.alert("系统繁忙请稍后再试!",{'icon': 3, title:'提示' });
				}

			});
		}
		function currencyFmatter (cellvalue, options, rowObject)
		{

		   return options.rowId;
		}
		function operation (cellvalue, options, rowObject)
		{
			if(name == '' || name == null){
				name ="-1";
			}
			if(checkStatus == '' || checkStatus == null){
				checkStatus ="0";
			}
			
     	   var id = rowObject.pkId;
     		  return  "<a href="+"/user/toEdit/"+id+"/"+name+"/"+checkStatus+">编辑</a>&nbsp;&nbsp;"+
     		  "<a href='javascript:void(0)' onclick='del(\""+id+"\")'>删除</a>&nbsp;&nbsp;";
		}
		function publiced(cellvalue, options, rowObject){
			var category = rowObject.category;
			var obj = JSON.parse(Orders);
			for (var i = 0; i < obj.length; i++) {
				if(obj[i].sort == category){
					return obj[i].name;
				}
			}
		}
		function checkStatusPubliced(cellvalue, options, rowObject){
			var checkStatus = rowObject.checkStatus;
			if(checkStatus == '1'){
				return '<input id="check_'+rowObject.pkId+'" name="check" hidden="" value="1"><span style="color:#30B6E1;font-weight: bold;">待审核</span>';
			}else if(checkStatus == '2'){
				return '<input id="check_'+rowObject.pkId+'" name="check" hidden="" value="2"><span style="color:#22b122;font-weight: bold;">已通过</span>';
			}else if(checkStatus == '3'){
					return '<input id="check_'+rowObject.pkId+'" name="check" hidden="" value="3"><span style="color:#FF745E;font-weight: bold;">未通过</span>';
			}
		}
		function del(id){
			$.confirm({success:function(index){
				
				$.ajax({
					type : "POST",
					url : "/user/del/"+id,
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
		function toPublic(id,tag){
			$.ajax({
				url:ctx+"/user/toPublic",
				type:"POST",
				dataType:"json",
				data:{"id":id,"sffb":tag},
				success:function(data){
					if(data==true){
						$("#"+id).trigger("reloadGrid");//重新加载这列
					}else{
						layer.alert("系统繁忙请稍后再试!",{'icon': 3, title:' ' });
					}
				}
			});
			
			
		}