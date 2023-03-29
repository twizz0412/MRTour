
// 상품 구매 관련
function buyProduct() {
	var member_id = $("#member_id").val();
	var prd_id = $("#prd_id").val();
	var buy_quantity = $("#buy_quantity").val();
	var prd_opt = $("#prd_opt").val();
	var hiddenbtn = $("#hiddenbtn").val();
	if (member_id == "Administrator") {
		swal("", "관리자 권한으로는 이용하실 수 없습니다.", "warning");
	} else if (!member_id) {
		swal("", "비회원은 이용하실 수 없습니다.", "error");
	} else if (buy_quantity == 0) {
		swal("", "수량을 선택해주세요", "error");
	} else {
		$.ajax({
			type : "POST",
			url : "payment",
			data : {
				"member_id" : member_id,
				"prd_id" : prd_id,
				"buy_quantity" : buy_quantity,
				"prd_opt" : prd_opt,
				"hiddenbtn" : hiddenbtn
			},
			success : function(data) {
				console.log(data);
				window.location.href="payment";
			}, error : function(data) {
				console.log(data);
			}
		});
	}
}

// 상품 등록 관련
function doInsertProduct() {
	var cate_id = $("#cate_id").val();
	
	if (!cate_id) {
		swal("", "카테고리를 선택해주세요.", "error");
	} else {
		var prd_id = $("#prd_id").val();
		var prd_name = $("#prd_name").val();
		var city_no = $("#city_no").val();
		var prd_opt = $("#prd_opt").val();
		var cate_id = $("#cate_id").val();
		var prd_price = $("#prd_price").val();
		var prd_img = $("#prd_img").val();
		alert(city_no);
		alert(prd_img);
		
		$.ajax({
			type : "POST",
			url : "insertProduct",
			enctype: "multipart/form-data",
			contentType: false,
			processData: false,
			cache: false,
			data : {
				"prd_id" : prd_id,
				"prd_name" : prd_name,
				"city_no" : city_no,
				"prd_opt" : prd_opt,
				"cate_id" : cate_id,
				"prd_price" : prd_price,
				"prd_img" : prd_img
			},
			success : function(data) {
				swal("", "상품이 등록되었습니다.", "success")
				.then(function(isConfirm){
					window.location.href="Listpage";
				});
			}, error : function(error) {
				swal("왜", "에러일까", "error");
			}
		});
	}
}

function imageChange() {
	var input = document.memberform.file;
	var fReader = new FileReader();
	fReader.readAsDataURL(input.files[0]);
	fReader.onloadend = function(event) {
		document.memberform.image.src = event.target.result;
	}
}

// 상품 등록 시 상품 코드 중복 체크
function prdCheckID() {
	var prd_id=$("#prd_id").val();
	if (!prd_id) {
		swal("", "상품 코드를 입력해주세요.", "error");
	} else {
		$.ajax({
			type : "POST",
			url : "prdCheckID",
			data : { "prd_id" : prd_id },
			dataType : "JSON",
			success : function(data) {
				if (data == 0) {
					$("#prd_id").attr("disable", true);
					swal("", "사용가능한 상품 코드입니다.", "success");
				} else if (data != 0) {
					swal("", "이미 존재하는 상품입니다.", "error");
				} else {
					swal("a", "a", "error");
				}
			}, error : function(error) {
				swal("", prd_id, "error");
			}
		});
	}
}