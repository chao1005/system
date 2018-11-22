
$(document).ready(function (){
		//附件上传
		var $list=$("#thelist");   //这几个初始化全局的百度文档上没说明，好蛋疼。  
		   var $btn =$("#ctlBtn");   //开始上传  
		   var uploader = WebUploader.create({  
		       // 选完文件后，是否自动上传。  
		       auto: true,  
		  
		       swf: ctxThird+'/webupload/Uploader.swf',

			    // 文件接收服务端。
			    server: ctx+'/user/Upload', 
		  
		       // 选择文件的按钮。可选。  
		       // 内部根据当前运行是创建，可能是input元素，也可能是flash.  
		       pick: '#picker',  
		   });  
		   // 当有文件添加进来的时候  
		   uploader.on( 'fileQueued', function( file ) {  // webuploader事件.当选择文件后，文件被加载到文件队列中，触发该事件。等效于 uploader.onFileueued = function(file){...} ，类似js的事件定义。  
		   });  
		   // 文件上传过程中创建进度条实时显示。  
		   uploader.on( 'uploadProgress', function( file, percentage ) {  
		       var $li = $( '#'+file.id ),  
		           $percent = $li.find('.progress span');  
		  
		       // 避免重复创建  
		       if ( !$percent.length ) {  
		           $percent = $('<p class="progress"><span></span></p>')  
		                   .appendTo( $li )  
		                   .find('span');  
		       }  
		       $percent.css( 'width', percentage * 100 + '%' );  
		   });  
		  
		   // 文件上传成功，给item添加成功class, 用样式标记上传成功。  
		   uploader.on( 'uploadSuccess', function( file,res ) {  
			   console.log(res);
			   console.log(file);
			   var $li = $(  
		               '<div name="upfile"><a  href="javascript:void(0);" onclick="downloadFile(this)" id="'+res.filepath+'">'+file.name+'</a><a  href="javascript:void(0);"  id="'+res.filepath+'" onclick="del(this)">删除</a>'+
		               '<input id="type" hidden="" value="'+file.ext+'"></div>'  
		               )
		       // $list为容器jQuery实例  
		       $list.append( $li );  
		   });  
		  
		   // 文件上传失败，显示上传出错。  
		   uploader.on( 'uploadError', function( file ) {  
		       var $li = $( '#'+file.id ),  
		           $error = $li.find('div.error');  
		  
		       // 避免重复创建  
		       if ( !$error.length ) {  
		           $error = $('<div class="error"></div>').appendTo( $li );  
		       }  
		  
		       $error.text('上传失败');  
		   });  
		  
		   // 完成上传完了，成功或者失败，先删除进度条。  
		   uploader.on( 'uploadComplete', function( file ) {  
		   });  
		   upfile();
	});
	function upfile(){
		 var $list1=$("#thelist1");   //这几个初始化全局的百度文档上没说明，好蛋疼。  
		   var uploader1 = WebUploader.create({
				auto:true,
			    // swf文件路径
			    swf: ctxThird+'/webupload/Uploader.swf',

			    // 文件接收服务端。
			    server: ctx+'/user/Upload',

			    // 选择文件的按钮。可选。
			    // 内部根据当前运行是创建，可能是input元素，也可能是flash.
			    pick : {
			    	id : "#picker1",
			    	multiple: false
			    },
				
			    // 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
			    resize: false,
			    accept: {
		            title: 'mp4',
		            extensions: 'mp4',
		            mimeTypes: 'mp4'
		        }
			});
			uploader1.on( 'fileQueued', function( file ) {
			  /*   $list.append( '<div id="' + file.id + '" class="item">' +
			        '<h4 class="info">' + file.name + '</h4>' +
			        '<p class="state">等待上传...</p>' +
			        '<p class="urls">文件路径</p>' +
			    '</div>' ); */
			});
			uploader1.on("error",function (type){
		        if (type=="Q_TYPE_DENIED"){
		        	layer.alert("请上传视频，类型为mp4");
		        }else if(type=="F_EXCEED_SIZE"){
		        	layer.alert("文件大小不超过2M");
		        }else if(type == "F_DUPLICATE"){
		        	layer.alert("不要选择重复文件");
		        }
		    });
			uploader1.on( 'uploadProgress', function( file, percentage ) {
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
			
			uploader1.on( 'uploadSuccess', function( file,res ) {
				var  $li = $(  
			               '<div name="videoFile"><a href="javascript:void(0);" onclick="openVideo()" id="'+res.filepath+'">'+file.name+'</a>'+
			               '<a  href="javascript:void(0);"  id="'+res.filepath+'" onclick="del(this)">删除</a>'+
			               '<input id="type" hidden="" value="'+file.ext+'"></div>'
			               )
			       // $list为容器jQuery实例  
			       $list1.html( $li );  
				if(videoSrc != ""){
					delvideo(videoSrc);
				}
				$("#videourl").val(res.filepath);
				$("#videoName").val(file.name);
				//$("#imgType").val(file.ext);
				videoSrc = res.filepath;
			});

			uploader1.on( 'uploadError', function( file ) {
			 //   $( '#'+file.id ).find('p.state').text('上传出错');
			});

			uploader1.on( 'uploadComplete', function( file ) {
			    $( '#'+file.id ).find('.progress').fadeOut();
			});
	}
	function choose(){
	    //iframe层-父子操作
	    layer.open({
	      type: 2,
	      area: ['400px', '450px'],
	      fixed: false, //不固定
	      maxmin: true,
	      content: ctx+'/enterprise/selectAll'
	    });
	}
	function open(){
		alert("11")
		//iframe层-父子操作
	    layer.open({
	      type: 2,
	      area: ['500px', '450px'],
	      fixed: false, //不固定
	      maxmin: true,
	      content: ctx+'/roadshow/open'
	    });
	}
	function fileListAll(){
		var fileList = new Array();  
		 $('div [name="upfile"]').each(function(){    
			  var order= new Object();
			  order.name= $(this).children(":first").text();
			  order.url= $(this).children(":first").attr("id");
			  fileList.push(order);
		  });    
		 return fileList;
	}
	function videoFile(){
	  	var order= new Object();
	  	var pkId = $("#video").val();
		 if(pkId != null || pkId != ''){
			 order.pkId = pkId;
		 }
		  order.name= $("#videoName").val();
		  order.url= $("#videourl").val();
		  return order;
	}
	function del(obj){
		var src = $(obj).attr("id");
		$.confirm({success:function(index){
			$.ajax({
 				type : "POST",
 				url : ctx+'/roadshow/delFile.json',
 				data:{"src":src},
 				dataType : "json",
 				async:true,
 				success :  function (data){
 					if(data){
 						layer.close(index);
 						$(obj).parent().remove(); 
					}else{
						layer.close(index);
					}
 				}
 			});
		}}); 
	}
	function delvideo(src){
		$.ajax({
				type : "POST",
				url : ctx+'/roadshow/delFile.json',
				data:{"src":src},
				dataType : "json",
				async:true,
				success :  function (data){
				}
			});
	}
	function downloadFile(obj) {
		var img_src = $(obj).attr('id');
		var name =$(obj).text();
		if(browserIsIe()){//假如是ie浏览器  
            DownLoadReportIMG(img_src);  
        }else{  
        	var name =$(obj).text();
    	    var $a = $("<a></a>").attr("href", img_src).attr("download", name);
    	    $a[0].click();
        }  
	}
	function DownLoadReportIMG(imgPathURL) {  
	    //如果隐藏IFRAME不存在，则添加  
	    if (!document.getElementById("IframeReportImg"))  
	        $('<iframe style="display:none;" id="IframeReportImg" name="IframeReportImg" onload="DoSaveAsIMG();" width="0" height="0" src="about:blank"></iframe>').appendTo("body");  
	    if (document.all.IframeReportImg.src != imgPathURL) {  
	        //加载图片  
	        document.all.IframeReportImg.src = imgPathURL;  
	    }  
	    else {  
	        //图片直接另存为  
	        DoSaveAsIMG();  
	    }  
	}  
	function DoSaveAsIMG() {  
	    if (document.all.IframeReportImg.src != "about:blank")  
	        window.frames["IframeReportImg"].document.execCommand("SaveAs");  
	}  
	//判断是否为ie浏览器  
	function browserIsIe() {  
	    if (!!window.ActiveXObject || "ActiveXObject" in window)  
	        return true;  
	    else  
	        return false;  
	}  
	function isEmptyObject(e) {  
	    var name;  
	    for (name in e)  
	        return !1;  
	    return !0  
	} 
function save(){
		 var pkId =$("#pkId").val();
		 var tag = check();
		 var obj1 = fileListAll();
		 var obj2 = videoFile();
		 if(obj1.length == 0){
			 layer.alert("请上传路演资料",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 /*if(obj2.length == 0){
			 layer.alert("请上传路演视频",{'icon': 3, title:'提示' });
			 tag = false;
		 }*/
		 if(tag){
			 var url ="";
			 if(pkId != null && pkId !=''){
				url = ctx+"/roadshow/toEdit.json"
			 }else{
				 url = ctx+"/roadshow/toAdd.json" 
			 }
				var obj = roadshowObject();
				var roadshow = JSON.stringify(obj);
				var video = JSON.stringify(obj2);
				var fileList = JSON.stringify(obj1);
				$.ajax({
					 type:"POST",
				     	url:url,
				     	data:{"roadshow":roadshow,"video":video,"fileList":fileList},
				     	dataType:"json",
				        success: function(data){
				        	if(data == true){
								layer.alert("保存成功!",{icon:1});
								window.location.href =ctx+"/roadshow/list?roadshow.name="+sname+"&page="+page;
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
	function roadshowObject(){
		 var pkId =$("#pkId").val();
		 var name =$("#name").val();
		 var brief =$("#brief").val();
		 var content =$("#content").val();
		 var body =$("#body").val();
		 var video =$("#video").val();
		 var validateCode =$("#validateCode").val();
		 var aduitorStatus =$("#aduitorStatus").val();
		 var startTime =$("#startTime").val();
		 var endTime =$("#endTime").val();
		 
		 
		var order= new Object();
 		if(pkId != null && pkId !=''){
			order.pkId= pkId;
		 }
		order.name = name;
		order.brief= brief;
		order.content= content;
		order.body= body;
		order.validateCode= validateCode;
		order.video= video;
		order.aduitorStatus= aduitorStatus;
		order.startTime= startTime;
		order.endTime= endTime;
		return order;
	}
	function check(){
		 var pkId =$("#pkId").val();
		 if(pkId == null || pkId == ''){
			 pkId ='-1';
		 }
		 var name =$("#name").val();
		 var brief =$("#brief").val();
		 var content =$("#content").val();
		 var body =$("#body").val();
		 var validateCode =$("#validateCode").val();
		 var video =$("#video").val();
		 var aduitorStatus =$("#aduitorStatus").val();
		 var startTime =$("#startTime").val();
		 var tag = true;
		 if(name == null || name == ''){
			 layer.alert("请输入项目名称",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(brief == null || brief == ''){
			 layer.alert("请输入简介",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(content == null || content == ''){
			 layer.alert("请输入项目描述",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(body == null || body == ''){
			 layer.alert("请选择企业主体",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(validateCode == null || validateCode == ''){
			 layer.alert("请输入项目验证码",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(aduitorStatus == null || aduitorStatus == ''){
			 layer.alert("请选择审批状态",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(startTime == null || startTime == ''){
			 layer.alert("请输入开始时间",{'icon': 3, title:'提示' });
			 tag = false;
		 }
		 if(tag){
				$.ajax({
					 type:"POST",
					 async : false,
				     	url:ctx+"/roadshow/checkName.json",
				     	data:{"name":name,"id":pkId},
				     	dataType:"json",
				        success: function(data){
				        	if(data == 0){
								tag = true;
							}else{
								tag = false;
								 layer.alert("项目名称重复请重新输入...",{'icon': 3, title:'提示' });
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
		window.location.href =ctx+"/roadshow/list?roadshow.name="+sname+"&page="+page;
	}