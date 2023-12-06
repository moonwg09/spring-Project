<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../resources/css/chatting.css">
    <script src="https://kit.fontawesome.com/a91a455094.js" crossorigin="anonymous"></script>
    <script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
    <title>감귤 채팅</title>
</head>
<body>


  
  <div class="container">
   <div class="root">
        <div class="root_header" >   
            <a href="/main">
                <img src="../resources/img/logo.jpg" alt="당근 로고" class="headerImg" style="width: 70px; height: 40px;">
            </a>
            <button class="header_Nickname">
            <img src="../resources/img/프사.png" alt="프로필 사진" class="headerProfile" style="width: 40px; height: 40px;">
            <!--사용자 닉네임-->
            <div class="nick-area">
                닉네임
            </div>
            </button>
        <!--root header 끝-->
        </div>
        <!--chat 시작점-->  
        <main class="body">
          
            <div class="point_body" style="display: flex;">
                <div></div>
                <div class="pointbody1" >
                    <nav class="slider">
                        <img src="../resources/img/프사.png" alt="프로필 사진" class="slider_Profile">
                    </nav>
                    <nav class="slider_b">
                        <div class="NickBox">
                            <!--사용자 닉네임-->
                            <div class="nick-area">
                                닉네임
                            </div>
                            <ul tabindex="0" role="list" aria-label="내 채널 리스트" class="chaanel" >
                                <li class="user1">
                                    <a class="user1_link" href="#">
                                      <div class="profile-wrapper">
                                        <img class="profile-image" src="../resources/img/프사.png" alt="profile">
                                      </div>
                                      <div class="chat_view">
                                        <div class="preview-title-wrap">
                                          <span class="preview-nickname">다산h</span>
                                          <div class="sub-text">
                                            <span>다산1동</span>
                                            <span> · </span>
                                            <span>1년 전</span>
                                          </div>
                                        </div>
                                        <div class="preview-description">
                                          <span class="description-text">네</span>
                                        </div>
                                      </div>
                                      <img src="../resources/img/고기.png" class="preview-image" alt="글 제목">
                                    </a>
                                  </li>
                                <!-- 다른 목록 항목들 -->
                              </ul>
                        </div>
                    </nav>
                </div>
                  <!-- 채팅 섹션 -->
  <section class="catting_se">
    <!-- 채팅 내용 -->
    

        <div class="chat-normal-room">
          <div class="room1">
            <div class="room2">

                <!--프로필 사진-->
              <div class="chat-header-profile">
                <img class="chat-header-image" src="../resources/img/프사.png" alt="호호홓">
                <div class="main-title">
                  <span>호호홓</span>
                  <span class="temperature">37.5°C</span>
                </div>
              </div>
            </div>
            <!--판매 상세 페이지 링크-->
            <a href="#" target="_blank" rel="noreferrer" class="sale_link">
              <div class="sale_bottom">
                <img class="article-image" src="../resources/img/profile.png" alt="판매 제목">
                <div class="reserved-main">
                  <div>에어팟 2세대 본체 판매합니다</div>
                  <div class="reserved-price">20,000원</div>
                </div>
                <div>
                  <span class="reserve-button-closed">거래완료</span>
                </div>
              </div>
            </a>



            <!--채팅 시작-->
            <div class="message-list" tabindex="0" role="region" aria-label="메시지 리스트">
                <div class="day-divider">
                    <div class="date-text">2022년 11월 10일</div>
                </div>
                </div>
                
                <div class="chat_wrap">

					<div id="chat"></div>
					<script id="temp" type="text/x-handlebars-template">
      {{#each .}}
      <div class="{{printLeftRight sender}}">
      	<div class="sender" >
			{{sender}}
		</div>
      	<div class="message">
			{{message}} 
			<a href="{{id}}" style="display:{{printNone sender}}" type="number">X</a>
		</div>
      	<div class="date">{{regdate}}</div>
      </div>
      {{/each}}
      </script>
					<script id="temp1" type="text/x-handlebars-template">
      	<div class="{{printLeftRight sender}}">
      	<div class="sender">
			{{sender}}
		</div>
      	<div class="message">
			{{message}}
			<a href="{{id}}" style="display:{{printNone sender}}" type="number">X</a>
		</div>
      	<div class="date">{{regdate}}</div>
      	</div>
      </script>
					<script>
						var uid = "${member.id}";
						Handlebars.registerHelper("printLeftRight", function(
								sender) {
							if (uid != sender) {
								return "left";
							} else {
								return "right";
							}
						});
						Handlebars.registerHelper("printNone",
								function(sender) {
									if (uid != sender)
										return "none";
								});
					</script>
					<div class="input-div">
						<textarea id="txtMessage" placeholder="메세지를 입력한 후 리턴키를 누르세요!"></textarea>
					</div>
				</div>
                
                
          </div>
        </div>
      </section>



            </div>
          </div>
        </main>
        </div>


</body>

<script>

	getList();
	var uid = "${member.id}";
	//삭제
	$("#chat").on('click', '.message a', function(e) {
		e.preventDefault();
		var id = $(this).attr("href");
		if (!confirm(id + "을(를) 삭제하실래요?"))
			return;
		$.ajax({
			type : "post",
			url : "/chat/delete",
			data : {
				"id" : id
			},
			success : function() {
				alert("삭제되었습니다.");
				getList();
			}
		});
	});

	$("#txtMessage").on("keypress", function(e) {
		if (e.keyCode == 13 && !e.shiftKey) {
			e.preventDefault();
			var message = $("#txtMessage").val();
			if (message == "") {
				alert("내용을 입력하세요!");
				$("#txtMessage").focus();
				return;
			}
			$("#txtMessage").val("");

			//메세지 테이블에 등록
			$.ajax({
				type : "post",
				url : "/chat/insert",
				data : {
					sender : uid,
					message : message
				},
				success : function(data) {
					sock.send(uid + "|" + message + "|" + data);
				}
			});
		}
	});

	function getList() {
		$.ajax({
			type : "get",
			url : "/chat.json",
			dataType : "json",
			success : function(data) {
				var template = Handlebars.compile($("#temp").html());
				$("#chat").html(template(data));
			}
		});
	}

	//웹소켓 생성
	var sock = new SockJS("http://localhost:8081/echo");
	sock.onmessage = onMessage;

	//서버로부터 메세지 받기...
	function onMessage(msg) {
		var items = msg.data.split("|");
		var sender = items[0];
		var message = items[1];
		var id = items[2];
		var date = items[3];
		var data = {
			"message" : message,
			"sender" : sender,
			"regdate" : date,
			"id" : id
		};

		var template = Handlebars.compile($("#temp1").html());
		$("#chat").append(template(data));

		//스크롤바 아래 고정
		window.scrollTo(0, $('#chat').prop('scrollHeight'));
	}
</script>
</html>