[#assign q=JspTaglibs["/niutal-search-tags"] /]
<!DOCTYPE html>
<html>
	<head>
		<link href="${base}/css/doc.min.css" rel="stylesheet" type="text/css">
		
	</head>
	<body>
		<!--按钮 开始 -->
		[#include "/globalweb/comm/buttons.ftl" /]
		
		
		<div class="bs-example bs-example-bg-classes">
		
			<div class="bs-callout bs-callout-info">
		    	<h4><code class="js">jQuery("#dataTable").loadGrid(options);</code></h4>
		    	<p>
		    		初始化表格控件
		   	 	</p>
		 	</div>
		 	
		 	
		 	<div class="bs-callout bs-callout-info">
		    	<h4><code class="js">jQuery("#dataTable").reloadGrid(options);</code></h4>
		    	<p>
		    		刷新表格控件
		   	 	</p>
		 	</div>
		 	
		 	<div class="bs-callout bs-callout-info">
		    	<h4><code class="js">jQuery("#dataTable").removeRow(id);</code></h4>
		    	<p>
		    		根据id删除行数据
		   	 	</p>
		 	</div>
		 	
		 	<div class="bs-callout bs-callout-info">
		    	<h4><code class="js">jQuery("#dataTable").removeRows(field, values);</code></h4>
		    	<p>
		    		根据列id[field指定]删除多行数据[values参数执行field的值，数组类型]
		   	 	</p>
		   	 	<div class="zero-clipboard"><span class="btn-clipboard">代码</span></div>
        <div class="highlight">
                       <pre>
                       <code class="js">
jQuery("#dataTable").removeRows('id', ['1','2','3']);
                       </code></pre>
            </div>
		 	</div>
		 	
		 	<div class="bs-callout bs-callout-info">
		    	<h4><code class="js">jQuery("#dataTable").removeAll();</code></h4>
		    	<p>
		    		删除当前页所有行数据
		   	 	</p>
		 	</div>
		 	
		 	<div class="bs-callout bs-callout-info">
		    	<h4><code class="js">jQuery("#dataTable").insertRow(index,row);</code></h4>
		    	<p>
		    		在指定的下标位子插入一行数据
		   	 	</p>
		 	</div>
		 	
		 	<div class="bs-callout bs-callout-info">
		    	<h4><code class="js">jQuery("#dataTable").appendRow(row);</code></h4>
		    	<p>
		    		追加一行数据
		   	 	</p>
		 	</div>
		 	
		 	<div class="bs-callout bs-callout-info">
		    	<h4><code class="js">jQuery("#dataTable").prependRow(row);</code></h4>
		    	<p>
		    		在第一行追加一行数据
		   	 	</p>
		 	</div>
		 	
		 	<div class="bs-callout bs-callout-info">
		    	<h4><code class="js">jQuery("#dataTable").updateRow(index,row);</code></h4>
		    	<p>
		    		根据下标更新一行数据
		   	 	</p>
		 	</div>
		 	
		 	<div class="bs-callout bs-callout-info">
		    	<h4><code class="js">jQuery("#dataTable").getRowCount();</code></h4>
		    	<p>
		    		获取当前数据总数
		   	 	</p>
		 	</div>
		 	
		 	<div class="bs-callout bs-callout-info">
		    	<h4><code class="js">jQuery("#dataTable").getKeys();</code></h4>
		    	<p>
		    		获取选中行数据的id数据，注意：需要指定uniqueId属性，否则返回选中行数据
		   	 	</p>
		 	</div>
		 	
		 	<div class="bs-callout bs-callout-info">
		    	<h4><code class="js">jQuery("#dataTable").getRow(id);</code></h4>
		    	<p>
		    		根据id获取行数据
		   	 	</p>
		 	</div>
		 	
		 	<div class="bs-callout bs-callout-info">
		    	<h4><code class="js">jQuery("#dataTable").getRows();</code></h4>
		    	<p>
		    		获取选中行数据
		   	 	</p>
		 	</div>
		 	
		 	<div class="bs-callout bs-callout-info">
		    	<h4><code class="js">jQuery("#dataTable").getAllRows();</code></h4>
		    	<p>
		    		获取当前页所有行数据
		   	 	</p>
		 	</div>
		 	
		 	<div class="bs-callout bs-callout-info">
		    	<h4><code class="js">jQuery("#dataTable").showColumn(fileld);</code></h4>
		    	<h4><code class="js">jQuery("#dataTable").hideColumn(fileld);</code></h4>
		    	<p>
		    		隐藏/显示列
		   	 	</p>
		 	</div>
		 	
		 	<div class="bs-callout bs-callout-info">
		    	<h4><code class="js">jQuery("#dataTable").toggleView(fileld);</code></h4>
		    	<p>
		    		切换表格显示模式：行模式/cardView模式
		   	 	</p>
		 	</div>
		 	
		 	<div class="bs-callout bs-callout-info">
		    	<h4><code class="js">jQuery("#dataTable").delGrid();</code></h4>
		    	<p>
		    		删除表格控件
		   	 	</p>
		 	</div>
		 </div>
		 
	</body>
</html>
