var expertId = $("#expert_id").val();
 $(function(){
	var  gridUrl =ctx+'/scheduling/list.json?scheduling.expertId='+expertId ;
	  $("#dataTables").jqGrid({
          url: gridUrl,
          mtype: "GET",
          page:pagess,
          datatype: "json",
          colModel: [
              { label: '咨询日期', name: 'adviceDate', width: 90,formatter:"date",formatoptions: {srcformat: 'Y-m-d',newformat:'Y-m-d'}},
              { label: '开始时间', name: 'startTime', width: 90},
              { label: '结束时间', name: 'endTime', width: 100},
              {label: '操作',name: 'operation',fixed:true, sortable:false, resize:false, width: 120,formatter: operation}
	  		  ] 
      });
  });
function currencyFmatter (cellvalue, options, rowObject){
   return options.rowId;
}
function operation (cellvalue, options, rowObject){
   var id = rowObject.pkId;
   var page = $('#dataTables').getGridParam('page'); // current page
	  return   "<a href="+"/scheduling/find/"+id+"/"+page+"?expert.name="+name+"&page="+pages+"&expert.id="+expertId+">查看咨询信息</a>&nbsp;&nbsp;";
}
function del(id){
	$.confirm({success:function(index){
		$.ajax({
			type : "POST",
			url : "/scheduling/del/"+id,
			dataType : "json",
			success :  function (data){
				if(data){
					 layer.close(index);
					 location.href = "/scheduling/list/"+expertId;
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
