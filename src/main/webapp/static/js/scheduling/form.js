var expertId = $("#expert_id").val();
function save(){
		 var pkId =$("#pkId").val();
		 var tag = check();
		 if(tag){
			 var url ="";
			 if(pkId != null && pkId !=''){
				url = ctx+"/scheduling/toEdit.json"
			 }else{
				 url = ctx+"/scheduling/toAdd.json" 
			 }
				var obj = schedulingObject();
				var scheduling = JSON.stringify(obj);
				$.ajax({
					 type:"POST",
				     	url:url,
				     	data:{"scheduling":scheduling},
				     	dataType:"json",
				        success: function(data){
				        	if(data == true){
								layer.alert("保存成功!",{icon:1});
								window.location.href =ctx+"/scheduling/list/"+expertId;
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
	function schedulingObject(){
		 var pkId =$("#pkId").val();
		 var adviceDate =$("#adviceDate").val();
		 var startTime =$("#startTime").val();
		 var endTime =$("#endTime").val();
		 var capacity =$("#capacity").val();
		 
		 
		var order= new Object();
 		if(pkId != null && pkId !=''){
			order.pkId= pkId;
		 }
		order.adviceDate = adviceDate;
		order.startTime= startTime;
		order.endTime= endTime;
		order.capacity= capacity;
		order.expertId= expertId;
		return order;
	}
	function check(){
		 var advicedate =$("#adviceDate").val();
		 var starttime =$("#startTime").val();
		 var endtime =$("#endTime").val();
		 var capacity =$("#capacity").val();
		 var tag = true;
		 if(advicedate == null || advicedate == ''){
			 layer.alert("请输入咨询日期",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(starttime == null || starttime == ''){
			 layer.alert("请输入开始时间",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(endtime == null || endtime == ''){
			 layer.alert("请输入结束时间",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(starttime>endtime){
			 layer.alert("开始时间不能大于结束时间",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(capacity == null || capacity == ''){
			 layer.alert("请输入预约人数",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 return tag;
	}
	function back(){
		window.location.href =ctx+"/scheduling/list/"+expertId;
	}