[#assign shiro=JspTaglibs["http://shiro.apache.org/tags"] /]
<!DOCTYPE html>
<html lang="zh_CN">

	<head>
		<meta content="webkit" name="renderer" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="Copyright" content="woshidaniu" />
		<link rel="icon" href="${base}/logo/favicon.ico" type="image/x-icon" />
		<link rel="shortcut icon" href="${base}/logo/favicon.ico" type="image/x-icon" />
		<title>${messageUtil("system.title")}</title>
		[#include "/globalweb/head/head_v5.ftl" /]

		<!--首页专用的额外引用-->
		[#include "/globalweb/head/head_index.ftl" /]
	</head>

	<body>
		<div id="container" class="effect aside-float aside-bright mainnav-lg mainnav-fixed navbar-fixed">

			<header id="navbar">
				<div id="navbar-container" class="boxed">
					<!--LOGO位置-->
					<div class="navbar-header">
						<a href="javascript:void(0)" class="navbar-brand">
							<img src="http://10.71.19.230/niutal-ui-css/assets/images/logo.png" alt="ZF Logo" class="brand-icon">
							<div class="brand-title">
								<span class="brand-text">niutal-UI-CSS</span>
							</div>
						</a>
					</div>
					<!--顶部导航-->
					<div class="navbar-content clearfix">
						<ul class="nav navbar-top-links pull-left">

							<li class="tgl-menu-btn">
								<a class="mainnav-toggle" href="#">
									<i class="demo-pli-view-list"></i>
								</a>
							</li>

							<li class="dropdown">
								<a href="#" data-toggle="dropdown" class="dropdown-toggle">
									<i class="demo-pli-bell"></i>
									<span class="badge badge-header badge-danger"></span>
								</a>

								<!--Notification dropdown menu-->
								<div class="dropdown-menu dropdown-menu-md">
									<div class="pad-all bord-btm">
										<p class="text-semibold text-main mar-no">你有9条提醒</p>
									</div>
									<div class="nano scrollable">
										<div class="nano-content">
											<ul class="head-list">

												<!-- Dropdown list-->
												<li>
													<a href="#">
														<div class="clearfix">
															<p class="pull-left">总工作进度</p>
															<p class="pull-right">70%</p>
														</div>
														<div class="progress progress-sm">
															<div style="width: 70%;" class="progress-bar">
																<span class="sr-only">70% Complete</span>
															</div>
														</div>
													</a>
												</li>

												<!-- Dropdown list-->
												<li>
													<a href="#">
														<div class="clearfix">
															<p class="pull-left">完成任务量</p>
															<p class="pull-right">10%</p>
														</div>
														<div class="progress progress-sm">
															<div style="width: 10%;" class="progress-bar progress-bar-warning">
																<span class="sr-only">10% Complete</span>
															</div>
														</div>
													</a>
												</li>

												<!-- Dropdown list-->
												<li>
													<a class="media" href="#">
														<span class="badge badge-success pull-right">90%</span>
														<div class="media-left">
															<i class="demo-pli-data-settings icon-2x"></i>
														</div>
														<div class="media-body">
															<div class="text-nowrap">本人磁盘量</div>
															<small class="text-muted">50 分钟前</small>
														</div>
													</a>
												</li>

												<!-- Dropdown list-->
												<li>
													<a class="media" href="#">
														<div class="media-left">
															<i class="demo-pli-file-edit icon-2x"></i>
														</div>
														<div class="media-body">
															<div class="text-nowrap">请假申请</div>
															<small class="text-muted">8 小时前</small>
														</div>
													</a>
												</li>

												<!-- Dropdown list-->
												<li>
													<a class="media" href="#">
														<span class="label label-danger pull-right">New</span>
														<div class="media-left">
															<i class="demo-pli-speech-bubble-7 icon-2x"></i>
														</div>
														<div class="media-body">
															<div class="text-nowrap">会议</div>
															<small class="text-muted">9 小时前</small>
														</div>
													</a>
												</li>

												<!-- Dropdown list-->
												<li>
													<a class="media" href="#">
														<div class="media-left">
															<i class="demo-pli-add-user-plus-star icon-2x"></i>
														</div>
														<div class="media-body">
															<div class="text-nowrap">新增任务</div>
															<small class="text-muted">1 天前</small>
														</div>
													</a>
												</li>

												<!-- Dropdown list-->
												<li class="bg-gray">
													<a class="media" href="#">
														<div class="media-left">
															<img class="img-circle img-sm" alt="Profile Picture" src="http://10.71.19.230/niutal-ui-css/assets/images/profile-photos/9.png">
														</div>
														<div class="media-body">
															<div class="text-nowrap">收到部门领导信息</div>
															<small class="text-muted">30 分钟前</small>
														</div>
													</a>
												</li>

												<!-- Dropdown list-->
												<li class="bg-gray">
													<a class="media" href="#">
														<div class="media-left">
															<img class="img-circle img-sm" alt="Profile Picture" src="http://10.71.19.230/niutal-ui-css/assets/images/profile-photos/3.png">
														</div>
														<div class="media-body">
															<div class="text-nowrap">张三抖了你一下</div>
															<small class="text-muted">40 分钟前</small>
														</div>
													</a>
												</li>
											</ul>
										</div>
									</div>

									<!--Dropdown footer-->
									<div class="pad-all bord-top">
										<a href="#" class="btn-link text-dark box-block">
											<i class="fa fa-angle-right fa-lg pull-right"></i>展开所有提醒
										</a>
									</div>
								</div>
							</li>

							<li class="mega-dropdown">
								<a href="#" class="mega-dropdown-toggle">
									<i class="demo-pli-layout-grid"></i>
								</a>
								<div class="dropdown-menu mega-dropdown-menu">
									<div class="row">
										<ul class="list-unstyled">
											<li class="col-md-3">
												<a href="http://122.224.218.35:8025/zfca?yhlx=teacher&amp;login=122579031373493682&amp;url=main.action" target="_blank" class="media mar-btm">
													<div class="media-left">
														<i class="demo-pli-data-settings icon-2x"></i>
													</div>
													<div class="media-body">
														<p class="text-semibold text-dark mar-no">智慧办公平台</p>
														<small class="text-muted"></small>
													</div>
												</a>
											</li>
											<li class="col-md-3">
												<a href="http://122.224.218.35:8025/zfca?yhlx=department&amp;login=122579031373493679&amp;url=teaPage.jsp" target="_blank" class="media mar-btm">
													<div class="media-left">
														<i class="demo-pli-support icon-2x"></i>
													</div>
													<div class="media-body">
														<p class="text-semibold text-dark mar-no">学生工作管理服务平台</p>
														<small class="text-muted"></small>
													</div>
												</a>
											</li>
											<li class="col-md-3">
												<a href="http://122.224.218.35:8025/zfca?yhlx=teacher&amp;login=0122579031373493691&amp;url=systemrole%252findex_initMenu.html" target="_blank" class="media mar-btm">
													<div class="media-left">
														<i class="demo-pli-computer-secure icon-2x"></i>
													</div>
													<div class="media-body">
														<p class="text-semibold text-dark mar-no">教师科研管理服务平台</p>
														<small class="text-muted"></small>
													</div>
												</a>
											</li>
											<li class="col-md-3">
												<a href="http://122.224.218.35:8025/zfca?yhlx=teacher&amp;login=0122579031373493708&amp;url=xtgl%252findex_initMenu.html" target="_blank" class="media mar-btm">
													<div class="media-left">
														<i class="demo-pli-map-2 icon-2x"></i>
													</div>
													<div class="media-body">
														<p class="text-semibold text-dark mar-no">教学管理服务平台</p>
														<small class="text-muted"></small>
													</div>
												</a>
											</li>
											<li class="col-md-3">
												<a href="http://122.224.218.35:8025/zfca/login?yhlx=department&amp;login=0122579031373493687&amp;url=desktop%2fdesktop_initDesktop.html" target="_blank" class="media mar-btm">
													<div class="media-left">
														<i class="demo-pli-data-settings icon-2x"></i>
													</div>
													<div class="media-body">
														<p class="text-semibold text-dark mar-no">人力资源管理服务平台</p>
														<small class="text-muted"></small>
													</div>
												</a>
											</li>
											<li class="col-md-3">
												<a href="http://122.224.218.35:8025/zfca?yhlx=teacher&amp;login=0122579031373493684&amp;url=mainJs.do" target="_blank" class="media mar-btm">
													<div class="media-left">
														<i class="demo-pli-data-settings icon-2x"></i>
													</div>
													<div class="media-body">
														<p class="text-semibold text-dark mar-no">招生管理服务平台</p>
														<small class="text-muted"></small>
													</div>
												</a>
											</li>
											<li class="col-md-3">
												<a href="http://122.224.218.35:8025/zfca?yhlx=teacher&amp;login=0122579031373493689&amp;url=xtwh%2Flogin_index.do" target="_blank" class="media mar-btm">
													<div class="media-left">
														<i class="demo-pli-support icon-2x"></i>
													</div>
													<div class="media-body">
														<p class="text-semibold text-dark mar-no">迎新管理服务平台</p>
														<small class="text-muted"></small>
													</div>
												</a>
											</li>
											<li class="col-md-3">
												<a href="http://122.224.218.35:8025/zfca?yhlx=department&amp;login=0122579031373493728&amp;url=xtgl%2Findex_initMenu.html" target="_blank" class="media mar-btm">
													<div class="media-left">
														<i class="demo-pli-computer-secure icon-2x"></i>
													</div>
													<div class="media-body">
														<p class="text-semibold text-dark mar-no">离校管理服务平台</p>
														<small class="text-muted"></small>
													</div>
												</a>
											</li>
											<li class="col-md-3">
												<a href="http://122.224.218.35:8025/zfca?yhlx=department&amp;login=0122579031373493729&amp;url=xtgl%2Findex_initMenu.html" target="_blank" class="media mar-btm">
													<div class="media-left">
														<i class="demo-pli-map-2 icon-2x"></i>
													</div>
													<div class="media-body">
														<p class="text-semibold text-dark mar-no">就业管理服务平台</p>
														<small class="text-muted"></small>
													</div>
												</a>
											</li>
											<li class="col-md-3">
												<a href="http://122.224.218.35:8025/zfca?yhlx=department&amp;login=0122579031373493707&amp;url=xtgl%2Findex_initMenu.html" target="_blank" class="media mar-btm">
													<div class="media-left">
														<i class="demo-pli-data-settings icon-2x"></i>
													</div>
													<div class="media-body">
														<p class="text-semibold text-dark mar-no">事业发展服务平台</p>
														<small class="text-muted"></small>
													</div>
												</a>
											</li>
											<li class="col-md-3">
												<a href="http://122.224.218.35:8025/zfca?yhlx=department&amp;login=0122579031373493722&amp;url=xtgl%2Findex_initMenu.html%3Fgnmkdm%3DN02" target="_blank" class="media mar-btm">
													<div class="media-left">
														<i class="demo-pli-map-2 icon-2x"></i>
													</div>
													<div class="media-body">
														<p class="text-semibold text-dark mar-no">数字档案</p>
														<small class="text-muted"></small>
													</div>
												</a>
											</li>
											<li class="col-md-3">
												<a href="http://122.224.218.35:8025/zfca?yhlx=department&amp;login=0122579031373493723&amp;url=zhxqLogin.do" target="_blank" class="media mar-btm">
													<div class="media-left">
														<i class="demo-pli-support icon-2x"></i>
													</div>
													<div class="media-body">
														<p class="text-semibold text-dark mar-no">综合校情服务</p>
														<small class="text-muted"></small>
													</div>
												</a>
											</li>
											<li class="col-md-3">
												<a href="http://122.224.218.35:8025/zfca?yhlx=deparment&amp;login=0122579031373493726&amp;url=xtgl%2Findex_initMenu.html" target="_blank" class="media mar-btm">
													<div class="media-left">
														<i class="demo-pli-data-settings icon-2x"></i>
													</div>
													<div class="media-body">
														<p class="text-semibold text-dark mar-no">高基报表系统</p>
														<small class="text-muted"></small>
													</div>
												</a>
											</li>
											<li class="col-md-3">
												<a href="http://122.224.218.35:8025/zfca?yhlx=teacher&amp;login=0122579031373493727&amp;url=xtgl%2Findex_initMenu.html" target="_blank" class="media mar-btm">
													<div class="media-left">
														<i class="demo-pli-data-settings icon-2x"></i>
													</div>
													<div class="media-body">
														<p class="text-semibold text-dark mar-no">学生收费管理服务平台</p>
														<small class="text-muted"></small>
													</div>
												</a>
											</li>
											<li class="col-md-3">
												<a href="http://122.224.218.35:8025/zfca?yhlx=deparment&amp;login=0122579031373493713&amp;url=index.do" target="_blank" class="media mar-btm">
													<div class="media-left">
														<i class="demo-pli-data-settings icon-2x"></i>
													</div>
													<div class="media-body">
														<p class="text-semibold text-dark mar-no">网络教学平台</p>
														<small class="text-muted"></small>
													</div>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</li>

						</ul>
						<ul class="nav navbar-top-links pull-right">

							<!--User dropdown-->
							<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
							<li id="dropdown-user" class="dropdown">
								<a href="#" data-toggle="dropdown" class="dropdown-toggle text-right">
									<span class="pull-right">
                                    <!--<img class="img-circle img-user media-object" src="assets/images/profile-photos/1.png" alt="Profile Picture">-->
                                    <i class="demo-pli-male ic-user"></i>
                                </span>
									<div class="username hidden-xs">欢迎你，管理员</div>
								</a>

								<div class="dropdown-menu dropdown-menu-md dropdown-menu-right panel-default">

									<!-- Dropdown heading  -->
									<div class="pad-all bord-btm">
										<p class="text-main mar-btm"><span class="text-bold">750GB</span> of 1,000GB Used</p>
										<div class="progress progress-sm">
											<div class="progress-bar" style="width: 70%;">
												<span class="sr-only">70%</span>
											</div>
										</div>
									</div>

									<!-- User dropdown menu -->
									<ul class="head-list">
										<li>
											<a href="#">
												<i class="demo-pli-male icon-lg icon-fw"></i> Profile
											</a>
										</li>
										<li>
											<a href="#">
												<span class="badge badge-danger pull-right">9</span>
												<i class="demo-pli-mail icon-lg icon-fw"></i> Messages
											</a>
										</li>
										<li>
											<a href="#">
												<span class="label label-success pull-right">New</span>
												<i class="demo-pli-gear icon-lg icon-fw"></i> Settings
											</a>
										</li>
										<li>
											<a href="#">
												<i class="demo-pli-information icon-lg icon-fw"></i> Help
											</a>
										</li>
										<li>
											<a href="#">
												<i class="demo-pli-computer-secure icon-lg icon-fw"></i> Lock screen
											</a>
										</li>
									</ul>

									<!-- Dropdown footer -->
									<div class="pad-all text-right">
										<a href="pages-login.html" class="btn btn-primary">
											<i class="demo-pli-unlock"></i> Logout
										</a>
									</div>
								</div>
							</li>
							<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
							<!--End user dropdown-->

							<li>
								<a href="#" class="aside-toggle navbar-aside-icon">
									<i class="pci-ver-dots"></i>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</header>

			<div class="boxed">
				<!--中间内容-->

				<div id="content-container">

					<!--测试tabs-->

					<div id="tab-general">
						<div id="tabs">
							<div class="nav-container tabs-below">
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation" class="no-sort" id="tab_tab_home">
										<!--<a href="#home" aria-controls="home" role="tab" data-toggle="tab">
											<img src="assets/images/logo_2.png"/>
										</a>-->
									</li>
								</ul>
							</div>
						</div>
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active embed-responsive embed-responsive-16by9" id="tab_home">
								<!-- 主体 -->
								<div class="container-iframe padding-150">
									<div class="row">
										<div class="col-md-12">
											<!--页面总标题-->
											<div id="page-title">
												<h1 class="page-header text-overflow">首页<span class="text-danger">（外框架仅供demo使用，实际项目请使用基础框架）</span></h1>

												<div class="searchbox">
													<div class="input-group custom-search-form">
														<input type="text" class="form-control" placeholder="请输入搜索内容...">
														<span class="input-group-btn">
                                <button class="text-muted" type="button"><i class="demo-pli-magnifi-glass"></i></button>
                            </span>
													</div>
												</div>
											</div>

											<div id="page-content">

												<div class="row">
													<div class="col-lg-12">
														<div class="panel  text-center">
															<div class="panel-heading">
																<h3 class="panel-title">标题</h3>
															</div>
															<div class="panel-body">
																<p>请将组件内容填入这个div内...</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!--测试tabs-->

				</div>
				<!--右侧侧边栏-->
				<aside id="aside-container">
					<div id="aside">
						<div class="nano">
							<div class="nano-content">

								<!--Nav tabs-->
								<!--================================-->
								<ul class="nav nav-tabs nav-justified">
									<li class="active">
										<a href="#demo-asd-tab-1" data-toggle="tab">
											<i class="demo-pli-speech-bubble-7"></i>
										</a>
									</li>
									<li>
										<a href="#demo-asd-tab-2" data-toggle="tab">
											<i class="demo-pli-information icon-fw"></i> Report
										</a>
									</li>
									<li>
										<a href="#demo-asd-tab-3" data-toggle="tab">
											<i class="demo-pli-wrench icon-fw"></i> Settings
										</a>
									</li>
								</ul>
								<!--================================-->
								<!--End nav tabs-->

								<!-- Tabs Content -->
								<!--================================-->
								<div class="tab-content">

									<!--First tab (Contact list)-->
									<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
									<div class="tab-pane fade in active" id="demo-asd-tab-1">
										<p class="pad-hor mar-top text-semibold text-main">
											<span class="pull-right badge badge-warning">3</span> Family
										</p>

										<!--Family-->
										<div class="list-group bg-trans">
											<a href="#" class="list-group-item">
												<div class="media-left pos-rel">
													<img class="img-circle img-xs" src="http://10.71.19.230/niutal-ui-css/assets/images/profile-photos/2.png" alt="Profile Picture">
													<i class="badge badge-success badge-stat badge-icon pull-left"></i>
												</div>
												<div class="media-body">
													<p class="mar-no">Stephen Tran</p>
													<small class="text-muted">Availabe</small>
												</div>
											</a>
											<a href="#" class="list-group-item">
												<div class="media-left pos-rel">
													<img class="img-circle img-xs" src="http://10.71.19.230/niutal-ui-css/assets/images/profile-photos/7.png" alt="Profile Picture">
												</div>
												<div class="media-body">
													<p class="mar-no">Brittany Meyer</p>
													<small class="text-muted">I think so</small>
												</div>
											</a>
											<a href="#" class="list-group-item">
												<div class="media-left pos-rel">
													<img class="img-circle img-xs" src="http://10.71.19.230/niutal-ui-css/assets/images/profile-photos/1.png" alt="Profile Picture">
													<i class="badge badge-info badge-stat badge-icon pull-left"></i>
												</div>
												<div class="media-body">
													<p class="mar-no">Jack George</p>
													<small class="text-muted">Last Seen 2 hours ago</small>
												</div>
											</a>
											<a href="#" class="list-group-item">
												<div class="media-left pos-rel">
													<img class="img-circle img-xs" src="http://10.71.19.230/niutal-ui-css/assets/images/profile-photos/4.png" alt="Profile Picture">
												</div>
												<div class="media-body">
													<p class="mar-no">Donald Brown</p>
													<small class="text-muted">Lorem ipsum dolor sit amet.</small>
												</div>
											</a>
											<a href="#" class="list-group-item">
												<div class="media-left pos-rel">
													<img class="img-circle img-xs" src="http://10.71.19.230/niutal-ui-css/assets/images/profile-photos/8.png" alt="Profile Picture">
													<i class="badge badge-warning badge-stat badge-icon pull-left"></i>
												</div>
												<div class="media-body">
													<p class="mar-no">Betty Murphy</p>
													<small class="text-muted">Idle</small>
												</div>
											</a>
											<a href="#" class="list-group-item">
												<div class="media-left pos-rel">
													<img class="img-circle img-xs" src="http://10.71.19.230/niutal-ui-css/assets/images/profile-photos/9.png" alt="Profile Picture">
													<i class="badge badge-danger badge-stat badge-icon pull-left"></i>
												</div>
												<div class="media-body">
													<p class="mar-no">Samantha Reid</p>
													<small class="text-muted">Offline</small>
												</div>
											</a>
										</div>

										<hr>
										<p class="pad-hor text-semibold text-main">
											<span class="pull-right badge badge-success">Offline</span> Friends
										</p>

										<!--Works-->
										<div class="list-group bg-trans">
											<a href="#" class="list-group-item">
												<span class="badge badge-purple badge-icon badge-fw pull-left"></span> Joey K. Greyson
											</a>
											<a href="#" class="list-group-item">
												<span class="badge badge-info badge-icon badge-fw pull-left"></span> Andrea Branden
											</a>
											<a href="#" class="list-group-item">
												<span class="badge badge-success badge-icon badge-fw pull-left"></span> Johny Juan
											</a>
											<a href="#" class="list-group-item">
												<span class="badge badge-danger badge-icon badge-fw pull-left"></span> Susan Sun
											</a>
										</div>

										<hr>
										<p class="pad-hor mar-top text-semibold text-main">News</p>

										<div class="pad-hor">
											<p class="text-muted">Lorem ipsum dolor sit amet, consectetuer
												<a data-title="45%" class="add-tooltip text-semibold" href="#">adipiscing elit</a>, sed diam nonummy nibh. Lorem ipsum dolor sit amet.
											</p>
											<small class="text-muted"><em>Last Update : Des 12, 2014</em></small>
										</div>

									</div>
									<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
									<!--End first tab (Contact list)-->

									<!--Second tab (Custom layout)-->
									<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
									<div class="tab-pane fade" id="demo-asd-tab-2">

										<!--Monthly billing-->
										<div class="pad-all">
											<p class="text-semibold text-main">Billing &amp; reports</p>
											<p class="text-muted">Get <strong>$5.00</strong> off your next bill by making sure your full payment reaches us before August 5, 2016.</p>
										</div>
										<hr class="new-section-xs">
										<div class="pad-all">
											<span class="text-semibold text-main">Amount Due On</span>
											<p class="text-muted text-sm">August 17, 2016</p>
											<p class="text-2x text-thin text-main">$83.09</p>
											<button class="btn btn-block btn-success mar-top">Pay Now</button>
										</div>

										<hr>

										<p class="pad-hor text-semibold text-main">Additional Actions</p>

										<!--Simple Menu-->
										<div class="list-group bg-trans">
											<a href="#" class="list-group-item"><i class="demo-pli-information icon-lg icon-fw"></i> Service Information</a>
											<a href="#" class="list-group-item"><i class="demo-pli-mine icon-lg icon-fw"></i> Usage Profile</a>
											<a href="#" class="list-group-item"><span class="label label-info pull-right">New</span><i class="demo-pli-credit-card-2 icon-lg icon-fw"></i> Payment Options</a>
											<a href="#" class="list-group-item"><i class="demo-pli-support icon-lg icon-fw"></i> Message Center</a>
										</div>

										<hr>

										<div class="text-center">
											<div><i class="demo-pli-old-telephone icon-3x"></i></div>
											Questions?
											<p class="text-lg text-semibold text-main"> (415) 234-53454 </p>
											<small><em>We are here 24/7</em></small>
										</div>
									</div>
									<!--End second tab (Custom layout)-->
									<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->

									<!--Third tab (Settings)-->
									<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
									<div class="tab-pane fade" id="demo-asd-tab-3">
										<ul class="list-group bg-trans">
											<li class="pad-top list-header">
												<p class="text-semibold text-main mar-no">Account Settings</p>
											</li>
											<li class="list-group-item">
												<div class="pull-right">
													<input class="toggle-switch" id="demo-switch-1" type="checkbox" checked>
													<label for="demo-switch-1"></label>
												</div>
												<p class="mar-no">Show my personal status</p>
												<small class="text-muted">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</small>
											</li>
											<li class="list-group-item">
												<div class="pull-right">
													<input class="toggle-switch" id="demo-switch-2" type="checkbox" checked>
													<label for="demo-switch-2"></label>
												</div>
												<p class="mar-no">Show offline contact</p>
												<small class="text-muted">Aenean commodo ligula eget dolor. Aenean massa.</small>
											</li>
											<li class="list-group-item">
												<div class="pull-right">
													<input class="toggle-switch" id="demo-switch-3" type="checkbox">
													<label for="demo-switch-3"></label>
												</div>
												<p class="mar-no">Invisible mode </p>
												<small class="text-muted">Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. </small>
											</li>
										</ul>

										<hr>

										<ul class="list-group pad-btm bg-trans">
											<li class="list-header">
												<p class="text-semibold text-main mar-no">Public Settings</p>
											</li>
											<li class="list-group-item">
												<div class="pull-right">
													<input class="toggle-switch" id="demo-switch-4" type="checkbox" checked>
													<label for="demo-switch-4"></label>
												</div>
												Online status
											</li>
											<li class="list-group-item">
												<div class="pull-right">
													<input class="toggle-switch" id="demo-switch-5" type="checkbox" checked>
													<label for="demo-switch-5"></label>
												</div>
												Show offline contact
											</li>
											<li class="list-group-item">
												<div class="pull-right">
													<input class="toggle-switch" id="demo-switch-6" type="checkbox" checked>
													<label for="demo-switch-6"></label>
												</div>
												Show my device icon
											</li>
										</ul>

										<hr>

										<p class="pad-hor text-semibold text-main mar-no">Task Progress</p>
										<div class="pad-all">
											<p>Upgrade Progress</p>
											<div class="progress progress-sm">
												<div class="progress-bar progress-bar-success" style="width: 15%;"><span class="sr-only">15%</span></div>
											</div>
											<small class="text-muted">15% Completed</small>
										</div>
										<div class="pad-hor">
											<p>Database</p>
											<div class="progress progress-sm">
												<div class="progress-bar progress-bar-danger" style="width: 75%;"><span class="sr-only">75%</span></div>
											</div>
											<small class="text-muted">17/23 Database</small>
										</div>

									</div>
									<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
									<!--Third tab (Settings)-->

								</div>
							</div>
						</div>
					</div>
				</aside>
				<!--左侧侧边栏-->
				<nav id="mainnav-container">
					<div id="mainnav">

						<div id="mainnav-menu-wrap">
							<div class="nano">
								<div class="nano-content">
									<!--个人信息组件，默认隐藏-->
									<div id="mainnav-profile" class="mainnav-profile hidden">
										<div class="profile-wrap">
											<div class="pad-btm">
												<span class="label label-success pull-right">New</span>
												<img class="img-circle img-sm img-border" src="http://10.71.19.230/niutal-ui-css/assets/images/profile-photos/1.png" alt="Profile Picture">
											</div>
											<a href="#profile-nav" class="box-block" data-toggle="collapse" aria-expanded="false">
												<span class="pull-right dropdown-toggle">
                                                <i class="dropdown-caret"></i>
                                            </span>
												<p class="mnp-name">Aaron Chavez</p>
												<span class="mnp-desc">aaron.cha@themeon.net</span>
											</a>
										</div>
										<div id="profile-nav" class="collapse list-group bg-trans">
											<a href="#" class="list-group-item">
												<i class="demo-pli-male icon-lg icon-fw"></i> View Profile
											</a>
											<a href="#" class="list-group-item">
												<i class="demo-pli-gear icon-lg icon-fw"></i> Settings
											</a>
											<a href="#" class="list-group-item">
												<i class="demo-pli-information icon-lg icon-fw"></i> Help
											</a>
											<a href="#" class="list-group-item">
												<i class="demo-pli-unlock icon-lg icon-fw"></i> Logout
											</a>
										</div>
									</div>
									<!--个人快速链接，默认隐藏-->
									<div id="mainnav-shortcut" class="hidden">
										<ul class="list-unstyled">
											<li class="col-xs-3" data-content="My Profile">
												<a class="shortcut-grid" href="#">
													<i class="demo-psi-male"></i>
												</a>
											</li>
											<li class="col-xs-3" data-content="Messages">
												<a class="shortcut-grid" href="#">
													<i class="demo-psi-speech-bubble-3"></i>
												</a>
											</li>
											<li class="col-xs-3" data-content="Activity">
												<a class="shortcut-grid" href="#">
													<i class="demo-psi-thunder"></i>
												</a>
											</li>
											<li class="col-xs-3" data-content="Lock Screen">
												<a class="shortcut-grid" href="#">
													<i class="demo-psi-lock-2"></i>
												</a>
											</li>
										</ul>
									</div>
									<!--导航正式内容-->
									<ul id="mainnav-menu" class="list-group">
									</ul>
								</div>
							</div>
						</div>

					</div>
				</nav>

			</div>
			<!--底部版权-->
			<footer id="footer">

				<div class="hide-fixed pull-right pad-rgt">UI设计部版权所有</div>

				<p class="pad-lft">&#0169; 2017 我是大牛</p>

			</footer>
			<!--置顶icon-->
			<button class="scroll-top btn"><i class="pci-chevron chevron-up"></i></button>

		</div>
		<!--换肤功能，暂不能使用-->
		<div id="demo-set" class="demo-set">
			<div id="demo-set-body" class="demo-set-body collapse">
				<div id="demo-set-alert"></div>
				<div class="pad-hor bord-btm clearfix">
					<div class="pull-right pad-top">
						<button id="demo-btn-close-settings" class="btn btn-trans">
                        <i class="pci-cross pci-circle icon-lg"></i>
                    </button>
					</div>
					<div class="media">
						<div class="media-left">
							<i class="demo-pli-gear icon-2x"></i>
						</div>
						<div class="media-body">
							<span class="text-semibold text-lg text-main">页面设定</span>
							<p class="text-muted text-sm">能按照您的喜好排版出个性化的界面。</p>
						</div>
					</div>
				</div>
				<div class="demo-set-content clearfix">
					<div class="col-xs-6 col-md-3">
						<div class="pad-all bg-gray-light">
							<p class="text-semibold text-main text-lg">布局</p>
							<p class="text-semibold text-main">盒式布局</p>
							<div class="pad-btm">
								<div class="pull-right">
									<input id="demo-box-lay" class="toggle-switch" type="checkbox">
									<label for="demo-box-lay"></label>
								</div>
								盒式布局
							</div>
							<div class="pad-btm">
								<div class="pull-right">
									<button id="demo-box-img" class="btn btn-sm btn-trans" disabled><i class="pci-hor-dots"></i>
                                </button>
								</div>
								设置背景图 <span class="label label-primary">New</span>
							</div>

							<hr class="new-section-xs bord-no">
							<p class="text-semibold text-main">动画</p>
							<div class="pad-btm">
								<div class="pull-right">
									<input id="demo-anim" class="toggle-switch" type="checkbox" checked>
									<label for="demo-anim"></label>
								</div>
								启用动画
							</div>
							<div class="pad-btm">
								<div class="select pull-right">
									<select id="demo-ease">
										<option value="effect" selected>ease (Default)</option>
										<option value="easeInQuart">easeInQuart</option>
										<option value="easeOutQuart">easeOutQuart</option>
										<option value="easeInBack">easeInBack</option>
										<option value="easeOutBack">easeOutBack</option>
										<option value="easeInOutBack">easeInOutBack</option>
										<option value="steps">Steps</option>
										<option value="jumping">Jumping</option>
										<option value="rubber">Rubber</option>
									</select>
								</div>
								动画效果
							</div>

							<hr class="new-section-xs bord-no">

							<p class="text-semibold text-main text-lg">顶部LOGO / 导航栏</p>
							<div>
								<div class="pull-right">
									<input id="demo-navbar-fixed" class="toggle-switch" type="checkbox">
									<label for="demo-navbar-fixed"></label>
								</div>
								固定位置
							</div>

							<hr class="new-section-xs bord-no">

							<p class="text-semibold text-main text-lg">底部导航</p>
							<div class="pad-btm">
								<div class="pull-right">
									<input id="demo-footer-fixed" class="toggle-switch" type="checkbox">
									<label for="demo-footer-fixed"></label>
								</div>
								固定位置
							</div>
						</div>
					</div>
					<div class="col-lg-9 pos-rel">
						<div class="row">
							<div class="col-lg-4">
								<div class="pad-all">
									<p class="text-semibold text-main text-lg">侧边栏</p>
									<p class="text-semibold text-main">导航</p>
									<div class="mar-btm">
										<div class="pull-right">
											<input id="demo-nav-fixed" class="toggle-switch" type="checkbox" checked>
											<label for="demo-nav-fixed"></label>
										</div>
										固定位置
									</div>
									<div class="mar-btm">
										<div class="pull-right">
											<input id="demo-nav-profile" class="toggle-switch" type="checkbox" checked>
											<label for="demo-nav-profile"></label>
										</div>
										个人信息组件
										<small class="label label-primary m-l-5">最新</small>
									</div>
									<div class="mar-btm">
										<div class="pull-right">
											<input id="demo-nav-shortcut" class="toggle-switch" type="checkbox">
											<label for="demo-nav-shortcut"></label>
										</div>
										快捷按钮
									</div>
									<div class="mar-btm">
										<div class="pull-right">
											<input id="demo-nav-coll" class="toggle-switch" type="checkbox">
											<label for="demo-nav-coll"></label>
										</div>
										收缩侧边栏
									</div>

									<div class="clearfix">
										<div class="select pad-btm pull-right">
											<select id="demo-nav-offcanvas">
												<option value="none" selected disabled="disabled">-- 筛选模式 --</option>
												<option value="push">推送效果</option>
												<option value="slide">顶部淡入</option>
												<option value="reveal">最大化模式</option>
											</select>
										</div>
										关闭侧边栏
									</div>

									<p class="text-semibold text-main">右侧边栏</p>
									<div class="mar-btm">
										<div class="pull-right">
											<input id="demo-asd-vis" class="toggle-switch" type="checkbox">
											<label for="demo-asd-vis"></label>
										</div>
										默认打开<span class="label label-primary m-l-5">待更新</span>
									</div>
									<div class="mar-btm">
										<div class="pull-right">
											<input id="demo-asd-fixed" class="toggle-switch" type="checkbox" checked>
											<label for="demo-asd-fixed"></label>
										</div>
										固定位置
									</div>
									<div class="mar-btm">
										<div class="pull-right">
											<input id="demo-asd-float" class="toggle-switch" type="checkbox">
											<label for="demo-asd-float"></label>
										</div>
										浮动效果 <span class="label label-primary m-l-5">最新</span>
									</div>
									<div class="mar-btm">
										<div class="pull-right">
											<input id="demo-asd-align" class="toggle-switch" type="checkbox">
											<label for="demo-asd-align"></label>
										</div>
										固定在左侧
									</div>
									<div>
										<div class="pull-right">
											<input id="demo-asd-themes" class="toggle-switch" type="checkbox">
											<label for="demo-asd-themes"></label>
										</div>
										夜间模式<span class="label label-primary m-l-5">待更新</span>
									</div>
								</div>
							</div>
							<div class="col-lg-8">
								<div id="demo-theme">
									<div class="row bg-gray-light pad-top">
										<p class="text-semibold text-main text-lg pad-lft">颜色主题（待更新，暂不能使用）</p>
										<div class="demo-theme-btn col-md-4 pad-ver">
											<p class="text-semibold text-main">顶部导航</p>
											<div class="demo-justify-theme">
												<a href="#" class="demo-theme demo-a-light add-tooltip" data-theme="theme-light" data-type="a" data-title="(A). Light">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-a-navy add-tooltip" data-theme="theme-navy" data-type="a" data-title="(A). Navy Blue">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-a-ocean add-tooltip" data-theme="theme-ocean" data-type="a" data-title="(A). Ocean">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
											</div>
											<div class="demo-justify-theme">
												<a href="#" class="demo-theme demo-a-lime add-tooltip" data-theme="theme-lime" data-type="a" data-title="(A). Lime">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-a-purple add-tooltip" data-theme="theme-purple" data-type="a" data-title="(A). Purple">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-a-dust add-tooltip" data-theme="theme-dust" data-type="a" data-title="(A). Dust">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
											</div>
											<div class="demo-justify-theme">
												<a href="#" class="demo-theme demo-a-mint add-tooltip" data-theme="theme-mint" data-type="a" data-title="(A). Mint">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-a-yellow add-tooltip" data-theme="theme-yellow" data-type="a" data-title="(A). Yellow">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-a-well-red add-tooltip" data-theme="theme-well-red" data-type="a" data-title="(A). Well Red">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
											</div>
											<div class="demo-justify-theme">
												<a href="#" class="demo-theme demo-a-coffee add-tooltip" data-theme="theme-coffee" data-type="a" data-title="(A). Coffee">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-a-prickly-pear add-tooltip" data-theme="theme-prickly-pear" data-type="a" data-title="(A). Prickly pear">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-a-dark add-tooltip" data-theme="theme-dark" data-type="a" data-title="(A). Dark">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
											</div>
										</div>
										<div class="demo-theme-btn col-md-4 pad-ver">
											<p class="text-semibold text-main">顶部LOGO</p>
											<div class="demo-justify-theme">
												<a href="#" class="demo-theme demo-b-light add-tooltip" data-theme="theme-light" data-type="b" data-title="(B). Light">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-b-navy add-tooltip" data-theme="theme-navy" data-type="b" data-title="(B). Navy Blue">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-b-ocean add-tooltip" data-theme="theme-ocean" data-type="b" data-title="(B). Ocean">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
											</div>
											<div class="demo-justify-theme">
												<a href="#" class="demo-theme demo-b-lime add-tooltip" data-theme="theme-lime" data-type="b" data-title="(B). Lime">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-b-purple add-tooltip" data-theme="theme-purple" data-type="b" data-title="(B). Purple">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-b-dust add-tooltip" data-theme="theme-dust" data-type="b" data-title="(B). Dust">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
											</div>
											<div class="demo-justify-theme">
												<a href="#" class="demo-theme demo-b-mint add-tooltip" data-theme="theme-mint" data-type="b" data-title="(B). Mint">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-b-yellow add-tooltip" data-theme="theme-yellow" data-type="b" data-title="(B). Yellow">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-b-well-red add-tooltip" data-theme="theme-well-red" data-type="b" data-title="(B). Well red">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
											</div>
											<div class="demo-justify-theme">
												<a href="#" class="demo-theme demo-b-coffee add-tooltip" data-theme="theme-coffee" data-type="b" data-title="(B). Coofee">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-b-prickly-pear add-tooltip" data-theme="theme-prickly-pear" data-type="b" data-title="(B). Prickly pear">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-b-dark add-tooltip" data-theme="theme-dark" data-type="b" data-title="(B). Dark">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
											</div>
										</div>
										<div class="demo-theme-btn col-md-4 pad-ver">
											<p class="text-semibold text-main">左侧侧边栏</p>
											<div class="demo-justify-theme">
												<a href="#" class="demo-theme demo-c-light add-tooltip" data-theme="theme-light" data-type="c" data-title="(C). Light">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-c-navy add-tooltip" data-theme="theme-navy" data-type="c" data-title="(C). Navy Blue">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-c-ocean add-tooltip" data-theme="theme-ocean" data-type="c" data-title="(C). Ocean">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
											</div>
											<div class="demo-justify-theme">
												<a href="#" class="demo-theme demo-c-lime add-tooltip" data-theme="theme-lime" data-type="c" data-title="(C). Lime">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-c-purple add-tooltip" data-theme="theme-purple" data-type="c" data-title="(C). Purple">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-c-dust add-tooltip" data-theme="theme-dust" data-type="c" data-title="(C). Dust">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
											</div>
											<div class="demo-justify-theme">
												<a href="#" class="demo-theme demo-c-mint add-tooltip" data-theme="theme-mint" data-type="c" data-title="(C). Mint">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-c-yellow add-tooltip" data-theme="theme-yellow" data-type="c" data-title="(C). Yellow">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-c-well-red add-tooltip" data-theme="theme-well-red" data-type="c" data-title="(C). Well Red">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
											</div>
											<div class="demo-justify-theme">
												<a href="#" class="demo-theme demo-c-coffee add-tooltip" data-theme="theme-coffee" data-type="c" data-title="(C). Coffee">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-c-prickly-pear add-tooltip" data-theme="theme-prickly-pear" data-type="c" data-title="(C). Prickly pear">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
												<a href="#" class="demo-theme demo-c-dark add-tooltip" data-theme="theme-dark" data-type="c" data-title="(C). Dark">
													<div class="demo-theme-brand"></div>
													<div class="demo-theme-head"></div>
													<div class="demo-theme-nav"></div>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="demo-bg-boxed" class="demo-bg-boxed">
							<div class="demo-bg-boxed-content">
								<p class="text-semibold text-main text-lg mar-no">Background Images</p>
								<p class="text-sm text-muted">Add an image to replace the solid background color</p>
								<div class="row">
									<div class="col-lg-4 text-justify">
										<p class="text-semibold text-main">Blurred</p>
										<div id="demo-blurred-bg" class="text-justify">
											<!--Blurred Backgrounds-->
										</div>
									</div>
									<div class="col-lg-4 text-justify">
										<p class="text-semibold text-main">Polygon &amp; Geometric</p>
										<div id="demo-polygon-bg" class="text-justify">
											<!--Polygon Backgrounds-->
										</div>
									</div>
									<div class="col-lg-4 text-justify">
										<p class="text-semibold text-main">Abstract</p>
										<div id="demo-abstract-bg" class="text-justify">
											<!--Abstract Backgrounds-->
										</div>
									</div>
								</div>
							</div>
							<div class="demo-bg-boxed-footer">
								<button id="demo-close-boxed-img" class="btn btn-primary">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<button id="demo-set-btn" class="btn" data-toggle="collapse" data-target="#demo-set-body"><i class="demo-psi-gear icon-lg"></i></button>
		</div>

		<script type="text/javascript">
			$(function() {
				//测试tabs
				$('#tabs').tabs({
					sortable: true,
					monitor: '.dlym',
				});

				$(document).off('click', '.navbar-header').on('click', '.navbar-header', function() {
					$('#tabs .nav-tabs>li.no-sort').click();
					$('#tabs .nav-tabs>li').removeClass('active');
				});

				$.ajax({
					url: _path + '/func/nav/treeMenuList.zf',
					dataType: 'json',
					data: {},
					success: setMenu
				});


			});
		</script>
	</body>

</html>