<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<style>
div.header {
	position: sticky;
	top: 0;
	background-color: blue;
}

a {
	font-weight: bold;
	text-decoration: none;
	color: red;
}
</style>
<title>채팅</title>
<link rel="stylesheet" type="text/css"
	href="../resources/css/header.css">
<link rel="stylesheet" type="text/css" href="../resources/css/main.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/footer.css">
<link rel="stylesheet"
	href="../resources/css/transation/detailProduct.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/a91a455094.js"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="/resources/css/chat.css" />
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
</head>
<body>
	<div id="header">
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<div class="chattingPage_container">
		<div class="chattingPage_div">
			<div class="chattingPage_aside">
				<p class="chattingPage_title">채팅</p>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div><div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
				<div class="chattingPage_profile_div">
					<div class="chattingPage_profile_sub_info">
						<div class="chattingPage_profile_img">
							<img src="image/같이.png" alt="" />
						</div>
						<div class="chattingPage_profile_info">
							<div class="chattingPage_profile_name">yen</div>
							<div class="chattingPage_profile_content">관악구 신림동관악구 신림동관악구
								신림동관악구 신림동관악구 신림동</div>
						</div>
					</div>

					<div class="chattingPage_date_div">
						<div class="chattingPage_detail_div">
							<p>11월14일</p>
						</div>
					</div>
				</div>
			</div>
			<div class="chattingPage_main">
				<div class="chattingPage_main_profile_container">
					<div class="chattingPage_main_profile_div">
						<div class="chattingPage_main_profile_name">${member.nickName}</div>
						<div class="class=chattingPage_main_profile_manner">${member.manner}</div>
					</div>
				</div>
				<div class="chattingPage_main_product_info">
					<div class="chattingPage_main_product_info_div">
						<div class="chattingPage_main_product_sub_info_div">
							<div class="chattingPage_product_img">
								<img src="image/같이.png" alt="" />
							</div>
							<div class="chattingPage_product_info_div">
								<div class="chattingPage_profile_product_title">
									<span>에어팟 프로 2유닛판매합니다</span>
								</div>
								<div class="chattingPage_profile_product_price">150000원</div>
							</div>
						</div>
					</div>
					<div class="chattingPage_button">
						<div class="chattingPage_button_margin">
							<input type="button" value="거래완료" />
						</div>
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
	var sock = new SockJS("http://localhost:8081/echo/");
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



