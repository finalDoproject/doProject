<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script>
    <script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script>
    <script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script>
    <meta charset='UTF-8'>
    <meta name="robots" content="noindex">
    <link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico"
    />
    <link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg"
        color="#111" />
    <link rel="canonical" href="https://codepen.io/tanjalehner/pen/bgzpQx?limit=all&page=91&q=contact+" />
<title>채팅방</title>
<style class="cp-pen-styles">
        /* ------ GENERAl LAYOUT ------ */

        * {
            font-family: 'Roboto', sans-serif;
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }

        body {
            background: #dbdbdb;
        }

        i {
            width: 60px;
            margin: auto;
        }

        /* ------ FONTS ------ */

        .font-name {
            color: white;
            font-size: 1em;
            font-weight: inherit;
            padding-bottom: 3px;
        }

        .font-preview {
            color: white;
            font-size: 0.7em;
            font-weight: inherit;
        }

        .font-online {
            color: white;
            font-size: 0.8em;
            font-weight: inherit;
        }

        .green-background {
            background: #009688;
            height: 130px;
            width: 100%;
            position: fixed;
            top: 0;
            z-index: -100;
        }

        .wrap {
            display: flex;
            height: 100vh;
            min-width: 600px;
            max-width: 1200px;
            margin: auto;
            box-shadow: 0 2px 2px #aaaaaa;
        }

        /* ------ LEFT SIDE ------ */

        .left {
            width: 250px;
        }

        .profile {
            width: 100%;
            height: 60px;
            background: #f98d70;
            display: flex;
            justify-content: space-between;
        }

        .profile img {
            width: 40px;
            height: 40px;
            margin: 10px;
            border-radius: 50%;
        }

        .icons {
            color: #777777;
            display: flex;
        }

        .wrap-search {
            width: 100%;
            height: 45px;
            background: #fbfbfb;
            display: flex;
        }

        .search {
            width: calc(100% - 20px);
            height: 30px;
            background: #ffffff;
            margin: auto;
            border: 1px solid #eeeeee;
            border-radius: 5px;
            display: flex;
        }

        .search i {
            width: 60px;
        }

        .search i,
        .wrap-message i {
            color: #aaaaaa;
            text-align: center;
        }

        .input-search {
            width: 100%;
            border: none;
        }

        .input-search:focus {
            outline: none;
        }

        .contact-list {
            background-color: #f98d70;
            width: 100%;
            height: calc(100% - 105px);
            overflow-y: auto;
        }

        .contact,
        .active-contact,
        .new-message-contact {
            height: 70px;
            background-color: #f98d70;
            display: flex;
        }

        .contact img,
        .active-contact img,
        .new-message-contact img,
        .chat img {
            width: 50px;
            height: 50px;
            margin: 10px;
            border-radius: 50%;
        }
        
        .chat img {
            float:left;
        }

        .active-contact {
            background-color: #ebebeb;
        }

        .contact:hover,
        .new-message-contact:hover {
            background-color: 	#f27d5d;
        }

        .new-message-contact {
            font-weight: bold;
        }

        .contact-preview {
            width: 100%;
            height: 70px;
            display: flex;
            overflow: hidden;
        }

        .contact-text {
            height: 60px;
            margin: auto 0;
            overflow: hidden;
        }

        .contact-time {
            width: 100px;
            color: white;
            font-size: 0.8em;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            padding: 10px;
        }

        .new-message {
            background: #09d261;
            border-radius: 50%;
            width: 20px;
            height: 20px;
            display: flex;
            margin: auto;
            flex-direction: column;
            color: white;
        }

        .new-message p {
            margin: auto;
        }

        /* ------ RIGHT SIDE ------ */

        .right {
            min-width: calc(100% - 250px);
        }

        .chat-head {
            background-color: #f98d70;
            width: 100%;
            height: 60px;
            display: flex;
        }

        .chat-head img {
            width: 40px;
            height: 40px;
            margin: 10px;
            border-radius: 50%;
        }

        .chat-head i {
            color: #aaaaaa;
            width: 60px;
            margin: auto;
            text-align: center;
        }

        #close-contact-information {
            display: none;
        }

        .chat-name {
            width: 100%;
            margin: auto;
        }

        .wrap-chat {
            height: calc(100% - 120px);
            display: flex;
        }

        .chat {
            background-color: #e5ddd5;
            background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/1089577/background.png);
            width: 100%;
            padding: 0px 10%;
            padding-top: 7px;
            overflow-y: auto;
        }

        .information {
            width: 100%;
            position: relative;
            background: #f7f7f7;
            display: none;
            flex-direction: column;
            overflow: auto;
        }

        .information div {
            background: #ffffff;
            padding: 10px;
            margin-bottom: 20px;
        }

        .information img {
            width: 200px;
            height: 200px;
            margin: 20px auto;
            border-radius: 50%;
            float: left;
        }

        .information h1 {
            color: #009688;
            font-size: 14px;
            margin-bottom: 5px;
        }

        .listGroups {
            display: flex;
            margin: 0px !important;
        }

        .listGroups img {
            width: 40px;
            height: 40px;
            margin: 0px 10px 0px 0px;
        }

        .listGroups p {
            margin: auto 0px;
        }

        /* ------ CHAT ------ */

        .chat-bubble {
            border-radius: 7px;
            box-shadow: 0 2px 2px rgba(0, 0, 0, 0.05);
            padding: 5px 7px;
            width: 350px;
            max-width: 100%;
            /* position: relative; */
        }

        .you {
            background: #ffffff;
            margin: 0px auto 10px 0px;
            float:left;
            margin-top:10px;
        }

        .me {
            background: #dcf8c6;
            margin: 0px 0px 10px auto;
            clear:both;
        }

        .your-mouth {
            width: 0;
            height: 0;
            border-bottom: 10px solid white;
            border-left: 10px solid transparent;
            position: absolute;
            bottom: 10px;
            left: -10px;
        }

        .my-mouth {
            width: 0;
            height: 0;
            border-bottom: 10px solid #dcf8c6;
            border-right: 10px solid transparent;
            position: absolute;
            bottom: 10px;
            left: 100%;
        }

        .content {
            margin: 0.5em 0;
            line-height: 120%;
            font-size: 0.9em;
        }

        .content img {
            width: 100%;
        }

        .time {
            color: rgba(0, 0, 0, 0.4);
            font-size: 0.6em;
            text-align: right;
            margin-top: -10px;
        }

        .pink {
            color: #EE33AA;
        }

        .green {
            color: #44FF66;
        }

        .orange {
            color: #FF8811;
        }

        .wrap-message {
            width: 100%;
            height: 60px;
            background: #f1f1f1;
            display: flex;
        }

        .message {
            width: 100%;
            height: 45px;
            background: #ffffff;
            margin: auto;
            margin-left: 5px;
            border: 1px solid #eeeeee;
            border-radius: 5px;
            display: flex;
        }

        .input-message {
            width: 100%;
            margin: 0px 10px;
            border: none;
        }

        .input-message:focus {
            outline: none;
        }

        /* ------ SCROLLBAR ------ */

        body::-webkit-scrollbar,
        .contact-list::-webkit-scrollbar,
        .chat::-webkit-scrollbar,
        .information::-webkit-scrollbar {
            width: 0.4em;
            height: 0.4em;
        }

        body::-webkit-scrollbar-thumb,
        .contact-list::-webkit-scrollbar-thumb,
        .chat::-webkit-scrollbar-thumb,
        .information::-webkit-scrollbar-thumb {
            background-color: rgba(0, 0, 0, 0.2);
        }

        /* ------ MEDIA QUERIES ------ */

        @media (min-width: 1200px) {
            .wrap {
                margin-bottom: 2vh;
                margin-top: 25px;
                height: calc(98vh - 25px);
            }
        }

        @media (max-width: 600px) {
            .wrap {
                height: calc(100vh - 0.4em);
            }
        }
    </style>
</head>
<body>
<html>

    <head>
        <meta charset="UTF-8">
        <title>Title</title>
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <script src="https://use.fontawesome.com/1c6f725ec5.js"></script>
    </head>

    <body>
        <div class="wrap">
            <section class="left" style="background: #f98d70">
                <!-- <div class="profile">
								<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1089577/user.jpg">
								<div class="icons">
										<i class="fa fa-commenting fa-lg" aria-hidden="true"></i>
										<i class="fa fa-bars fa-lg" aria-hidden="true"></i>
								</div>
                        </div> -->
                <!-- 대화방 검색 -->
                <div class="profile">
                    <div class="search">
                        <i class="fa fa-search fa" aria-hidden="true"></i>
                        <input type="text" class="input-search" placeholder="대화방을 검색하세요">
                    </div>
                </div>
                <!-- 참여자 리스트 화면 -->
                <div class="contact-list">
                    <!-- 프로젝트 단체방 -->
                    <div class="contact" id="1">
                        <img src="" alt="logo">
                        <div class="contact-preview">
                            <div class="contact-text">
                                <h1 class="font-name">DOPE</h1>
                            </div>
                        </div>
                        <div class="contact-time">
                            <p>1주 전</p>
                        </div>
                    </div>
                    <!-- 프로젝트 참여자 목록 -->
                    <div class="contact" id="2">
                        <img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="profilpicture">
                        <div class="contact-preview">
                            <div class="contact-text">
                                <h1 class="font-name">이순신</h1>
                                <p class="font-preview">온라인</p>
                            </div>
                        </div>
                        <div class="contact-time">
                            <p>17:54</p>
                        </div>
                    </div>
                    <div class="contact" id="3">
                        <img src="https://bootdey.com/img/Content/avatar/avatar4.png" alt="profilpicture">
                        <div class="contact-preview">
                            <div class="contact-text">
                                <h1 class="font-name">김유신</h1>
                                <p class="font-preview">온라인</p>
                            </div>
                        </div>
                        <div class="contact-time">
                            <p>3일 전</p>
                        </div>
                    </div>
                    <div class="contact" id="4">
                        <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="profilpicture">
                        <div class="contact-preview">
                            <div class="contact-text">
                                <h1 class="font-name">홍길동</h1>
                                <p class="font-preview">온라인</p>
                            </div>
                        </div>
                        <div class="contact-time">
                            <p>1일 전</p>
                        </div>
                    </div>
                    <div class="contact" id="5">
                        <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="profilpicture">
                        <div class="contact-preview">
                            <div class="contact-text">
                                <h1 class="font-name">신사임당</h1>
                                <p class="font-preview">오프라인</p>
                            </div>
                        </div>
                        <div class="contact-time">
                            <p>20:11</p>
                        </div>
                    </div>
                </div>
            </section>

            <section class="right">
                <div class="chat-head">
                    <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="profilpicture">
                    <div class="chat-name">
                        <h1 class="font-name">홍길동</h1>
                        <p class="font-online">온라인</p>
                    </div>
                </div>
                <div class="wrap-chat">
                    <!-- 채팅 내용 화면 -->
                    <div class="chat">
                        <div>
                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="profilpicture">
                            <div class="chat-bubble you">
                             <!-- <div class="your-mouth"></div> -->
                                <div class="content">안녕하세요.
                                    <br> 만나서 반갑습니다.
                                    <br> 저는 홍길동 입니다.
                                </div>
                                <div class="time">17:24</div>
                            </div>
                        </div>
                        <div class="chat-bubble me" id="myChat">
                            <!-- <div class="my-mouth"></div> -->
                            <div class="content">네 저도 반갑습니다</div>
                            <div class="time">17:38</div>
                        </div>
                        <div>
                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="profilpicture">
                            <div class="chat-bubble you">
                                <!-- <div class="your-mouth"></div> -->
                                <div class="content">그럼 수고하세요.
                                </div>
                                <div class="time">17:39</div>
                            </div>
                        </div>
                    </div>
                    <div class="information"></div>
                </div>
                <!-- 메시지 입력 화면 -->
                <div class="wrap-message">
                    <div class="message">
                        <input type="text" class="input-message" name="chatContent" id="chatContent" onkeydown="keydown()" placeholder="내용을 입력해주세요">
                    </div>
                    <i class="fa fa-paper-plane" aria-hidden="true" id="submit"></i>
                </div>
            </section>
        </div>
    </body>
    <script>
        function keydown () {
            if(event.keyCode==13) {
                // $('.chat').appendTo($('#myChat').clone());
                alert("엔터");
            }
        }
    </script>

    </html>
</body>
</html>