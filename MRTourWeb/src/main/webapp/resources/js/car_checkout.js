		
		// 약관 동의 섹션
		// 전체 선택 및 해제
		function check_all() {
		  // 전체 체크박스
		  const checkAll = document.getElementById("checkAll");

		  // 각 체크박스
		  const checkboxes = document.getElementsByName("chk");

		  // 전체 체크박스 체크되면
		  if (checkAll.checked) {
		    
			 // 각 체크박스 선택
		    for (let i = 0; i < checkboxes.length; i++) {
		      checkboxes[i].checked = true;
		    }
			 
		  } else {
		    // 모든 체크박스 선택 해제
		    for (let i = 0; i < checkboxes.length; i++) {
		      checkboxes[i].checked = false;
		    }
		  }
		}
		
		// 개별 체크박스 해제 시 전체박스 해제
		$(document).ready(function() {
		  var checkAll = document.getElementById("checkAll");
		  var checkboxes = document.getElementsByName("chk");

		  function onoffCheckItem() {
		    var allChecked = true;
		    for (var i = 0; i < checkboxes.length; i++) {
		      if (!checkboxes[i].checked) {
		        allChecked = false;
		        break;
		      }
		    }
		    checkAll.checked = allChecked;
		  }

		  for (var i = 0; i < checkboxes.length; i++) {
			  checkboxes[i].addEventListener('click', onoffCheckItem);
		  };
		});
		
		
		