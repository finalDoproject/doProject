<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업무 작성 폼</title>
<!-- jQuery UI CSS파일 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<!-- jQuery 기본 js파일 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<!-- jQuery UI 라이브러리 js파일 -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
<style>
body{
	font-size:14px;color:#505050;
	font-family:Apple SD Gothic Neo, Malgun Gothic, '돋움', '굴림', Arial, sans-serif;
	src: url('../font/MalgunGothic.eot');
	src: url('../font/MalgunGothic.eot?#iefix') format('embedded-opentype'),
	url('../font/MalgunGothic.woff') format('woff'),
	url('../font/MalgunGothic.ttf') format('truetype');
	overflow-y: scroll;
}
input,select,textarea,button{
	margin:0;vertical-align:middle;border:1px solid #e7e7e7;
	font-family:Apple SD Gothic Neo, Malgun Gothic, '돋움', '굴림', Arial, sans-serif;
	src: url('../font/MalgunGothic.eot');
	src: url('../font/MalgunGothic.eot?#iefix') format('embedded-opentype'),
	url('../font/MalgunGothic.woff') format('woff'),
	url('../font/MalgunGothic.ttf') format('truetype');
}

/* input 기본 스타일 초기화 */
input[type=text],
input[type=password],
input[type=number],
input[type=email],
input[type=phone],
button {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	background:none;
	border:none;
	font-family:NotoSansCJKkr !important;
}

/*업무진행상태*/
.workwriteWrap button{cursor:pointer;}
button, a{cursor:pointer;}
.workTab{margin:7px 0 0 0;display:inline-block;height:32px;overflow:hidden;}
.workTab button{
	display:inline-block;
	vertical-align:top;
	padding-bottom:2px;margin-left:-1px;
	width:61px;height:32px;line-height:14px;
	font-size:14px;color:#969696;text-align:center;
	background-color:#fff;border:1px solid #f0f1f3;
}

.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.tab1 {
    background-color: white; 
    color: black; 
    border: 2px solid #4CAF50;
}

.tab1:hover {
    background-color: #4CAF50;
    color: white;
}

.tab2 {
    background-color: white; 
    color: black; 
    border: 2px solid #008CBA;
}

.tab2:hover {
    background-color: #008CBA;
    color: white;
}

.tab3 {
    background-color: white; 
    color: black; 
    border: 2px solid #f44336;
}

.tab3:hover {
    background-color: #f44336;
    color: white;
}

.tab4 {
    background-color: white;
    color: black;
    border: 2px solid #e7e7e7;
}

.tab4:hover {background-color: #e7e7e7;}

.tab5 {
    background-color: white;
    color: black;
    border: 2px solid #555555;
}

.tab5:hover {
    background-color: #555555;
    color: white;
}

</style>
<script>

$(function() {
    $( ".START_DT" ).datepicker({
    	onClose:function(selectedDate){
    		$(".END_DT").datepicker("option","minDate",selectedDate);
    	}
    });
    
    $(".END_DT").datepicker({
    	onClose:function(selectedDate){
    		$(".START_DT").datepicker("option","maxDate",selectedDate);
    	}
    });
});

</script>

</head>
<body>
	<div class="post_write_wrap">
	<div class="post_dnd_ly" style="display:none">	
	<div class="post_dnd_ly_po off">		
	<div class="status_bar" style="width:41%;"></div>		
	<div class="txt">첨부할 파일, 이미지 등을 여기에 끌어다 놓으세요.</div>		
	<div class="pctfilenm">	<strong>41%</strong><span>#콜라보모바일_Ver2.3.0_160105.pdf</span></div>	
	</div>
	</div>
	
	<div class="post_write_tab">											
	<ul>																				
	<li class="ico4 on"><a>업무</a><span></span></li>					
	<li class="ico3 off"><a>일정</a><span></span></li>								
	</ul>															
	</div>															
	<div class="pst_write_bx" id="collabo_427890">	
	<div class="workwriteWrap mgb30" style="min-height: 120px;">
	<!-- 업무명 -->
	<div class="titleBx">
		<input type="text" name="TASK_NM" placeholder="업무명을 입력하세요" maxlength="500">
		<span id="TASK_NM_READ_ONLY" class="titleReadOnly" style="display:none;"></span>
		<span id="TASK_SRNO" class="num" style="display: none;">업무번호 10023</span>
	</div>
	
	<a id="GO_WORK_FLOW" class="goWorkFlow" style="display: none;">이곳을 클릭하여 해당 글로 이동할 수 있습니다.</a>
	<!-- 업무내용 -->
	<div class="workwriteCont line-fold"><!-- 더보기 close class="line-fold" / 더보기 open class="line-open" -->
		<!-- line1 -->
		<div class="line">
			<label class="icon1"><span class="blind">상태</span></label>
			<div class="workTab">
				<button class="tab1">요청</button><button class="tab2">진행</button><button class="tab5">피드백</button><button class="tab3">완료</button><button class="tab4">보류</button>
			</div>
		</div>
		<!-- line2 -->
		<div class="line" id="WORKER_LINE">
			<label class="icon2"><span class="blind">담당자</span></label>
			<div id="workerTagLayer" class="nameBx">
				
				<span id="workerTagSelected"></span>
				<button class="namePlus" style="display:none;">담당자 변경</button>
				<div class="txt_add_nm">
					<span class="txt_add_nm_in">
						<span role="status" aria-live="polite" class="ui-helper-hidden-accessible"></span><input name="WORKER" type="text" placeholder="담당자 추가" class="ui-autocomplete-input" autocomplete="off">
					</span>
					<!-- user layer -->
					<div id="workerSelectLayer" class="mentions-input" style="top: 21px; left: -1px; min-width: 170px; display: none;"><!-- 20170407 -->
						<ul tabindex="0" class="user_list sizeSamll ui-autocomplete ui-front ui-menu ui-widget ui-widget-content ui-corner-all" style="left: 0px; top: 0px; width: 130% !important; display: block;"><!-- 20170407 -->
						</ul>
					</div>
					<!-- //user layer -->
							
				</div>										
			</div>
			
			<div id="workerSelectItemLayer" style="display:none;">
				<li class="ui-menu-item" role="presentation">
					<a tabindex="-1" class="ui-corner-all" id="ui-id-45">
						<div class="photo_wrap">
							<!-- <div class="photo_po"><img width="40" height="40" src="/design2/img_rn/img_photo_null32.png" onerror="this.src='/design2/img_rn/img_photo_null32.png'"></div> -->
						</div>
						<p><strong></strong></p>
					</a>
				</li>
			</div>
			
			<div id="workerTagItemLayer" style="display:none;">
				<div class="nameTag">
					<!-- <img src="/design2/img_rn/img_photo_null32.png" alt="" onerror="this.src='/design2/img_rn/img_photo_null32.png'"> -->
					<strong></strong>
					<button><span class="blind">삭제</span></button>
				</div>
			</div>
				
				
		</div>
		<!-- line3 -->
		<div class="line" id="START_DT_LINE">
			<label class="icon3"><span class="blind">시작일</span></label>
			<div class="workdate" style="display: block;">
				<input class="START_DT" start_dt="" type="text" placeholder="시작일 추가" id="dp1545179837849"><button id="START_DT_DEL" style="margin-left: -8px;display:none;" class="workdateDel"><span class="blind">삭제</span></button>
				<span id="START_DT_CNTN" class="c_red" style="display:none;">시작일이 마감일보다 이후 날짜로 되어 있습니다.</span>
			</div>
		</div>
		<!-- line4 -->
		<div class="line" id="END_DT_LINE">
			<label class="icon4"><span class="blind">마감일</span></label>
			<div class="workdate" style="display: block;">
				<input class="END_DT" end_dt="" type="text" placeholder="마감일 추가" id="dp1545179837850"><button id="END_DT_DEL" style="margin-left: -8px; display:none;" class="workdateDel"><span class="blind">삭제</span></button>
				<span id="END_DT_CNTN" class="c_red" style="display:none;">마감일이 시작일 이전 날짜로 되어 있습니다.</span><span id="END_DT_OVERDUE" class="c_red" style="display:none;">마감기한이 지났습니다.</span>
			</div>
		</div>
		<!-- line5 -->
		<div class="line" id="PROGRESS_LINE">
			<label class="icon5"><span class="blind">진척도</span></label>
			<a class="workPrgrs">
				<div class="workPrgrs_bg"><!-- 20170407 수정 -->
					<strong id="PROGRESS_PER" class="txt"></strong>
					<span id="PROGRESS" class="bar " style="right:100%;"></span><!-- progress bar 100%일때 추가 class="color100p" -->
					<!-- toltip -->
					<div class="pcnt0" style="width:5%;display:block"><span class="pcnt"><button>0%</button></span></div>
					<div class="pcnt20" style="left:5%;"><span class="pcnt"><button>20%</button></span></div><!-- bar style="right:80%;" -->
					<div class="pcnt40"><span class="pcnt"><button>40%</button></span></div><!-- bar style="right:60%;" -->
					<div class="pcnt60"><span class="pcnt"><button>60%</button></span></div><!-- bar style="right:40%;" -->
					<div class="pcnt80"><span class="pcnt"><button>80%</button></span></div><!-- bar style="right:20%;" -->
					<div class="pcnt100"><span class="pcnt"><button>100%</button></span></div><!-- bar style="right:0;" -->
				</div><!-- 20170407 수정 -->
			</a>
		</div>
		
		<!-- line6 -->
		<div class="line" id="PRIORITY_LINE">
			<label class="icon6"><span class="blind">우선순위</span></label>
			<div class="imptc">
				<input type="text" name="imptcInput" placeholder="우선순위 선택" style="display: block;">
				<span id="PRIORITY" class="lv1" style="display: none;">낮음</span>
				<button id="PRIORITY_DEL" style="margin-left:-1px;display:none;" class="workdateDel"><span class="blind">삭제</span></button>
				<!-- level layerpopup -->
				<div id="PRIORITY_LAYER" class="imptc_ly" style="display: none;">
					<ul>
						<li><button class="lv1" data="0">낮음</button></li>
						<li><button class="lv2" data="1">보통</button></li>
						<li><button class="lv3" data="2">높음</button></li>
						<li><button class="lv4" data="3">긴급</button></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- 더보기버튼 -->
		<!-- <button class="workmore">항목 추가 입력</button> -->
	</div>
	</div>	
	
	<!-- 최초화면툴팁layer -->	
	<div class="red_ttip_ly" id="postTtip" style="display:none;"><div class="po"><span class="tail"></span><p class="txt_r">내용을 입력하세요.</p></div></div>	
	<div class="red_ttip_ly" id="postTtipTask" style="display:none;"><div class="po"><span class="tail"></span><p class="txt_r">업무명을 입력하세요.</p></div></div>	
	<!-- //최초화면툴팁layer -->
	
	<div class="mentions-input" style="display: block;">
	<div class="highlighter" 
	style="white-space: pre-wrap; 
	overflow-wrap: break-word; 
	margin: 0px; padding: 0px; 
	border-width: 0px; 
	font-size: 14px; 
	font-style: normal; 
	font-family: &quot;Apple SD Gothic Neo&quot;, &quot;Malgun Gothic&quot;, 돋움, 굴림, Arial, sans-serif; 
	font-weight: 400; 
	line-height: 23px; 
	box-sizing: content-box;">
	<div class="highlighter-content"></div>
	</div>
	
	<span role="status" aria-live="polite" class="ui-helper-hidden-accessible"></span>
	<textarea cols="" rows="" onkeyup="fn_textAreaResize(this);" 
	class="mentions input ui-autocomplete-input" 
	style="line-height: 23px; 
	background-color: transparent; 
	height: 76px;" 
	placeholder="글을 작성하세요." 
	autocomplete="off"></textarea>
	<input type="hidden" value="">
	<ul class="user_list ui-autocomplete ui-front ui-menu ui-widget ui-widget-content ui-corner-all" id="ui-id-49" tabindex="0" style="display: none;"></ul></div>	
	<div class="todo-area" style="display:none;"></div>	
	<div class="schd-area" style="display:none;"></div>	
	<div class="liveurl-loader"></div>	
	<div class="liveurl-area"></div>	
	
	<!-- 사진 -->	
	<div class="photo_loll_wrap" name="COLABO_IMG_BOX" style="display:none;"><div class="photo_loll_fix"><ul name="COLABO_PIC_UL"></ul></div></div>	
	<!-- //사진 -->	
	
	<!-- 파일 -->	
	<div class="filedown_bx" name="COLABO_FILE_BOX" style="display:none;"></div>	
	<!-- //파일 --></div>
	
	<div class="collabo_file_box" style="display:none;" name="COLABO_FILE_BOX"><dl><dd><ul name="COLABO_ATCH_UL"></ul></dd></dl></div>
	<div class="pst_btn_bx" style="height: 24px;">	<span class="btn app_addfile">		
	<a title="첨부파일" class="fileicon off">파일첨부</a><!--  업로드전 -->		<!-- <a title='첨부파일' class='on'></a>  업로드완료후 -->		<!-- 파일첨부 layerpopup -->		
	<div class="layerstyle1" style="bottom: 32px; left: -21px; display: none;"><!-- 수정 -->			
	<div class="layerstyle1_po">				
	<span class="tail_btm" style="left:23px;"></span><!-- 수정 -->				
	<ul class="icon_set_list2">					
	<li class="p_icon1"><a onclick="_fn_openAtchPopup(this, 'fn_Bb_atchPopup_CALLBACK', 'collabo_427890');">PC에서 올리기</a></li>					
	<li class="p_icon5"><a onclick="_openDropbox('collabo_427890')">드롭박스에서 가져오기</a></li>					
	<li class="p_icon4"><a onclick="_openGoogleDrive('collabo_427890')">구글 드라이브에서 가져오기</a></li>				</ul>			</div>		</div>		
	<!-- //파일첨부 layerpopup -->	</span>	<span class="btn app_pic">		
	<a title="이미지등록" class="imageicon off">이미지첨부</a><!--  업로드전 -->		<!-- <a title='사진등록' class='on'></a>  업로드완료후 -->		<!-- 파일첨부 layerpopup -->		
	<div class="layerstyle1" style="bottom: 32px; left: -21px; display: none;"><!-- 수정 -->			
	<div class="layerstyle1_po">				
	<span class="tail_btm" style="left:23px;"></span><!-- 수정 -->				
	<ul class="icon_set_list2">					
	<li class="p_icon1"><a onclick="_fn_openAtchPopup(this, 'fn_Bb_picPopup_CALLBACK', 'collabo_427890', 'img');">PC에서 올리기</a></li>					
	<li class="p_icon5"><a onclick="_openDropbox('collabo_427890')">드롭박스에서 가져오기</a></li>					
	<li class="p_icon4"><a onclick="_openGoogleDrive('collabo_427890')">구글 드라이브에서 가져오기</a></li>				
	</ul>			
	</div>		
	</div>		
	<!-- //파일첨부 layerpopup -->	</span>	
	<div class="right">		
	<a class="btn_style1" id="insertFlow" onclick="fn_insertCollaboCommt('427890');"><span>올리기</span></a>	
	</div>
	</div>
	</div>
</body>
</html>