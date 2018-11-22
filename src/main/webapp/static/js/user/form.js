  //count = count*1;
	$(document).ready(function() {
		//附件上传
		var $list=$("#thelist");   
	    var uploader = WebUploader.create({
			auto:true,
		    // swf文件路径
		    swf: ctxThird+'/webupload/Uploader.swf',

		    // 文件接收服务端。
		    server: ctx+'/user/Upload',

		    // 选择文件的按钮。可选。
		    // 内部根据当前运行是创建，可能是input元素，也可能是flash.
		    pick : {
		    	id : "#picker",
		    	multiple: false
		    },
			
		    // 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
		    resize: false,
		    fileSingleSizeLimit: 2*1024*1024,
		    accept: {
	            title: 'Images',
	            extensions: 'jpg,png',
	            mimeTypes: 'image/*'
	        }
		});
		uploader.on( 'fileQueued', function( file ) {
		  /*   $list.append( '<div id="' + file.id + '" class="item">' +
		        '<h4 class="info">' + file.name + '</h4>' +
		        '<p class="state">等待上传...</p>' +
		        '<p class="urls">文件路径</p>' +
		    '</div>' ); */
		});
		uploader.on("error",function (type){
	        if (type=="Q_TYPE_DENIED"){
	        	layer.alert("请上传图片文件，类型为jpg,png");
	        }else if(type=="F_EXCEED_SIZE"){
	        	layer.alert("文件大小不超过2M");
	        }else if(type == "F_DUPLICATE"){
	        	layer.alert("不要选择重复文件");
	        }
	    });
		uploader.on( 'uploadProgress', function( file, percentage ) {
		    var $li = $( '#'+file.id ),
		        $percent = $li.find('.progress .progress-bar');

		    // 避免重复创建
		    if ( !$percent.length ) {
		        $percent = $('<div class="progress progress-striped active">' +
		          '<div class="progress-bar" role="progressbar" style="width: 0%">' +
		          '</div>' +
		        '</div>').appendTo( $li ).find('.progress-bar');
		    }

		 //   $li.find('p.state').text('上传中');

		 //   $percent.css( 'width', percentage * 100 + '%' );
		});
		
		uploader.on( 'uploadSuccess', function( file,res ) {
		 //   $( '#'+file.id ).find('p.state').text('已上传');
		 //   $( '#'+file.id ).find('p.urls').text(res.filepath);
			
		    $("#turnimg").attr("src",res.filepath);
			$("#img").val(res.filepath);
			//$("#imgType").val(file.ext);
		});

		uploader.on( 'uploadError', function( file ) {
		 //   $( '#'+file.id ).find('p.state').text('上传出错');
		});

		uploader.on( 'uploadComplete', function( file ) {
		    $( '#'+file.id ).find('.progress').fadeOut();
		});
	});
	function save(){
		 var pkId =$("#pkId").val();
		 var tag = check();
		 var object1 = '';
		 if(tag == true){
			 if(categoryName == 'enterprise'){
				 tag = enterprisecheck();
			 }else if(categoryName == 'inivestor'){
				 tag = inivestorcheck();
			 }else if(categoryName == 'expert'){
				 tag = expertcheck();
			 }
		 }
		 if(tag){
			 var url ="";
			 var obj = userObject();
			 var user = JSON.stringify(obj);
			 if(categoryName != ''){
				 var category =$("#category").val(); 
				 if(category == '5'){
					 var objectt;
					 object1 = expertObject();
					 objectt = JSON.stringify(object1);
					 if(pkId != null && pkId !=''){
						 url = ctx+"/user/Edit.json"
					 }else{
						 url = ctx+"/user/Add.json" 
					 }
					 $.ajax({
						 type:"POST",
						 url:url,
						 data:{"user":user,"order":objectt},
						 dataType:"json",
						 success: function(data){
							 if(data == true){
								 layer.alert("保存成功!",{icon:1});
								 window.location.href =ctx+"/user/list?user.userName="+name1+"&user.checkStatus="+checkStatu1+"&page="+page+"&user.category="+category1;
							 }else{
								 layer.alert("保存失败!",{icon:2});
							 }
						 },
						 error: function(XMLHttpRequest, textStatus, errorThrown){
							 layer.alert("系统繁忙请稍后再试!",{'icon': 3, title:'提示' });
							 layer.close(index);
						 }
						 
					 });
				 }else if(category == '3'){
					 var objectt;
					 object1 = enterpriseObject();
					 objectt = JSON.stringify(object1);
					 if(pkId != null && pkId !=''){
						 url = ctx+"/user/Edit.json"
					 }else{
						 url = ctx+"/user/Add.json" 
					 }
					 $.ajax({
						 type:"POST",
						 url:url,
						 data:{"user":user,"order":objectt},
						 dataType:"json",
						 success: function(data){
							 if(data == true){
								 layer.alert("保存成功!",{icon:1});
								 window.location.href =ctx+"/user/list?user.userName="+name1+"&user.checkStatus="+checkStatu1+"&page="+page+"&user.category="+category1;
							 }else{
								 layer.alert("保存失败!",{icon:2});
							 }
						 },
						 error: function(XMLHttpRequest, textStatus, errorThrown){
							 layer.alert("系统繁忙请稍后再试!",{'icon': 3, title:'提示' });
							 layer.close(index);
						 }
						 
					 });
				 }else{
					 /*if(categoryName == 'enterprise'){
						 object1 = enterpriseObject();
						 var objectt = JSON.stringify(object1);
						 //object2 = enterpriseListt();
						 //var objectlist = JSON.stringify(object2);
						 if(object2.length == 0){
							 layer.alert("请输入至少一条咨询侧重点",{'icon': 3, title:'提示' });
							 tag = false;
						 }
					 }else*/ if(categoryName == 'inivestor'){
						 object1 = inivestorObject();
						 var objectt = JSON.stringify(object1);
						 object2 = inivestorListt();
						 var objectlist = JSON.stringify(object2);
						 if(object2.length == 0){
							 layer.alert("请选择至少一个投资意向",{'icon': 3, title:'提示' });
							 tag = false;
						 }
					 }
					 if(pkId != null && pkId !=''){
						 url = ctx+"/user/edit.json"
					 }else{
						 url = ctx+"/user/add.json" 
					 }
					 if(tag){
						 $.ajax({
							 type:"POST",
							 url:url,
							 data:{"user":user,"order":objectt,"orderList":objectlist,"category":category},
							 dataType:"json",
							 success: function(data){
								 if(data == true){
									 layer.alert("保存成功!",{icon:1});
									 window.location.href =ctx+"/user/list?user.userName="+name1+"&user.checkStatus="+checkStatu1+"&page="+page+"&user.category="+category1;
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
			 }else{
				 if(pkId != null && pkId !=''){
					 url = ctx+"/user/toEdit.json"
				 }else{
					 url = ctx+"/user/toAdd.json" 
				 }
				 $.ajax({
					 type:"POST",
					 url:url,
					 data:{"user":user},
					 dataType:"json",
					 success: function(data){
						 if(data == true){
							 layer.alert("保存成功!",{icon:1});
							 window.location.href =ctx+"/user/list?user.userName="+name1+"&user.checkStatus="+checkStatu1+"&page="+page+"&user.category="+category1;
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
	function userObject(){
		 var pkId =$("#pkId").val();
		 var img =$("#img").val();
		 var loginName =$("#loginName").val();
		 var password =$("#password").val();
		 var userName =$("#userName").val();
		 var jobNum =$("#jobNum").val();
		 var sex =$('input[name="sex"]:checked').val();
		 var category =$("#category").val();
		 var reference =$("#reference").val();
		 var mobile =$("#mobile").val();
		 var email =$("#email").val();
		 var phone =$("#phone").val();
		 var identityType =$("#identityType").val();
		 var identityNum =$("#identityNum").val();
		 var address =$("#address").val();
		 var status =$('input[name="status"]:checked').val();
		 var checkStatus =$('input[name="checkStatus"]:checked').val();
		 
		var order= new Object();
 		if(pkId != null && pkId !=''){
			order.pkId= pkId;
		 }
		order.img= img;
		order.loginName = loginName;
		order.password= password;
		order.userName= userName;
		order.jobNum= jobNum;
		order.sex= sex;
		order.category= category;
		order.reference= reference;
		order.mobile= mobile;
		order.email= email;
		order.phone= phone;
		order.identityType= identityType;
		order.identityNum= identityNum;
		order.address= address;
		order.status= status;
		order.checkStatus= checkStatus;
		return order;
	}
	function check(){
		 var pkId =$("#pkId").val();
		 if(pkId == null || pkId == ''){
			 pkId ='-1';
		 }
		 var img =$("#img").val();
		 var loginName =$("#loginName").val();
		 var password =$("#password").val();
		 var userName =$("#userName").val();
		 var category =$("#category").val();
		 var categoryname =$("#category").text();
		 var mobile =$("#mobile").val();
		 var email =$("#email").val();
		 var phone =$("#phone").val();
		 var checkStatus =$('input[name="checkStatus"]:checked').val();
		 
		 var tag = true;
		 if(loginName == null || loginName == ''){
			 layer.alert("请输入用户名",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(checkStatus == null || checkStatus == ''){
			 layer.alert("请选择审核状态",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(password == null || password == ''){
			 layer.alert("请输入密码",{'icon': 3, title:'提示' });
			 tag = false;
		 }else if(password.length<8 && password.length != 0){
			 layer.alert("请输入至少8位数的密码",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(userName == null || userName == ''){
			 layer.alert("请输入姓名",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(category == null || category == ''){
			 layer.alert("请选择用户类型",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(categoryname == '专家' || categoryname == '企业' || categoryname == '投资者'){
			 if(img == null || img == ''){
				 layer.alert("请上传头像",{'icon': 3, title:'提示' });
				 tag = false;
			 }
		 }
		 if(!email.match(/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/) && email != null && email != ''){
				alert('邮箱格式不对');
				var email =$("#email").val('');
				tag = false;
				
			}
		 if(!mobile.match(/^1[0-9]{10}$/)&& mobile != null && mobile != ''){
				alert('手机号格式不对');
				var email =$("#email").val('');
				tag = false;
				
			}
		 if(!phone.match(/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/) && phone != null && phone != ''){
				alert('电话格式不对');
				var email =$("#email").val('');
				tag = false;
				
			}
		 if(tag){
			$.ajax({
				 type:"POST",
				 async : false,
			     	url:ctx+"/user/checkUserName.json",
			     	data:{"userName":loginName,"id":pkId},
			     	dataType:"json",
			        success: function(data){
			        	if(data == 0){
							tag = true;
						}else{
							tag = false;
							 layer.alert("账号重复请重新输入...",{'icon': 3, title:'提示' });
						}
			        },
			        error: function(XMLHttpRequest, textStatus, errorThrown){
			        	layer.alert("系统繁忙请稍后再试!",{'icon': 3, title:'提示' });
			        }
			        
				}); 
		 }
		 return tag;
	}
	function back(){
		window.location.href =ctx+"/user/list?user.userName="+name1+"&user.checkStatus="+checkStatu1+"&page="+page+"&user.category="+category1;
	}
	
	//企业
	function enterpriseObject(){
		 var pkId =$("#enterpriseId").val();
		 var name =$("#enterpriseName").val();
		 var registeredCapital =$("#enterpriseRegisteredCapital").val();
		 var corporation =$("#enterpriseCorporation").val();
		 var address =$("#enterpriseAddress").val();
		 var permission =$("#enterprisePermission").val();
		 var introduction =$("#enterpriseIntroduction").val();
		 var brief =$("#enterpriseBrief").val();
		 var level =$("#enterpriseLevel").val();
		 var status =$("#enterpriseStatus").val();
		 var advices =$("#advices").val();

		 
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
		order.status= 0;
		order.advices= advices;
		return order;
	}
	function enterprisecheck(){
		var name =$("#enterpriseName").val();
		 var registeredCapital =$("#enterpriseRegisteredCapital").val();
		 var corporation =$("#enterpriseCorporation").val();
		 var address =$("#enterpriseAddress").val();
		 var permission =$("#enterprisePermission").val();
		 var brief =$("#enterpriseBrief").val();
		 var advices =$("#advices").val();
		 
		 
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
		 }if(advices == null || advices == ''){
			 layer.alert("请输入咨询侧重点",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 return tag;
	}
	function addAdvice(){
		if(count == 0){
			count=count+1;
		}
		$("#advice").append(" <div class='form-group  col-md-5'><label style='width: 65%;'>" +
				"咨询侧重点"+(count+1)+":</label><input  id='adviceType"+(count+1)+"'   class='form-control' " +
						"maxlength='50' style='width: 100%;'/></div>");
		count=count+1;
	}
	function enterpriseListt(){
		if(count == 0){
			count=count+1;
		}
		var adviceList = new Array();
		for (var i = 1; i <= count; i++) {
			var adviceType = $('#adviceType'+i).val();
			if(adviceType != null && adviceType != ''){
				var order= new Object();
				 order.type =adviceType;
				 adviceList.push(order);
			 }
		}
		return adviceList;
	}
	
	
	//专家
	function expertObject(){
		 var pkId =$("#expertId").val();
		 var company =$("#expertCompany").val();
		 var job =$("#expertJob").val();
		 var special =$("#expertSpecial").val();
		 var qualification =$("#expertQualification").val();
		 var category =$("#expertCategory").val();
		 var level =$("#expertLevel").val();
		 var introduction =$("#expertIntroduction").val();
		 
		 
		var order= new Object();
		if(pkId != null && pkId !=''){
			order.pkId= pkId;
		 }
		order.company = company;
		order.job= job;
		order.special= special;
		order.qualification= qualification;
		order.category= category;
		order.level= level;
		order.introduction= introduction;
		order.status= status;
		return order;
	}
	function expertcheck(){
		 var company =$("#expertCompany").val();
		 var job =$("#expertJob").val();
		 var special =$("#expertSpecial").val();expertCategory
		 var qualification =$("#expertQualification").val();
		 var category =$("#expertCategory").val();
		 var level =$("#expertLevel").val();
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
		 if(category == null || category == ''){
			 layer.alert("请选择专家分类",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(level == null || level == ''){
			 layer.alert("请选择专家级别",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		/* if(qualification == null || qualification == ''){
			 layer.alert("请输入资质",{'icon': 3, title:'提示' });
			 tag = false;
		 }*/
		 return tag;
	}
	
	
	
	//投资者
	function inivestorListt(){
		var intentionList = new Array();  
		  $('input[name="intentionType"]:checked').each(function(){    
			  var order= new Object();
			  order.Category = $(this).val();   
			  order.status= 0;
			  intentionList.push(order);
		  });    
		return intentionList;
	}
	function inivestorObject(){
		 var pkId =$("#inivestorId").val();
		 var company =$("#inivestorCompany").val();
		 var job =$("#inivestorJob").val();
		 var special =$("#inivestorSpecial").val();
		 var qualification =$("#inivestorQualification").val();
		 var permission =$("#inivestorPermission").val();

		 
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
	function inivestorcheck(){
		 var company =$("#inivestorCompany").val();
		 var job =$("#inivestorJob").val();
		 var special =$("#inivestorSpecial").val();
		 var qualification =$("#inivestorQualification").val();
		 var permission =$("#inivestorPermission").val();
		 
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