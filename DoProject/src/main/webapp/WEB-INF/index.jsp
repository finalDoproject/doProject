<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Do! Project</title>
<style>
  @charset "utf-8";

@import url(NotoSansKR-Hestia.css?3);
@import url(nanummyeongjo.css?3);


*{margin:0;padding:0;}
header,nav,section,article,aside,footer,hgroup,menu,canvas,figcaption,figure{display:block;}

/* basic */
body{
	min-width:1280px;
	font-family:Malgun Gothic, AppleSDGothicNeo, '돋움', '굴림', Arial, sans-serif;
	src: url('../font/MalgunGothic.eot');
	src: url('../font/MalgunGothic.eot?#iefix') format('embedded-opentype'),
	url('../font/MalgunGothic.woff') format('woff'),
	url('../font/MalgunGothic.ttf') format('truetype');
}
div,p,ol,ul,li,img,a,h1,h2,h3,form,span,iframe,dl,dt,dd{}
dl,ul,ol{list-style:none;}
table{empty-cells:show;border-collapse: collapse;width:100%;table-layout:fixed;}
fieldset{border:none;}
legend,caption,hr{display:none;}
img{border:none;}
img,label{vertical-align:middle;}
input{vertical-align:middle;}
input[type=checkbox],input[type=radio]{width:16px;height:16px;border:none;background:transparent;vertical-align:middle;-webkit-border-radius:0;}
input,select,textarea{
	margin:0;vertical-align:middle;
	font-family:Malgun Gothic, AppleSDGothicNeo, '돋움', '굴림', Arial, sans-serif;
	src: url('../font/MalgunGothic.eot');
	src: url('../font/MalgunGothic.eot?#iefix') format('embedded-opentype'),
	url('../font/MalgunGothic.woff') format('woff'),
	url('../font/MalgunGothic.ttf') format('truetype');
}
button{border:0;border-radius:0;box-shadow:none;background:none;-webkit-appearance:none;}

/* align */
.t_center{text-align:center !important;}
.t_right{text-align:right !important;}
.t_left{text-align:left !important;}

.v_top{vertical-align:top !important;}
.v_middle{vertical-align:middle !important;}
.v_bottom{vertical-align:bottom !important;}

.f_right{float:right !important;}
.f_left{float:left !important;}
.f_none{float:none !important;}

.cboth{clear:both;*overflow:hidden;}
.cboth:before,.cboth:after{display:table;content:'';}
.cboth:after{clear:both;}

/* default link */
a{cursor:pointer;}
a:link,a:visited{text-decoration:none;}
a:hover,a:active{text-decoration:none;}

/* margin/padding */
.mgt10{margin-top:10px !important;}
.mgt20{margin-top:20px !important;}
.mgb3{margin-bottom:3px !important;}
.mgb5{margin-bottom:5px !important;}
.mgb10{margin-bottom:10px !important;}
.mgb15{margin-bottom:15px !important;}
.mgb20{margin-bottom:20px !important;}
.mgb25{margin-bottom:25px !important;}
.mgb30{margin-bottom:30px !important;}

/* etc */
.blind{visibility:hidden;text-indent:-9999999px;font-size:0;height:0;line-height:0;overflow:hidden;}
.highlight{background-color:#eeebfa;}
.hr_alink{display:block;position:absolute;top:-80px;left:0;width:1px;height:1px;line-height:0;font-size:0;border:0;overflow:hidden;}
.font_noto{font-family:'Noto Sans Korean' !important;}

/* IE10 input type auto x delete */
input[type=text]:-ms-clear,input[type=file]:-ms-clear{display:none;}

/* Webkit */
input:-webkit-input-placeholder {color: #a0a0a0 !important;}
textarea:-webkit-input-placeholder {color: #a0a0a0 !important;}
/* Firefox 4-18 */
input:-moz-placeholder {color: #a0a0a0 !important; }
textarea:-moz-placeholder {color: #a0a0a0 !important;}
/* Firefox 19+ */
input:-moz-placeholder {color: #a0a0a0 !important; }
textarea:-moz-placeholder {color: #a0a0a0 !important;}
/* IE10+ */
input:-ms-input-placeholder {color: #a0a0a0 !important; }
textarea:-ms-input-placeholder {color: #a0a0a0 !important;}

/* Chrome Field Outline = None */
a:focus{outline:none;}
input:focus{outline:none;}
textarea:focus{outline:none;}
select:focus{outline:none;}
button:focus{outline:none;}

/* select */
.select-d-section{position:relative;display:inline-block;}
.select-d-section .sds-default,
.sds-list-wrap .sds-close{
	display:inline-block;
	box-sizing:border-box;
	width:100%;height:55px;
	padding:0 25px;
	color:#111;font-size:20px;font-weight:400;line-height:39px;text-align:left;
	vertical-align:middle;
	background-size:30px 8px;
	background-repeat:no-repeat;
	background-position:100% center;
	background-color:#f7f7f7;
}
.select-d-section .sds-default{
	cursor:pointer;
	border:1px solid #a0a0a0;border-radius:6px;
	background-image:url(../img/icon_select_clear.png);
}
.sds-list-wrap{display:none;position:absolute;left:0;top:0;width:100%;z-index:1;}
.sds-list-wrap .sds-close{
	border:1px solid #a0a0a0;border-radius:6px 6px 0 0;
	background-image:url(../img/icon_select_clear_up.png);
}
.sds-list-wrap .sds-close + .sds-list{position:static;}
.sds-list-wrap .sds-list{
	position:absolute;left:0;top:55px;
	width:100%;
	box-sizing:border-box;
	border:1px solid #a0a0a0;border-top:none;border-radius:0 0 6px 6px;
	background-color:#f7f7f7;
	overflow-y:auto;
}
.sds-list-wrap .sds-list li{border-top:1px solid #a0a0a0;}
.sds-list-wrap .sds-list button{cursor:pointer;display:block;width:100%;height:53px;padding:0 25px;color:#111;font-size:20px;font-weight:400;text-align:left;}
.sds-list-wrap .sds-list button:hover{font-weight:bold;}
.sds-on-style .sds-default{
	border-color:#a0a0a0;border-radius:6px 6px 0 0;
	background-image:url(../img/icon_select_clear_up.png);
}
.sds-on-style .sds-list-wrap{display:inline-block;}

/*==== content ====*/
.homepageWp{position:relative;min-width:1360px;margin:0 auto;text-align:center;}
.hpBx{position:relative;width:1280px;margin:0 auto;text-align:center;}
.homepageWp h2{margin-bottom:10px; font-family:'Noto Sans Korean';font-weight:700; font-size: 50px;}
.homepageWp h3{margin-bottom:10px; font-family:'Noto Sans Korean';font-weight:700; font-size: 40px;}
.homepageWp h4{font-family:'Noto Sans Korean';font-weight:400; font-size: 28px;}
.homepageWp h5{font-family:'Noto Sans Korean';font-weight:500; font-size: 20px;}
.logintxtLink{color:#fff;}
.logintxtLink > a{text-decoration:underline;color:#fff;}
.btn01, .btn03, .btn04{
	display:inline-block;
	min-width:110px;height:48px;line-height:48px;
	padding:0 35px;
	font-size:17px;font-weight:500;text-align:center;
	font-family:'Noto Sans Korean';
	border:1px solid;
	border-radius:6px;
	box-shadow:0 2px 2px 0 #313461;
	-webkit-box-shadow:0 2px 2px 0 #313461;
	-moz-box-shadow:0 2px 2px 0 #313461;
}
.btn01{
	color:#fff;
	border-color:#55b341;
	background-color:#55b341;
}
.btn02{
	color:#111;
	border:1px solid #fff;
	background-color:#fff;
}
.btn03{
	color:#fff;
	border-color:#6f69ea;
	background-color:#6f69ea;
}
.btn04{
	color:#111;
	border-color:#505050;
	background-color:none;
	box-shadow:none !important;
}

.arrowleft_wh:after{
	content:" ";
	vertical-align:middle;
	display:inline-block;
	margin:0 0 0 14px;
	width:8px;height:16px;
	background-image:url(../img/arrowleft_wh.png);
}
.arrowleft_bk:after{
	content:" ";
	vertical-align:middle;
	display:inline-block;
	margin:0 0 0 14px;
	width:8px;height:16px;
	background-image:url(../img/arrowleft_bk.png);
}

/** header **/
.hp_header{
	z-index:1200;position:fixed;top:0;left:0;right:0;
	min-height:80px;
	background-color:rgba(0,0,0, .2);
}
.hp_header .hpBx{text-align:left;}
/*
.hp_header h1:before{
	content:" ";
	display:inline-block;
	margin-top:26px;margin-left:49px;
	width:100px;height:29px;
	background-image:url(../img/bi_flow_wh.png);
	background-repeat:no-repeat;
}
*/
.loginBtnBx{
	position:absolute;top:19px;right:50px;
}
.loginBtnBx a{
	display:inline-block;
	padding:0 15px;
	min-width:80px;height:40px;line-height:38px;
	font-size:17px;color:#fff;text-align:center;
	font-family:'Noto Sans Korean';
	border:solid 1px;
	border-radius:6px;
}
.loginBtnBx a:first-child{margin-right:16px;}
.loginBtnBx a.lbtn01{
	border-color:#1e9dee;
	background-color:#1e9dee;
}
.loginBtnBx a.lbtn02{min-width:100px;}
.hp_header .mlist{position:absolute;top:26px;left:200px;}
.hp_header .mlist li{display: inline-block;}/* 20180411 수정 */
.hp_header .mlist a{margin-right:30px;font-size:19px;color:#fff;font-family:'Noto Sans Korean';}

/* background-color:#fff 일경우 */
.bgWhite.hp_header{background-color:rgba(0, 0, 0, .7);}
.bgWhite2 .hp_header{background-color:rgba(255, 255, 255, 1);}
.bgWhite2 .hp_header h1:before{background-image:url(../img/bi_flow.png);}
.bgWhite2 .hp_header a.lbtn02{
	border-color:#505050;
	color:#111;
}
.bgWhite2 .hp_header .mlist a{color:#111;}

/** footer **/
.hp_footer{position:relative;}
.hp_footer .hpBx{position:relative;padding:100px 0 100px 486px;text-align:left;width:800px;}
.hp_footer h1{
	display:block;position:absolute;top:124px;left:152px;
	width:270px;height:62px;
	background-image:url(../img/ci_madrascheck.png?4);
	background-repeat:no-repeat;
}
.hp_footer ul.sitemap{
	position:relative;min-height:34px;
}
.hp_footer ul.sitemap li{
	float:left;
	min-width:40px;padding-right:40px;
}
.hp_footer ul.sitemap li.first{}
.hp_footer ul.sitemap li a{font-size:16px;color:#222;}
.hp_footer .copyright{margin-bottom:5px;font-size:13px;color:#969696;}
.hp_footer .copyright a{font-weight:bold;color:#36383a;}
/* //20171205 수정 */
.hp_footer .right{
	position:absolute;top:114px;right:40px;
}
/* footer > select */
.hp_footer .select-d-section{width:170px;}
.hp_footer .sds-list{height:190px;}
.hp_footer .select-d-section .sds-default,
.hp_footer .sds-list-wrap .sds-close{
	height:48px;
	font-size:16px;line-height:36px;
}
.hp_footer .sds-list-wrap .sds-list{
	top:48px;
}
.hp_footer .sds-list-wrap .sds-list button{height:46px;font-size:16px;}

/** freeStartWp **/
.freeStartWp{
	min-height:738px;
	background:url(dopemain.png) no-repeat;
	background-position:center center;
	background-size:100% 738px;
	background-size:cover;-webkit-background-size:cover;-moz-background-size:cover;-o-background-size:cover;
}
.freeStartWp .hpBx{padding-top:240px;}
.freeStartWp h2, .freeStartWp h4{color:#fff;}
.freeStartWp .btnBx{margin:85px 0 15px 0;}

/** fullPageWp **/
.fullPageWp{position:relative;height:850px;}
/* banner */
.bannerWp{position:relative;width:100%;height:850px;}
.banner_inner{height:100%;min-height:850px;}
.slider{position:relative;width:100%;height:100%;margin:0 auto;overflow:hidden;z-index:1000;}
.slides{position:absolute;left:0;display:block;width:100%;height:100%;z-index:1001;}
.slides .slide_inner{
	position:relative;
	max-width:1024px;height:100%;
	margin:0 auto;
	text-align:center;
	background-repeat:no-repeat;
	background-position:center bottom;
	background-size:95%;
}
.slides .detail{padding-top:80px;}
.slides h3, .slides h5{color:#fff;}
/* slide1 */
.slide1{background-color:#eb6e6e;}
.slide1 .slide_inner{background-image:url(../img/img_bnr_01.png);}
/* slide2 */
.slide2{background-color:#1e9dee;}
.slide2 .slide_inner{background-image:url(../img/img_bnr_02.png);}
/* slide3 */
.slide3{background-color:#1fc3c1;}
.slide3 .slide_inner{background-image:url(../img/img_bnr_03.png);}
/* slide4 */
.slide4{background-color:#6ec55c;}
.slide4 .slide_inner{background-image:url(../img/img_bnr_04.png);}
/* slide5 */
.slide5{background-color:#edbf34;}
.slide5 .slide_inner{background-image:url(../img/img_bnr_05.png);}
/* left/right button */
.btn_prevnext {}
.btn_prevnext a{
	z-index:1001;
	position:absolute;top:50%;
	display:block; 
	margin-top:-33px;
	width:36px;height:66px;
	background-size:100% 100%;
	background-repeat:no-repeat;
}
.btn_prevnext .btn_prev {
	left:50%;
	margin-left:-630px;
	background-image:url(../img/btn_prev.png);
}
.btn_prevnext .btn_next {
	right:50%;
	margin-right:-630px;
	background-image:url(../img/btn_next.png);
}

/** applicWp **/
.applicWp{position:relative;min-height:850px;background-color:#ebebeb;}
.applicWp .hpBx{padding-top:90px;padding-bottom:60px;}
.applicWp h3, .applicWp h5{color:#111;}
.applicWp ul{max-width:1200px;margin:0 auto;margin-top:70px;clear:both;overflow:hidden;text-align:center;}
.applicWp li{
	display:inline-block;vertical-align:top;
	width:280px;height:320px;
	margin:0 50px 50px 50px;
	text-align:center;
	border:1px solid #d5dade;
	border-radius:5px;
	background-color:#fff;
}
.applicWp li strong{
	display:block;
	margin-top:12px;margin-bottom:6px;
	font-size:14px;color:#969696;text-align:center;
}
.applicWp li p{
	line-height:22px;
	font-size:15px;color:#111111;text-align:center;
}
.applicWp li a{
	display:inline-block;
	margin-top:18px;
	width:108px;height:38px;line-height:36px;
	font-size:14px;color:#b5b5b6;text-align:center;font-weight:bold;
	border:1px solid #b5b5b6;
	border-radius:40px;
}
.applicWp li a:hover{
	border-color:#454545;color:#454545;
}
/** movieWp **/
.movieWp{position:relative;min-height:580px;}
.movieWp .btn{
	display:block;
	z-index:1000;
	position:absolute;top:50%;left:50%;
	margin-top:-110px;margin-left:-110px;
	width:220px;height:220px;
}
.movieWp .btn.mvplay{
	background:url(../img/btn_mvplay.png) no-repeat;
}
.movieWp .btn.mvstop{
	background:url(../img/btn_mvstop.png) no-repeat;
}

/** cooperWp **/
.cooperWp{min-height:390px;padding-bottom:60px;background-color:#4b4a51;}
.cooperWp .hpBx{padding-top:30px;}
.cooperWp ul{}
.cooperWp li{
	display:inline-block;
	margin:0 30px;margin-top:60px;
}
.cooperWp .btnBx{margin:55px 0 0 0;}

/** reviewWp **/
.reviewWp{
	position:relative;
	min-height:1840px;
	background:url(../img/fullbg02.gif) no-repeat;
	background-position:center center;
	background-size:100%;
	background-size:cover;-webkit-background-size:cover;-moz-background-size:cover;-o-background-size:cover;
}
.reviewWp .hpBx{padding-top:90px;padding-bottom:110px;}
.reviewWp h3{line-height:48px;font-size:40px;color:#222;font-weight:600;font-family: 'Nanum Myeongjo'}
.reviewWp h3:before{content:" ";display:block;margin:0 auto 25px auto;width:158px;height:24px;background-image:url(../img/ico_star.png);background-size:100%;}
.reviewBx{padding-top:50px;clear:both;overflow:hidden;}
h3 + .reviewBx{padding-top:100px;}
.reviewBx dl{
	float:left;
	margin-top:100px;
	width:630px;
	text-align:left;
}
.reviewBx dl:nth-child(2n){float:right;margin-top:120px;}
.reviewBx dl:first-child{margin-top:0;}
.reviewBx dl.mgt90{margin-top:90px;}
.reviewBx dl.mgt120{margin-top:170px;}
.reviewBx dl dt, .reviewBx dl dd{padding-left:22px;font-family: 'Nanum Myeongjo'}
.reviewBx dl dt{font-size:20px;line-height:26px;font-weight:600;/*font-family:'Noto Sans Korean' !important;*/}
.reviewBx dl dt strong{font-weight:700;padding-top:6px;border-top:4px solid #111;}
.reviewBx dl dd{
	position:relative;
	margin-top:15px;
	font-size:18px;line-height:28px;
}
.reviewBx dl dd:before{
	content:" ";
	display:block;
	position:absolute;top:5px;left:0;
	width:16px;height:14px;
	background-image:url(../img/ico_doublemark_l.png);
}
.reviewBx dl dd .ico_doublemark_r{
	display:inline-block;
	margin-left:5px;
	width:16px;height:14px;
	background-image:url(../img/ico_doublemark_r.png);
}
.reviewWp .btnBx{margin:110px 0 0 0;}
/* 리뷰더보기 */
.reviewWp.view{background-color:#fbf7f0;background-image:none;}
.reviewWp.view .btnBx{display: none;}
.reviewWp.view .hpBx{padding-bottom:150px;}
/** reviewtopWp **/
.reviewtopWp{
	min-height:300px;
	background:url(../img/fullbg04.gif) no-repeat;
	background-position:center center;
	background-size:100% 738px;
	background-size:cover;-webkit-background-size:cover;-moz-background-size:cover;-o-background-size:cover;
}

/** surviceWp **/
.surviceWp{
	position:relative;
	min-height:220px;
	/* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#554ebe+0,5054ba+25,4861b7+47,3395ac+73,27b2b1+100 */
	background: #554ebe; /* Old browsers */
	background: -moz-linear-gradient(left,  #554ebe 0%, #5054ba 25%, #4861b7 47%, #3395ac 73%, #27b2b1 100%); /* FF3.6-15 */
	background: -webkit-linear-gradient(left,  #554ebe 0%,#5054ba 25%,#4861b7 47%,#3395ac 73%,#27b2b1 100%); /* Chrome10-25,Safari5.1-6 */
	background: linear-gradient(to right,  #554ebe 0%,#5054ba 25%,#4861b7 47%,#3395ac 73%,#27b2b1 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#554ebe', endColorstr='#27b2b1',GradientType=1 ); /* IE6-9 */
}
.surviceWp h3, .surviceWp h5{color:#fff;}
.surviceWp .hpBx{padding-top:55px;}

/** priceWp **/
.priceWp{min-height:850px;}
.priceWp .hpBx{padding-top:80px;padding-bottom:100px;clear:both;overflow:hidden;}
.priceWp dl{
	position:relative;
	float:left;
	margin-left:10px;
	width:310px;height:668px;
	border:1px solid #e6e6e6;
	border-radius:6px;
	background-color:#f8f8f8;
}
.priceWp dl:first-child{margin-left:0;}
.priceWp dl:before{
	content:" ";
	display:block;
	position:absolute;top:-3px;left:-5px;z-index:100;
	width:133px;height:133px;
	background-repeat:no-repeat;
	background-size:100%;
}
.priceWp dl.prem:before{background-image:url(../img/label_prm.png);}
.priceWp dl.busi:before{background-image:url(../img/label_biz.png);}
.priceWp dt{
	position:relative;
	padding-top:60px;
	height:310px;/* 20171107 수정 */
	background-color:#fff;
	border-radius:6px 6px 0 0;
}
.priceWp dt h3{font-size:30px;color:#111;}
.priceWp dt h4{margin-top:25px;margin-bottom:10px;font-size:28px;color:#111;font-weight:500;}
.priceWp dt h4 strong{
	display:inline-block;
	vertical-align:middle;
	margin-top:-8px;margin-right:10px;
	font-family:'Myriad Pro'; font-size:45px;
}
.priceWp dt p{font-weight:bold;font-size:16px;color:#989898;}
.priceWp dt a{
	display:block;
	position:absolute;bottom:30px;left:50%;z-index:100;
	margin-left:-100px;
	width:200px;height:50px;line-height:48px;
	font-size:18px;font-weight:400;color:#fff;text-align:center;font-family:'Noto Sans Korean';
	background-color:#1e9dee;
	border-radius:6px;
}
.priceWp dl.free dt a{
	width:198px;height:48px;
	color:#303030;
	border:1px solid #d0d0d0;
	background-color:#fff;
}
.priceWp dl.entp dt a{
	background-color:#5bbc46;
}
.priceWp dd{
	border-top:1px solid #e6e6e6;
}
.priceWp dd .bullist{
	padding-top:20px;padding-left:50px;
	border-top:1px solid #f1f1f1;
}
.bullist{}
.bullist li{
	padding-left:12px;
	min-height:30px;
	text-align:left;font-size:15px;color:#111;
	background:url(../img/bul_01.gif) no-repeat 0 8px;
}
.bullist li a{display:inline-block;padding-top:10px;color:#4c80d6;text-decoration:underline;}

/** linkWp **/
.linkWp{min-height:1200px;background-color:#e3e8eb;}
.linkWp .hpBx{
	position:relative;
	padding-top:858px;
	background:url(../img/bg_link.png) no-repeat 0 130px;
}
.btn_manl{
	display:block;
	position:absolute;top:50px;right:0;
	width:178px;height:48px;line-height:46px;
	font-size:16px;color:#3a3c3f;font-weight:500;text-align:center;
	font-family:'Noto Sans Korean';
	border:1px solid #d0d0d0;
	border-radius:6px;
	background-color:#fff;
}
.btn_manl:before{
	content:" ";
	display:inline-block;vertical-align:middle;
	margin-top:-3px;margin-right:8px;
	width:18px;height:18px;
	background:url(../img/ico_mnl.gif);
}
.btnlinkBx{
	text-align:center;
}
.btnlinkBx a{
	margin-left:125px;
}
.btnlinkBx a:first-child{margin-left:0;}
/* inputbox */
.iptBx{
	position:relative;
	display:inline-block;
	padding-left:20px;padding-right:170px;
	height:53px;line-height:48px;
	border:1px solid #505050;
	border-radius:6px 0 0 6px;
}
.iptBx input{background-color:transparent;border:0;height:53px;line-height:48px;font-size:17px;color:#111;}
.iptBx a{
	display:inline-block;
	position:absolute;top:-1px;right:-6px;
	width:160px;height:55px;line-height:52px;
	font-size:17px;color:#fff;text-align:center;
	border-radius:0 6px 6px 0;
}
.linkWp .iptBx input{width:210px;}
.linkWp .iptBx a{background-color:#151515;}
.selectIpt{vertical-align:top;margin-bottom:70px;min-height:55px;}
.selectIpt .select-d-section{vertical-align:top;width:230px;}
.selectIpt .select-d-section .sds-default{border-color:#505050;background-color:transparent;}
.selectIpt .sds-list{height:217px;}
.selectIpt .iptBx{vertical-align:top;margin-left:5px;}
.selectIpt .iptBx input{vertical-align:top;font-size:20px;height:51px;margin-top:-2px;}

/** nowstartWp **/
.nowstartWp{min-height:350px;background-color:#5650c3;}
.nowstartWp .hpBx{padding-top:85px;}
.nowstartWp h3{color:#fff;}
.nowstartWp .iptBx{margin-top:10px;margin-bottom:15px;border-color:#fff;background-color:#fff;}
.nowstartWp .iptBx input{width:260px;}
.nowstartWp .iptBx a{background-color:#55b341;}

/** missionWp **/
.missionWp{
	min-height:738px;
	background:url(../img/fullbg03.gif) no-repeat;
	background-position:center center;
	background-size:100% 738px;
	background-size:cover;-webkit-background-size:cover;-moz-background-size:cover;-o-background-size:cover;
}
.missionWp .hpBx{position:relative;padding-top:280px;}
.missionWp .imgtit{
	margin:0 auto;
	/*background:url(../img/imgtit_ourmission.png) no-repeat; 2017-03-21 */
}
.missionWp h2, .missionWp h4{color:#fff;}

/** memberWp **/
.memberWp{min-height:1640px;background-color:#2b885d;}
.memberWp .hpBx{position:relative;padding-top:100px;}
.memberWp .imgtit{
	margin:0 auto;margin-bottom:60px;padding:0 60px;
	/*background:url(../img/imgtit_member.png) no-repeat; 2017-03-21 */
}
.memberWp h3, .memberWp h5{line-height:26px;color:#fff;font-family: 'Nanum Myeongjo';}
.memberWp h3{margin-bottom:25px;}
.membList{clear:both;overflow:hidden;}
.membList li{
	float:left;
	width:33.3%;
	margin-bottom:58px;
}
.membList li > p{
	margin-top:15px;
	font-family:'Noto Sans Korean'; color:#fff; font-size:16px; font-weight:300;
}
.membList li > p strong{font-weight:500;}

/** contactusWp **/
.contactusWp{min-height:955px;background-color:#f2f2f2;}
.contactusWp .hpBx{position:relative;padding-top:90px;}
.contactusWp .clearBx{margin-top:70px;padding-left:30px;padding-right:30px;}
.contactusWp .clearBx:before{clear:both;overflow:hidden;content:" ";display:block;font-size:0;line-height:0;height:0;}
.contactusWp .clearBx:after{clear:both;overflow:hidden;content:" ";display:block;font-size:0;line-height:0;height:0;}
.contactusWp .left{float:left;}
.contactusWp .right{float:right;}
/* 문의 */
.iptformBx{
	width:420px;
	text-align:left;
}
.iptformBx dt{
	margin:18px 0 10px 0;
	font-family:'Noto Sans Korean';font-size:16px;color:#909090;font-weight:400;
}
.iptformBx dt:first-child{margin-top:0;}
.iptformBx dd{
	box-sizing:border-box;
	min-height:50px;
	padding-left:18px;padding-right:15px;
	border:1px solid #e1e1e1;
	border-radius:4px;
	background-color:#fff;
}
.iptformBx dd input{
	width:100%;height:48px;line-height:46px;
	vertical-align:middle;
	font-family:'Noto Sans Korean';font-size:17px;color:#333;font-weight:400;
	border:0;
	background-color:transparent;
}
.iptformBx dd textarea{
	width:100%;height:160px;
	vertical-align:middle;
	margin:10px 0;
	font-family:'Noto Sans Korean';font-size:17px;color:#333;font-weight:400;
	border:0;
	background-color:transparent;
}
/* Webkit */
.iptformBx dd input:-webkit-input-placeholder {color: #c8c8c8 !important;}
.iptformBx dd textarea:-webkit-input-placeholder {color: #c8c8c8 !important;}
/* Firefox 4-18 */
.iptformBx dd input:-moz-placeholder {color: #c8c8c8 !important; }
.iptformBx dd textarea:-moz-placeholder {color: #c8c8c8 !important;}
/* Firefox 19+ */
.iptformBx dd input:-moz-placeholder {color: #c8c8c8 !important; }
.iptformBx dd textarea:-moz-placeholder {color: #c8c8c8 !important;}
/* IE10+ */
.iptformBx dd input:-ms-input-placeholder {color: #c8c8c8 !important; }
.iptformBx dd textarea:-ms-input-placeholder {color: #c8c8c8 !important;}
/* 문의버튼 */
.iptformBtn{
	display:block;
	margin:0 auto;margin-top:20px;
	width:180px;height:50px;line-height:48px;
	font-size:17px;color:#fff;font-weight:bold;text-align:center;
	border-radius:6px;
	background-color:#6f69ea;
}
/* 주소/전화 */
.addressBx{padding-top:40px;min-height:105px;}
.addressBx dl{float:left;position:relative;padding-left:50px;width:300px;text-align:left;}
.addressBx dl:first-child{width:350px;}
.addressBx dl dt{
	position:absolute;top:0;left:0;
	font-family:'Noto Sans Korean';font-size:18px;color:#111;
}
.addressBx dl dt strong{border-top:3px solid #111;}
.addressBx dl dd{
	padding-top:3px;
	font-family:'Noto Sans Korean';font-size:16px;color:#333;
}

/** termsWp **/
.termsWp{padding-top:150px;padding-bottom:100px;}
.termsWp .hpBx{width:890px;text-align:left;color:#111;}
.termsWp h1{margin-bottom:50px; font-family:'Noto Sans Korean';font-weight:700; font-size: 30px !important; text-align:center;}
.termsWp h2{margin-top:50px;margin-bottom:30px; font-family:'Noto Sans Korean';font-weight:700; font-size: 20px !important;}
.termsWp h3{margin-bottom:5px; font-family:'Noto Sans Korean';font-weight:400; font-size: 14px !important;}
.termsWp div{margin-bottom:30px; line-height:24px; font-family:'Noto Sans Korean';font-weight:400; font-size: 14px !important;}
.termsWp hr{margin-top:12px;margin-bottom:-12px;display:block;border:0;border-bottom:1px solid #000;}

/* fix_btm_btn */
.fix_btm_btn{display: none;}


/*======= popup =======*/
.modal_pop_wrap{
	z-index:1500;
	position:fixed;top:0;left:0;right:0;bottom:0;
}
.mdp_bg{
	z-index:1500;
	position:fixed;top:0;left:0;right:0;bottom:0;
	background-color:rgba(0, 0, 0, .7);
}
.btn_pop_close, .btn_pop_pre, .btn_pop_nxt{display:block;width:51px;height:103px;position:absolute;}
.btn_pop_close{top:0;right:-51px;background:url(../img/btn_pop_close.png) no-repeat;}
.btn_pop_pre{top:50%;left:-139px;margin-top:-25px;background:url(../img/btn_pop_pre.png) no-repeat;}
.btn_pop_nxt{top:50%;right:-139px;margin-top:-25px;background:url(../img/btn_pop_nxt.png) no-repeat;}
.modal_popup{
	z-index:2000;
	position:relative;
	margin:0 auto;
	width:1200px;height:100%;
	background-color:#fff;
}
.modal_pop_cont{
	z-index:2000;
	position:relative;
	margin:0 88px;height:100%;
	text-align:center;
}
.modal_pop_cont .tab{height:60px;border-bottom:1px solid #dadbdc;}
.modal_pop_cont .tab a{
	display:inline-block;
	margin:0 -1px;
	width:33%;height:60px;line-height:54px;
	font-size:22px;color:#666668;font-weight:400;text-align:center;
	font-family:'Noto Sans Korean';
	box-sizing:border-box;
}
.modal_pop_cont .tab a:last-child{width:33.3%;}
.modal_pop_cont .tab a.on{
	font-weight:500;color:#222223;
	border-bottom:6px solid #5f5ab9;
}
.ciscrlbx{
	z-index:2000;
	position:absolute;top:295px;left:0;right:0;bottom:25px;
	overflow-y:auto;
}
.both_box{padding:10px 0;clear:both;overflow:hidden;}
.both_box .left{width:510px;float:left;text-align:center;}
.both_box .right{width:510px;float:right;text-align:center;}
.bulcheck{font-family:'Noto Sans Korean';}
.bulcheck dt{
	margin-top:40px;
	font-size:22px;color:#4584eb;font-weight:500;
}
.bulcheck dt:first-child{margin-top:60px;}
.bulcheck dt:before{
	content:" ";
	display:inline-block;vertical-align:middle;
	margin-top:-2px;margin-right:12px;
	width:24px;height:24px;
	background:url(../img/bul_check.gif) no-repeat 0 0;
}
.bulcheck dd{
	margin-top:10px;
	line-height:26px;
	font-size:16px;color:#111111;font-weight:400;
}
.icolist{text-align:center;}
.icolist li{
	display:inline-block;vertical-align:top;
	margin:14px 10px;
	width:350px;height:230px;
	text-align:center;
	border-radius:2px;
	background-color:#eff0f1;
}
.icolist li img{display:inline-block;margin:35px 0 20px 0;}
.icolist li p{
	line-height:26px;
	font-size:16px;color:#111111;font-weight:400;
	font-family:'Noto Sans Korean';
}

/* 20171107 추가 */
.calcu_wrap{
	padding:25px 0;text-align:center;
	font-family:Malgun Gothic, AppleSDGothicNeo, '돋움', '굴림', Arial, sans-serif;
}
.calcu_wrap label{display:inline-block;margin-right:10px;font-size:15px;color:#3a3c3f;font-weight:bold;}
.calcu_wrap .calcu_input{
	position:relative;display:inline-block;
	width:160px;height:30px;
	text-align:left;
	border:1px solid #e0e2e4;
	border-radius:4px;
}
.calcu_wrap .calcu_input input{margin-top:5px;margin-left:6px;width:90px;border:0;font-size:15px;color:#111;}
.calcu_wrap .calcu_input a{
	display:block;
	position:absolute;top:-1px;right:-1px;left:initial;bottom:initial;
	padding:0;margin:0;
	width:60px;height:32px;line-height:32px;
	font-size:13px;color:#fff;text-align:center;
	font-family:Malgun Gothic, AppleSDGothicNeo, '돋움', '굴림', Arial, sans-serif;
	background-color:#47484b;
	border-radius:0 4px 4px 0;
}

/* 20171117 추가 */
.btn_fix_bottom{
	z-index:2001;
	padding-top:20px;
	height:80px;
	text-align:center;
}
.btn42_blue{
	display:inline-block;
	width:180px;height:50px;line-height:50px;
	font-size:19px;color:#fefefe;letter-spacing:-0.5px;font-family:'Noto Sans Korean';
	border-radius:6px;
	border-bottom:2px solid #e5e5e5;
	background-color:#4584eb;
}

/* 언론보도 */
.newstopWp{
	min-height:300px;
	background:url(../img/fullbg05.gif) no-repeat;
	background-position:center center;
	background-size:100% 300px;
	background-size:cover;-webkit-background-size:cover;-moz-background-size:cover;-o-background-size:cover;
}
.newstopWp .hpBx{
	padding-top:140px;
	color:#fff;
}
.newsWp{
	padding-top:110px;padding-bottom:120px;
	background-color:#f2f2f2;
}
.news_list_wrap{
	padding:0 29px;margin:0 auto;
	width:800px;
	border:1px solid #e1e1e1;
	border-radius:4px;
	background-color:#fff;
	box-sizing:border-box;
}
.news_list{
	padding-top:30px;
	min-height:96px;
	text-align:left;
	border-top:1px solid #e7e9ea;
}
.news_list_wrap .news_list:first-child{border-top:0;}
.news_list .nw_top{
	height:36px;
}
.news_list .nw_top span.font_noto{
	display: inline-block;
	padding:0 10px;
	height:36px;line-height:36px;
	font-size:17px;color:#ffffff;text-align:center;
	border-radius:5px;
	background-color:#2b6295;
}
.news_list .nw_box{
	position:relative;
	padding-top:10px;
}
.news_list .nw_text{
	display:inline-block;
	max-width:80%;max-height:40px;line-height:20px;
	font-size:16px;color:#111;font-weight:bold;
	text-overflow:ellipsis; white-space: nowrap; overflow: hidden;
}
.news_list a:hover{text-decoration:underline;}
.news_list a.on{color:#fff;background-color:#292929;}
.news_list a.on:hover{cursor:default;text-decoration:none;}


.news_list .date{
	position:absolute;top:12px;right:0;
	font-size:16px;color:#939596;font-family:Myriad Pro;
}
.paging{
	padding-top:50px;
	text-align:center;
}
.paging .btn_pg{display:inline-block;vertical-align:middle;margin-top:-2px;}
.paging_num{
	display:inline-block;
	width:190px;
}
.paging_num a{
	display:inline-block;vertical-align:middle;
	margin:0 4px;
	width:21px;height:21px;line-height:18px;
	font-size:17px;color:#292929;
	border-radius:2px;
}
.paging_num a:hover{text-decoration:underline;}
.paging_num a.on{color:#fff;background-color:#292929;}
.paging_num a.on:hover{cursor:default;text-decoration:none;}
  </style>
	
	<!-- Google Tag Manager -->
	<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
	'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-PJMHRLW');</script>
	<!-- End Google Tag Manager -->

	<!-- Hotjar Tracking Code for https://flow.team -->
	<script>
	    (function(h,o,t,j,a,r){
	        h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
	        h._hjSettings={hjid:661616,hjsv:6};
	        a=o.getElementsByTagName('head')[0];
	        r=o.createElement('script');r.async=1;
	        r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
	        a.appendChild(r);
	    })(window,document,'https://static.hotjar.com/c/hotjar-','.js?sv=');
	</script>
		
<!-- Start of flow Zendesk Widget script -->
<script>/*<![CDATA[*/window.zEmbed||function(e,t){var n,o,d,i,s,a=[],r=document.createElement("iframe");window.zEmbed=function(){a.push(arguments)},window.zE=window.zE||window.zEmbed,r.src="javascript:false",r.title="",r.role="presentation",(r.frameElement||r).style.cssText="display: none",d=document.getElementsByTagName("script"),d=d[d.length-1],d.parentNode.insertBefore(r,d),i=r.contentWindow,s=i.document;try{o=s}catch(e){n=document.domain,r.src='javascript:var d=document.open();d.domain="'+n+'";void(0);',o=s}o.open()._l=function(){var e=this.createElement("script");n&&(this.domain=n),e.id="js-iframe-async",e.src="https://assets.zendesk.com/embeddable_framework/main.js",this.t=+new Date,this.zendeskHost="flow.zendesk.com",this.zEQueue=a,this.body.appendChild(e)},o.write('<body onload="document._l();">'),o.close()}();
/*]]>*/</script>
<!-- End of flow Zendesk Widget script -->
<script type="text/JavaScript">
window.zESettings = {
  webWidget: {
    launcher: {
      label: {
        '*': '문의하기'
      }
    }
  }
};
</script>

<script type="application/ld+json">
{
 "@context": "http://schema.org",
 "@type": "Organization",
 "name": "플로우(flow)",
 "alternateName" : "쉬운 협업툴",
 "url": "https://flow.team",
 "logo": "https://flow.team/design2/img_rn/bi_flow.png",
 "sameAs": [
	"https://itunes.apple.com/kr/app/id939143477",
	"https://play.google.com/store/apps/details?id=com.webcash.bizplay.collabo",	
	"https://www.facebook.com/flow.team", 
	"http://blog.naver.com/madrascheck", 
	"https://www.youtube.com/channel/UCmnzKvpQMl8uyT1PUMdPsXQ",
	"https://instagram.com/madrascheck"
 ]
}
</script>

	<script type="text/javascript">
	var filter = "win16|win32|win64|mac|macintel";
	if( navigator.platform  ){
    	if( filter.indexOf(navigator.platform.toLowerCase())<0 ){
    		
    		var addUrl = "";
    		if( location.href.indexOf("?") > -1){
    			addUrl = location.href.substr(location.href.indexOf("?"));
    		}    		
    		location.href="/m_index.html"+addUrl;
	    }else{
	    	//location.href="/login.act";
    	}
	}
	if( window.location.hostname.indexOf("www.") > -1){
		//done.	
	}else{
		if(window.location.hostname.split(".").length > 2){		//subdomain
			location.href="/login.act";
		}
	}
	
	$(document).ready(function(){
		// header background when scroll
		$(window).scroll(function() {
			var scroll = $(window).scrollTop();

			if (scroll >= 1) {
				$("#header").addClass('bgWhite');
			} else {
				$("#header").removeClass('bgWhite');
			}
		});

		// header background scroll X
		$(window).scroll(function() {
			$('#header').css('left', -$(this).scrollLeft() + "px");
		});
		
	});
	</script>

	<!-- select -->
	<script type="text/javascript">
	
	$(document).ready(function(){
		
		 var Request = function() {  
		        this.getParameter = function(name) {  
		            var rtnval = '';  
		            var nowAddress = unescape(location.href);  
		            var parameters = (nowAddress.slice(nowAddress.indexOf('?') + 1,  
		                    nowAddress.length)).split('&');  
		            for (var i = 0; i < parameters.length; i++) {  
		                var varName = parameters[i].split('=')[0];  
		                if (varName.toUpperCase() == name.toUpperCase()) {  
		                    rtnval = parameters[i].split('=')[1];  
		                    break;  
		                }  
		            }  
		            return rtnval;  
		        }  
		    }  
		var request = new Request();  
		if(request.getParameter('move') == "ebadom"){
			ebadomPopUp();
		}else if(request.getParameter('move') == "mcc"){
			mccPopUp();
		}else if(request.getParameter('move') == "dk"){
			dkPopUp();
		}else if(request.getParameter('move') == "webcash"){
			webcashPopUp();
		}else if(request.getParameter('move') == "etnews"){
			etnewsPopUp();
		}else if(request.getParameter('move') == "cybertel"){
			cybertelPopUp();
		}
		
		var selectM ={
			init:function(){
				this.defaultBtn = jQuery('.sds-default');
				this.closeBtn = jQuery('.sds-close');
				this.listWrap = jQuery('.sds-list-wrap');
				this.listBtn = jQuery('.sds-list').find('button');
				this.valInput= jQuery('.sds-value')
				this.addEvent();
			},
			addEvent:function(){
				this.defaultBtn.on('click', function(){selectM.smShow(jQuery(this)) })
				this.closeBtn.on('click', function(){selectM.smHide(jQuery(this)) })
				this.listBtn.on('click', function(){selectM.smSel(jQuery(this)) })
			},
			smShow:function(paramtarget){
				var _this = paramtarget;
				if(_this.parent().hasClass('sds-on-style')){
					_this.parent().removeClass('sds-on-style');
				}else{
					$('.select-d-section').removeClass('sds-on-style');
					_this.parent().addClass('sds-on-style');
				}
			},
			smHide:function(paramtarget){
				var _this = paramtarget;
				_this.parent().parent().removeClass('sds-on-style');
			},
			//--여기서부터 수정 부탁드립니다.
			smSel:function(paramtarget){
				var _this = paramtarget;
				var _thisText = _this.text();
				var _thisVal = _this.val();
				var _thisSection = _this.parent().parent().parent().parent();
				_thisSection.find('.sds-default').text(_thisText);
				_thisSection.find('.sds-value').val(_thisVal);
				_thisSection.removeClass('sds-on-style');
			}
		}
		
		window.onload = function() {
			selectM.init();
		};
		
		//이바돔 열기.	
		$("#ebadom").on('click', function(){
			ebadomPopUp();
		});
		
		function ebadomPopUp(){
			$("#modalPopUp").show();
			
			$("#ebadomPopUp").show();
			$("#mccPopUp").hide();
			$("#dkPopUp").hide();
			$("#webcashPopUp").hide();
			$("#etnewsPopUp").hide();
			$("#cybertelPopUp").hide();
			popUpEvent($("#ebadomPopUp"));
		}
		//mcc 열기.	
		$("#mcc").on('click', function(){
			mccPopUp();
		});
		function mccPopUp(){
			$("#modalPopUp").show();
			
			$("#ebadomPopUp").hide();
			$("#mccPopUp").show();
			$("#dkPopUp").hide();
			$("#webcashPopUp").hide();
			$("#etnewsPopUp").hide();
			$("#cybertelPopUp").hide();
			popUpEvent($("#mccPopUp"));
		}
		//dk 열기.	
		$("#dk").on('click', function(){
			dkPopUp();
		});
		function dkPopUp(){
			$("#modalPopUp").show();
			
			$("#ebadomPopUp").hide();
			$("#mccPopUp").hide();
			$("#dkPopUp").show();
			$("#webcashPopUp").hide();
			$("#etnewsPopUp").hide();
			$("#cybertelPopUp").hide();
			popUpEvent($("#dkPopUp"));
		}
		
		//webcash 열기.	
		$("#webcash").on('click', function(){
			webcashPopUp();
		});
		
		function webcashPopUp(){
			$("#modalPopUp").show();
			
			$("#ebadomPopUp").hide();
			$("#mccPopUp").hide();
			$("#dkPopUp").hide();
			$("#webcashPopUp").show();
			$("#etnewsPopUp").hide();
			$("#cybertelPopUp").hide();
			popUpEvent($("#webcashPopUp"));
		}
		
		//etnews 열기.	
		$("#etnews").on('click', function(){
			etnewsPopUp();
		});
		function etnewsPopUp(){
			$("#modalPopUp").show();
			
			$("#ebadomPopUp").hide();
			$("#mccPopUp").hide();
			$("#dkPopUp").hide();
			$("#webcashPopUp").hide();
			$("#etnewsPopUp").show();
			$("#cybertelPopUp").hide();
			popUpEvent($("#etnewsPopUp"));
		}
		
		//cybertel 열기.	
		$("#cybertel").on('click', function(){
			cybertelPopUp();
		});
		
		function cybertelPopUp(){
			$("#modalPopUp").show();
			
			$("#ebadomPopUp").hide();
			$("#mccPopUp").hide();
			$("#dkPopUp").hide();
			$("#webcashPopUp").hide();
			$("#etnewsPopUp").hide();
			$("#cybertelPopUp").show();
			popUpEvent($("#cybertelPopUp"));
		}
		
		
		//공통 이벤트.
		function popUpEvent(popUpLayer){
			popUpLayer.find("#introBtn").off();
			popUpLayer.find("#introBtn").on('click', function(){
				popUpLayer.find("#introBtn").removeClass("off").addClass("on");
				popUpLayer.find("#methodBtn").removeClass("on").addClass("off");
				popUpLayer.find("#effectBtn").removeClass("on").addClass("off");
				
				popUpLayer.find("#intro").show();
				popUpLayer.find("#method").hide();
				popUpLayer.find("#effect").hide();
			});
			
			popUpLayer.find("#methodBtn").off();
			popUpLayer.find("#methodBtn").on('click', function(){
				popUpLayer.find("#introBtn").removeClass("on").addClass("off");
				popUpLayer.find("#methodBtn").removeClass("off").addClass("on");
				popUpLayer.find("#effectBtn").removeClass("on").addClass("off");
				
				popUpLayer.find("#intro").hide();
				popUpLayer.find("#method").show();
				popUpLayer.find("#effect").hide();
			});
			
			popUpLayer.find("#effectBtn").off();
			popUpLayer.find("#effectBtn").on('click', function(){
				popUpLayer.find("#introBtn").removeClass("on").addClass("off");
				popUpLayer.find("#methodBtn").removeClass("on").addClass("off");
				popUpLayer.find("#effectBtn").removeClass("off").addClass("on");
				
				popUpLayer.find("#intro").hide();
				popUpLayer.find("#method").hide();
				popUpLayer.find("#effect").show();
			});
		}
		
		
		//팝업닫기.
		$("#modalPopUpClose").on('click', function(){
			$("#modalPopUp").hide();
		});
		
		//이전일 경우.
		$("#modalPopUp").find("#prev").on('click', function(){
			if( $("#ebadomPopUp").css("display") == "block"){
				cybertelPopUp();
			}else if( $("#mccPopUp").css("display") == "block"){
				ebadomPopUp();
			}else if( $("#dkPopUp").css("display") == "block"){
				mccPopUp();
			}else if( $("#webcashPopUp").css("display") == "block"){
				dkPopUp();
			}else if( $("#etnewsPopUp").css("display") == "block"){
				webcashPopUp();
			}else if( $("#cybertelPopUp").css("display") == "block"){
				etnewsPopUp();
			}
		});
		
		//다음일 경우.
		$("#modalPopUp").find("#next").on('click', function(){
			if( $("#ebadomPopUp").css("display") == "block"){
				mccPopUp();
			}else if( $("#mccPopUp").css("display") == "block"){
				dkPopUp();
			}else if( $("#dkPopUp").css("display") == "block"){
				webcashPopUp();
			}else if( $("#webcashPopUp").css("display") == "block"){
				etnewsPopUp();
			}else if( $("#etnewsPopUp").css("display") == "block"){
				cybertelPopUp();
			}else if( $("#cybertelPopUp").css("display") == "block"){
				ebadomPopUp();
			}
		});
		
		
		//이메일 체크
		function cmf_emailcheck(chk){
			var pattern = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
			if(!pattern.test( chk  )) return true;
			else return false;
		}
		
		//시작하기
		$("#start").on('click', function(){
			var email = "";
			if( !cmf_emailcheck($("#email").val())){
				location.href="/login.act?BIS_MNGR_SIGNUP=Y&USER_ID="+$("#email").val();
			}else{
				location.href="/login.act?BIS_MNGR_SIGNUP=Y";
			}
		});
		
	});
	</script>

	<!-- slide -->
	<script type="text/javascript" src="/homePage/js/jquery1.9.1.min.js"></script>
	<script type="text/javascript" src="/homePage/js/slide.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$('#slides').slide({
			start:true,
			speed:6000,
			animate: 'horizontal'
		});
	});
	</script>
	<!-- custom scrollbar plugin css -->
	<link rel="stylesheet" href="/homePage/css/jquery.mCustomScrollbar.css">
	<!-- custom scrollbar plugin -->
	<script src="/homePage/js/jquery.mCustomScrollbar.concat.min.js"></script>

</head>
<body>
<!-- wrap -->
	<div class="homepageWp" id="main">
		<!-- header -->
		<div class="hp_header" id="header">
			<div class="hpBx">
				<h1><span style="cursor:pointer;display:inline-block;margin-top: 26px;margin-left:49px;width:100px;height:29px;background-image: url(/homePage/img/bi_flow_wh.png);background-repeat: no-repeat;" onclick="location.href='index.html'" ></span><span class="blind">flow</span></h1><!-- 20171010 수정 -->
				<div class="loginBtnBx">
					<a href="/login.act" class="lbtn01">로그인</a>
					<a href="/login.act?BIS_MNGR_SIGNUP=Y" class="lbtn02">회원가입</a>
				</div>
				<!-- 20171010 수정 -->
				<div class="mlist">
					<a href="/index.html#fullPageWp" class="on">기능소개</a>
					<a href="/index.html#applicWp">활용사례</a>
					<a href="/index.html#reviewWp">리뷰</a>
					<a href="/index.html#surviceWp">요금제</a>
					<a href="/index.html#linkWp">다운로드</a>
					<a href="https://goo.gl/forms/hfyzkxp5cYRNjHyi1" target="blank">컨설팅요청</a>
				</div>
				<!-- //20171010 수정 -->
			</div>
		</div><!-- //header -->

		<!-- free start -->
		<div class="freeStartWp" id="">
			<div class="hpBx">
				<h2>혁신가를 위한 업무용 협업툴</h2>
				<h4>플로우는 협업 스타일을 혁신하고,<br>업무 히스토리가11111 잘 정리될 수 있도록 도와드립니다.</h4>
				<div class="btnBx">
					<a href="/login.act?BIS_MNGR_SIGNUP=Y" class="btn01 arrowleft_wh">무료로 시작</a>
				</div>
				<p class="logintxtLink">이미 사용 중입니다 <a href="/login.act">로그인</a></p>
			</div>
		</div><!-- //free start -->

		<!-- rolling banner -->
		<div class="fullPageWp">
			<div class="hr_alink" id="fullPageWp"></div><!-- 20171010 추가 -->
			<!-- banner -->
			<div class="bannerWp">
				<div class="banner_inner">
					<!-- slider -->
					<div id="slides" class="slider">
						<div class="slide_container">
							<!-- slide1 -->
							<div class="slides slide1">
								<div class="slide_inner">
									<div class="detail">
										<h3>aaa이메일 보다 히스토리가 편리한 '타임라인'</h3>
										<h5>프로젝트 또는 업무과제별로 참여자들이 모여서 타임라인을 통해 커뮤니케이션 함으로써<br>히스토리를 파악하고 정보를 모아 보는데 탁월합니다.</h5>
									</div>
								</div>
							</div><!-- //slide1 -->
							<!-- slide2 -->
							<div class="slides slide2">
								<div class="slide_inner">
									<div class="detail">
										<h3>메신저 앱보다 사생활 보호에 좋은 '채팅'</h3>
										<h5>업무적관련 채팅은 플로우 채팅으로 하세요!</h5>
									</div>
								</div>
							</div><!-- //slide2 -->
							<!-- slide3 -->
							<div class="slides slide3">
								<div class="slide_inner">
									<div class="detail">
										<h3>웹하드 보다 편리하게 '파일공유'</h3>
										<h5>구글드라이브, 드롭박스, iCloud 등 외부 클라우드 서비스와 연동은 물론,<br>데스크탑, 스마트폰 언제 어디서나 파일을 공유하고 확인할 수 있습니다.</h5>
									</div>
								</div>
							</div><!-- //slide3 -->
							<!-- slide4 -->
							<div class="slides slide4">
								<div class="slide_inner">
									<div class="detail">
										<h3>캘린더 앱 보다 빠른 '일정공유'</h3>
										<h5>프로젝트 그룹원, 팀원들에게 일정을 공유하는 가장 쉬운 방법을 제시하고 있으며,<br>미리 알림 기능을 통해서 한번 더 알려주어 서로의 시간을 소중하게 지킬 수 있습니다.</h5>
									</div>
								</div>
							</div><!-- //slide4 -->
							<!-- 20171010 추가 slide5 -->
							<div class="slides slide5">
								<div class="slide_inner">
									<div class="detail">
										<h3>11업무 내용을 명확히 알 수 있는 '업무처리'</h3>
										<h5>업무의 요청단계부터 완료단계까지 유기적인 협업이 가능하며,<br>내업무, 내가 요청한 업무의 진행상태를 한눈에 파악할 수 있습니다.</h5>
									</div>
								</div>
							</div><!-- //slide5 -->
						</div>

						<!-- 이전/다음 버튼 -->
						<div class="btn_prevnext">
							<a class="btn_prev"><span class="blind"></span></a>
							<a class="btn_next"><span class="blind"></span></a>
						</div><!-- //이전/다음 버튼 -->
					</div><!-- // slider -->
				</div>
			</div><!-- //banner -->
		</div><!-- //rolling banner -->

	
		<!-- survice plan -->
		<div class="surviceWp">
			<div class="hr_alink" id="surviceWp"></div><!-- 20171010 추가 -->
			<div class="hpBx">
				<h3>플로우 요금제</h3>
				<h5>플로우 비즈니스로 업무 능률을 한 단계 끌어 올리세요!</h5>
				<!-- 20171010 삭제 <div class="btnBx">
					<a href="#none" class="btn01">자세히 보기</a>
				</div> -->
			</div>
		</div><!-- //survice plan -->

		<!-- price 20171010 수정 -->
		<div class="priceWp">
			<div class="hpBx">
				<!-- 베이직 -->
				<dl class="free">
					<dt>
						<h3>베이직</h3>
						<h4><strong>0</strong>원</h4>
						<p></p>
						<a href="/login.act?JOIN=Y">회원가입</a>
					</dt>
					<dd>
						<ul class="bullist">
							<li>프로젝트 3개까지 개설 가능</li>
							<li>1회 파일 업로드 20MB</li>
							<li>총 저장 용량 1GB 제공</li>
							<li>자료 검색기간 3개월 제한</li>
						</ul>
					</dd>
				</dl>
				<!-- 프리미엄 -->
				<dl class="prem">
					<dt>
						<h3>프리미엄</h3>
						<h4><strong>9,900</strong>원</h4>
						<p>매월</p>
						<a href="/login.act?JOIN=Y">구매하기</a>
					</dt>
					<dd>
						<ul class="bullist">
							<li>프로젝트 개설 무제한</li>
							<li>1회 파일 업로드 300MB</li>
							<li>총 저장 용량 100GB 제공</li>
							<li>자료 검색기간 무기한</li>
							<li>1TB 단위로 용량 추가구매<br><a href="https://goo.gl/forms/hfyzkxp5cYRNjHyi1" target="blank">(별도문의)</a></li>
						</ul>
					</dd>
				</dl>
				<!-- 비즈니스 -->
				<dl class="busi">
					<dt>
						<h3>비즈니스</h3>
						<h4><strong>30,000</strong>원</h4>
						<p>10명 초과 시 +3,900원 / 인당 (월)</p>
						<a href="/login.act?BIS_MNGR_SIGNUP=Y">1개월 체험하기</a>
					</dt>
					<dd>
						<ul class="bullist">
							<li>프로젝트 개설 무제한</li>
							<li>1회 파일 업로드 300MB</li>
							<li>총 저장 용량 500GB 제공 (~10명)</li>
							<li>11인 이상시 User당 +20GB 제공</li>
							<li>자료 검색기간 무기한</li>
							<li>팀 전용 도메인(URL) 제공</li>
							<li>팀 관리자 기능 </li>
							<li>1TB 단위로 용량 추가구매 <br><a href="https://goo.gl/forms/hfyzkxp5cYRNjHyi1" target="blank">(별도문의)</a></li>
						</ul>
					</dd>
				</dl>
				<!-- 엔터프라이즈 -->
				<dl class="entp">
					<dt>
						<h3>엔터프라이즈</h3>
						<h4>별도협의 / 매월</h4>
						<p></p>
						<a href="https://goo.gl/forms/hfyzkxp5cYRNjHyi1" target="blank" >문의하기</a>
					</dt>
					<dd>
						<ul class="bullist">
							<li>프로젝트 개설 무제한</li>
							<li>1회 파일 업로드 300MB</li>
							<li>용량 무제한 제공</li>
							<li>자료 검색기간 무기한</li>
							<li>SSO 연동 </li>
							<li>조직도 연동</li>
							<li>팀 전용 도메인(URL) 제공</li>
							<li>팀 관리자 기능</li>
							<li>그룹웨어 연동 API 제공</li>
						</ul>
					</dd>
				</dl>
			</div>
		</div><!-- //price 20171010 수정 -->

		
		<!-- now start -->
		<div class="nowstartWp">
			<div class="hpBx">
				<h3>지금 시작하세요</h3>
				<div class="iptBx">
					<input id="email" type="text" placeholder="이메일을 입력하세요">
					<a id="start">시작하기</a>
				</div>
				<p class="logintxtLink">이미 사용 중입니다 <a href="/login.act">로그인</a></p>
			</div>
		</div><!-- //now start -->

		<!-- footer -->
		<div class="hp_footer">
			<div class="hpBx">
				<h1><span class="blind">Madras check</span></h1>
				<ul class="sitemap">
					<li class="first"><a href="/contact.html">회사소개</a></li>
					<li><a target="flowBlog" href="http://blog.flow.team">블로그</a></li>
					<li><a target="flowFacebook" href="https://www.facebook.com/flow.team/">페이스북</a></li>
					<li><a href="/news.html">언론보도</a></li>
					<li><a target="flowFaq" href="https://support.flow.team ">FAQ</a></li>
					<li><a target="flowMail" href="/contact.html#contackMail ">문의메일</a></li>
				</ul>
				<p class="copyright">@2018 Madras check Co.,Ltd | (주)마드라스체크 | 서울시 서초구 강남대로 311 드림플러스 1114호 | <a href="/privacy.html">개인정보취급방침</a> | <a href="/terms.html" class="txt_uline">이용약관</a></p>
				<p class="copyright"><strong>대표 이학준</strong> | 사업자등록번호: 189-87-00172 | 통신판매업신고번호: 2017-서울강남-03869 | 유선전화: 02-3448-6333 | 이메일: help@flow.team</p>

			</div>
		</div><!-- //footer -->

	</div><!-- //wrap -->
	
	
	
	<!-- popup -->
	<div class="modal_pop_wrap" id="modalPopUp" style="display:none;">
		<div class="mdp_bg"></div>

		<!-- popup wrap -->
		<div class="modal_popup">
			<a id="modalPopUpClose" class="btn_pop_close"><span class="blind">닫기</span></a>
			<!-- popup cont -->
			<div class="modal_pop_cont">



				<!-- 이전/다음 버튼 -->
				<div class="btn_pop_contrl">
					<a id="prev" class="btn_pop_pre"><span class="blind">이전</span></a>
					<a id="next" class="btn_pop_nxt"><span class="blind">다음</span></a>
				</div>
			</div>
			<!-- //popup cont -->
		</div>
		<!-- //popup wrap -->
	</div>
	<!-- //popup -->

</body>
</html>