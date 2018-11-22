<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en" style="height: 100%">
<head>
<%@ include file="/WEB-INF/includepc/header.jsp"%>
<link href="${ctxThird}/ueditor/third-party/video-js/video-js.css" type="text/css" rel="stylesheet" />
<script src="${ctxThird}/ueditor/third-party/video-js/video.min.js" type="text/javascript"></script>
</head>
<body style="overflow: hidden; background-color: #fff;height: 100%">
	<!--  页面 footer  的信息   -->
		<div class="row" style="height: 100%">
		<div class="form-group  col-md-12" style="height: 100%">	
		<video id="videoo" class="edui-upload-video  vjs-default-skin  video-js" controls="" preload="none" style="width: 100%;height: 99%" src="/ueditor/jsp/upload/video/1503569249855045903.mp4" data-setup="{}">
		<source id="videov" src="/ueditor/jsp/upload/video/1503569249855045903.mp4" type="video/mp4"/>
		</video>
		</div>
		</div>
	<!--  本页面专用 -->
		<%@ include file="/WEB-INF/includepc/footer.jsp"%>
	<script type="text/javascript">
	//注意：parent 是 JS 自带的全局对象，可用于操作父页面
	var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
	var parentId=parent.$("#videourl").val();
	
	$(document).ready(function (){
		$("#videoo").attr("src",parentId);
		$("#videov").attr("src",parentId);
		var myPlayer = videojs('videoo');
	    videojs("videoo").ready(function(){
	        var myPlayer = this;
	        myPlayer.play();
		$("#videoo_html5_api").attr("src",parentId);
	    });
	});
	videojs.options.flash.swf = ctxThird+"/ueditor/third-party/video-js/video-js.swf";
	
	</script>

</body>
</html>