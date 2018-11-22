
count = count*1;
function addAdvice(){
	if(count == 0){
		count=count+1;
	}
	$("#advice").append(" <div class='form-group  col-md-5'><label style='width: 65%;'>" +
			"咨询侧重点"+(count+1)+":</label><input  id='adviceType"+(count+1)+"'   class='form-control' " +
					"maxlength='50' style='width: 100%;'/></div>");
	count=count+1;
}
function adviceListt(){
	if(count == 0){
		count=count+1;
	}
	var adviceList = new Array();
	for (var i = 1; i <= count; i++) {
		var adviceType = $('#adviceType'+i).val();
		if(adviceType != null || adviceType != ''){
			var order= new Object();
			 order.type =adviceType;
			 adviceList.push(order);
		 }
	}
	return adviceList;
}
function save(){
		 var pkId =$("#pkId").val();
		 var order = adviceListt();
		 var adviceList = JSON.stringify(order);
		 var tag = check();
		 if(order.length == 0){
			 layer.alert("请输入至少一条咨询侧重点",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(tag){
			 var url ="";
			 if(pkId != null && pkId !=''){
				url = ctx+"/enterprise/toEdit.json"
			 }else{
				 url = ctx+"/enterprise/toAdd.json" 
			 }
				obj = enterpriseObject();
				var enterprise = JSON.stringify(obj);
				 if(tag){
					$.ajax({
						 type:"POST",
					     	url:url,
					     	data:{"enterprise":enterprise,"adviceList":adviceList},
					     	dataType:"json",
					        success: function(data){
					        	if(data == true){
									layer.alert("保存成功!",{icon:1});
									window.location.href =ctx+"/enterprise/list";
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
	function enterpriseObject(){
		 var pkId =$("#pkId").val();
		 var name =$("#name").val();
		 var registeredCapital =$("#registeredCapital").val();
		 var corporation =$("#corporation").val();
		 var address =$("#address").val();
		 var permission =$("#permission").val();
		 var introduction =$("#introduction").val();
		 var brief =$("#brief").val();
		 var level =$("#level").val();
		 var status =$("#status").val();

		 
		var order= new Object();
 		if(pkId != null && pkId !=''){
			order.pkId= pkId;
		 }
		order.name = name;
		order.registeredCapital= registeredCapital;
		order.corporation= corporation;
		order.address= address;
		order.permission= permission;
		order.introduction= introduction;
		order.brief= brief;
		order.level= level;
		order.status= status;
		return order;
	}
	function check(){
		var name =$("#name").val();
		 var registeredCapital =$("#registeredCapital").val();
		 var corporation =$("#corporation").val();
		 var address =$("#address").val();
		 var permission =$("#permission").val();
		 var brief =$("#brief").val();
		 
		 var tag = true;
		 if(name == null || name == ''){
			 layer.alert("请输入企业名称",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(registeredCapital == null || registeredCapital == ''){
			 layer.alert("请输入注册资质",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(address == null || address == ''){
			 layer.alert("请输入企业地址",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(permission == null || permission == ''){
			 layer.alert("请选择企业权限",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(corporation == null || corporation == ''){
			 layer.alert("请选输入法人",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(brief == null || brief == ''){
			 layer.alert("请输入简介",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 return tag;
	}
	
	function back(){
		window.location.href =ctx+"/enterprise/list";
	}