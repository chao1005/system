<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!-- We support more than 40 localizations -->     
<script type="text/ecmascript" src="${ctxThird}/jqGrid-5.0.2/js/i18n/grid.locale-cn.js"></script>
<!-- This is the Javascript file of jqGrid -->  
<script type="text/ecmascript" src="${ctxThird}/jqGrid-5.0.2/js/jquery.jqGrid${uap:getMin()}.js"></script>    
<!-- jqgrid 全局的数据 -->
<script type="text/javascript">
	//宽度自适应 获取表格包装的div的宽度
	var  jgridWidth  =	$("#dataTable_wrapper").width(); 
	
	 if(!jgridWidth){
		alert("请设置id为dataTable_wrapper的div，以达到表格自适应宽度 ");
	 }
	$.jgrid.defaults.width = jgridWidth;
	$.jgrid.defaults.responsive = true;
	$.jgrid.defaults.styleUI = 'Bootstrap';	
	$.jgrid.defaults.prmNames= {rows:"rowNum"};
	$.jgrid.defaults.rowList=[10,20,30];
	$.jgrid.defaults.height =  400;
	$.jgrid.defaults.rowNum = 10;
	//$.jgrid.defaults.sortname ='id';
	//$.jgrid.defaults.sortorder= "desc";
	$.jgrid.defaults.rownumbers= true;
	$.jgrid.defaults.rowList=[10,20,30];
	$.jgrid.defaults.viewrecords= true;// show the current page, data rang and total records on the toolbar
	$.jgrid.defaults.pager="#jqGridPager"// set table stripped class in table style in bootsrap
	
	
	
	/**
	 * 
	 * @param cellvalue
	 * @param options
	 * @param rowObject
	 * @returns
	 */
	function noFormatter (cellvalue, options, rowObject)
	{			 
	   return options.rowId;
	};
	/**
	 * 
	 * @param cellvalue
	 * @param options
	 * @param rowObject
	 * @returns {String}
	 */
	function  operationFormatter(cellvalue, options, rowObject){
	  
		 var $this = $(this);
 
		  var listUrl = $this.jqGrid("getGridParam", "url");
		  
		  var  editUrl = listUrl.replace("list.json","form");
		  var  deleteUrl = listUrl.replace("list","delete");
		  
		  if(listUrl){
			  var id =rowObject.id; 
			return "<a href ='#' onclick='$\.editRow(\""+editUrl+"\","+id+");' >编辑<a> <a href ='#' onclick='$\.deleteRow(\""+deleteUrl+"\","+id+");' >删除<a>  ";
			  
		  }else{
			  alert("请设置表格的url");
		  }
		  
		
	};
	
	

	
 
</script>