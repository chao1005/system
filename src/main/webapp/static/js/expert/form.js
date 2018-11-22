function save(){
		 var pkId =$("#pkId").val();
		 var tag = check();
		 if(tag){
			 var url ="";
			 if(pkId != null && pkId !=''){
				url = ctx+"/expert/toEdit.json"
			 }else{
				 url = ctx+"/expert/toAdd.json" 
			 }
				var obj = expertObject();
				var expert = JSON.stringify(obj);
				$.ajax({
					 type:"POST",
				     	url:url,
				     	data:{"expert":expert},
				     	dataType:"json",
				        success: function(data){
				        	if(data == true){
								layer.alert("保存成功!",{icon:1});
								window.location.href =ctx+"/expert/list";
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
	function choose(){
	    //iframe层-父子操作
	    layer.open({
	      type: 2,
	      area: ['350px', '450px'],
	      fixed: false, //不固定
	      maxmin: true,
	      content: ctx+'/user/selectAll'
	    });
	}
	function expertObject(){
		 var pkId =$("#pkId").val();
		 var company =$("#company").val();
		 var job =$("#job").val();
		 var special =$("#special").val();
		 var qualification =$("#qualification").val();
		 var category =$("#category").val();
		 var level =$("#level").val();
		 var userId =$("#userId").val();
		 var introduction =$("#introduction").val();
		 var status =$("#status").val();
		 
		 
		var order= new Object();
 		if(pkId != null && pkId !=''){
			order.pkId= pkId;
		 }
		order.company = company;
		order.job= job;
		order.userId= userId;
		order.special= special;
		order.qualification= qualification;
		order.category= category;
		order.level= level;
		order.introduction= introduction;
		order.status= status;
		return order;
	}
	function check(){
		var userId =$("#userId").val();
		 var company =$("#company").val();
		 var job =$("#job").val();
		 var special =$("#special").val();
		 var qualification =$("#qualification").val();
		 var tag = true;
		 if(company == null || company == ''){
			 layer.alert("请输入工作单位",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(userId == null || userId == ''){
			 layer.alert("请选择一个账号",{'icon': 3, title:'提示' });
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
		 if(qualification == null || qualification == ''){
			 layer.alert("请输入资质",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 return tag;
	}
	function back(){
		window.location.href =ctx+"/expert/list";
	}