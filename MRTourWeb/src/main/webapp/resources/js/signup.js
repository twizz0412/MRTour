	//주소입력
    function searchPost() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('member_zipcode').value = data.zonecode;
                document.getElementById("member_faddr").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("member_laddr").focus();
            }
        }).open();
    }
    
    
	//전체 선택 및 해제
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
		
		//메일입력칸 활성/비활성화
	$(document).ready(function() {		
		$("#email_select").change(function() {
			if ($("#email_select").val() == "1") {
				$("#email_addr").val("");
				$("#email_addr").prop("disabled", false);
			} else if ($("#email_select").val() == "") {
				$("#email_addr").val("");
				$("#email_addr").prop("disabled", true);
			} else {
				$("#email_addr").val($("#email_select").val());
				$("#email_addr").prop("disabled", true);
			}
		});
	})	
		