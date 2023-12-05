<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../resources/css/member/pass.css">
    <script>
    
    function findAddr(){
        new daum.Postcode({
            oncomplete: function(data) {
                
                console.log(data);
            
                var roadAddr = data.roadAddress; 
                var jibunAddr = data.jibunAddress; 
                
                document.getElementById('pass_main_add_input').value = data.zonecode;
                if(roadAddr !== ''){
                    document.getElementById("pass_main_add_input").value = roadAddr;
                } 
                else if(jibunAddr !== ''){
                    document.getElementById("pass_main_add_input").value = jibunAddr;
                }
            }
        }).open();}</script>
</head>
<body>
    <div class="pass_form">
        
        <div class="pass_container">
            <div class="pass_main_form">
                <div class="pass_main_top">
                    <div class="pass_main_top_1">
                        ◀
                    </div>
                    <div class="pass_main_top_2">
                        본인인증
                    </div>
                </div>

                <div class="pass_main_title">
                    정보를 입력해주세요
                </div>

                <div class="pass_main_name">
                    <div class="pass_main_name_text">
                        닉네임
                    </div>
                    <input class="pass_main_name_box" type="text" placeholder="닉네임을 입력해주세요.">
                </div>

                <div class="pass_main_email">
                    <div class="pass_main_email_text">
                        이메일
                    </div>
                    <input class="pass_main_email_box" type="text" placeholder="이메일을 입력해주세요.">
                </div>


                <div class="pass_main_add">
                    <div class="pass_main_add_text">
                        주소
                    </div>
                    <div class="pass_main_add_inputbtnbox">
                        
                        <input class="pass_main_add_input" id="pass_main_add_input" type="text">

                        <div class="pass_main_add_btn" onclick="findAddr()">
                            <div class="pass_main_add_btn_text" >
                                주소검색
                            </div>

                            <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
                        </div>
                    </div>


                    <input class="pass_main_add_box" type="text" placeholder="상세주소를 입력해주세요.">
                </div>

                <div class="pass_main_btn">
                    제출하기
                </div>



            </div>



        </div>
    </div>
</body>
</html>