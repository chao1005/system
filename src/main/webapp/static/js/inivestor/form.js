
function intentionListt(){
	var intentionList = new Array();  
	  $('input[name="intentionType"]:checked').each(function(){    
		  var order= new Object();
		  order.Category = $(this).val();   
		  order.status= 0;
		  intentionList.push(order);
	  });    
	return intentionList;
}
function save(){
		 var pkId =$("#pkId").val();
		 var order = intentionListt();
		 var intentionList = JSON.stringify(order);
		 var tag = check();
		 if(order.length == 0){
			 layer.alert("请选择至少一个投资意向",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(tag){
			 var url ="";
			 if(pkId != null && pkId !=''){
				url = ctx+"/inivestor/toEdit.json"
			 }else{
				 url = ctx+"/inivestor/toAdd.json" 
			 }
				obj = inivestorObject();
				var inivestor = JSON.stringify(obj);
				 if(tag){
					$.ajax({
						 type:"POST",
					     	url:url,
					     	data:{"inivestor":inivestor,"intentionList":intentionList},
					     	dataType:"json",
					        success: function(data){
					        	if(data == true){
									layer.alert("保存成功!",{icon:1});
									window.location.href =ctx+"/inivestor/list";
								}else{
									layer.alert("保存失败!",{icon:2});
								}
					        },
					        error: function(XMLHttpRequest, textStatus, errorThrown){
					        	layer.alert("系统繁忙请稍后再试!",{'icon': 3, title:'提示' });
					        	layer.close(index);
					        }
					        
						}); 
				 }
		 }
	}
	function inivestorObject(){
		 var pkId =$("#pkId").val();
		 var company =$("#company").val();
		 var job =$("#job").val();
		 var special =$("#special").val();
		 var qualification =$("#qualification").val();
		 var permission =$("#permission").val();

		 
		var order= new Object();
 		if(pkId != null && pkId !=''){
			order.pkId= pkId;
		 }
		order.company = company;
		order.job= job;
		order.special= special;
		order.qualification= qualification;
		order.permission= permission;
		order.status= 0;
		return order;
	}
	function check(){
		 var company =$("#company").val();
		 var job =$("#job").val();
		 var special =$("#special").val();
		 var qualification =$("#qualification").val();
		 var permission =$("#permission").val();
		 
		 var tag = true;
		 if(company == null || company == ''){
			 layer.alert("请输入工作单位",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(job == null || job == ''){
			 layer.alert("请输入职务",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(special == null || special == ''){
			 layer.alert("请输入特长",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(permission == null || permission == ''){
			 layer.alert("请选择投资者权限",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(qualification == null || qualification == ''){
			 layer.alert("请选输入资历",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 return tag;
	}
	
	function back(){
		window.location.href =ctx+"/inivestor/list";
	}