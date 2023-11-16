
  document.addEventListener("DOMContentLoaded", function () {
    // Get the next button element
    var nextButton = document.querySelector(".signup_btn_next");

    // Add click event listener to the next button
    nextButton.addEventListener("click", function () {
      // Get input values
      var idValue = document.querySelector(".signup_input_box_id").value;
      var passwordValue = document.querySelector(".signup_input_box_1").value;
      var passwordConfirmationValue = document.querySelector(".signup_input_box_1_re").value;
      var nameValue = document.querySelector(".signup_input_box_2").value;
      var emailValue = document.querySelector(".signup_input_email_box").value;
      var phoneNumValue = document.querySelector(".signup_input_phoneNum_box").value;
      var addressValue = document.querySelector(".signup_input_add_box").value;
      var detailedAddressValue = document.querySelector(".signup_input_box_3").value;

      // Validate input values
      if (idValue === "") {
        alert("아이디를 입력해주세요.");
      } else if (!/^[a-zA-Z0-9]+$/.test(idValue)) {
        alert("아이디는영문, 숫자 조합만 가능합니다.");
      } else if (passwordValue === "") {
        alert("비밀번호를 입력해주세요.");
      } else if (passwordConfirmationValue === "") {
        alert("비밀번호 확인을 입력해주세요.");
      } else if (passwordValue !== passwordConfirmationValue) {
        alert("비밀번호가 동일하지 않습니다.");
      } else if (nameValue === "") {
        alert("이름을 입력해주세요.");
      } else if (emailValue === "") {
        alert("이메일을 입력해주세요.");
      } else if (phoneNumValue === "") {
        alert("휴대폰 번호를 입력해주세요.");
      } else if (addressValue === "") {
        alert("주소를 입력해주세요.");
      } else if (detailedAddressValue === "") {
        alert("상세주소를 입력해주세요.");
      } else {

        window.location.href = "Complete.html";
      }
    });
  });

  function showPopup() {
    window.open("EMCheckPopUp","a","width=500, height=300, left=100, top=50");
  }

  function showPopup1() {
    window.open("PNCheckPopup","a","width=500, height=300, left=100, top=50");
  }







  /*add api*/

  function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        
            var roadAddr = data.roadAddress; 
            var jibunAddr = data.jibunAddress; 
            
            document.getElementById('signup_input_add_box').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("signup_input_add_box").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("signup_input_add_box").value = jibunAddr;
            }
        }
    }).open();}
