jQuery(function($){

	var tempGridOptions = {
		url:  'getXsxxList.zf',
		uniqueId: "xh",
		columns: [
            {checkbox: true }, 
            {field: 'xh', title: '学号',sortable:true,width:"100px"}, 
            {field: 'xm', title: '姓名',sortable:true,width:"150px"}, 
    	],
	 	toolbar:'#but_ancd',
	 	sortName: 'xh',
		sortOrder: "desc",
	 	searchParams:function(){
	 		var map = $.search.getSearchMap();
			return map;
	 	}
	};
	
	$("#tabGrid").loadGrid(tempGridOptions);
	
	
	$(":button[name=search_button]").bind("click",searchResult);
});


//查询
function searchResult(){
	$("#tabGrid").refreshGrid();
}
