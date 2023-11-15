document.addEventListener("DOMContentLoaded", function () {
    
    var checkAll = document.querySelector(".check_all");
    var check1 = document.querySelector(".check_1");
    var check2 = document.querySelector(".check_2");

    
    var nextButton = document.querySelector(".check_btn_next");

    
    checkAll.addEventListener("change", function () {
    
      check1.checked = this.checked;
      check2.checked = this.checked;
    });

    
    check1.addEventListener("change", function () {
    
      checkAll.checked = check1.checked && check2.checked;
    });

    check2.addEventListener("change", function () {
    
      checkAll.checked = check1.checked && check2.checked;
    });

    
    nextButton.addEventListener("click", function () {
    
      if (!check1.checked || !check2.checked) {
    
        alert("약관에 동의해주세요.");
      } else {
    
        window.location.href = "Signup.html";
    
      }
    });
  });