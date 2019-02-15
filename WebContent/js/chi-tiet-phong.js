$(document).ready(function() {
	// ngay nhan
	$(function() {
		$("#ngaynhanphong-dp").datepicker({
			autoclose : true,
			todayHighlight : true,
			format : "dd-mm-yyyy"
		}).datepicker('update', new Date()).on('changeDate', dateChanged);
	});
	// ngay tra
	$(function() {
		$("#ngaytraphong-dp").datepicker({
			autoclose : true,
			todayHighlight : true,
			format : "dd-mm-yyyy"
		}).datepicker('update', new Date()).on('changeDate', dateChanged);
	});
	// so phong
	$('#soPhong').on('change', dateChanged);
	function dateChanged(ev) {
		var v_data = {};
		v_data.ngayNhan = $.trim($("[id*=ngayNhan]").val());
		v_data.ngayTra = $.trim($("[id*=ngayTra]").val());
		v_data.soPhong = $.trim($("[id*=soPhong]").val());
		v_data.loaiPhong = $.trim($("[id*=loaiPhong]").val());

		$.ajax({
			type : "POST",
			url : "CapNhatGiaServlet",
			data : {
				"ngayNhan" : v_data.ngayNhan,
				"ngayTra" : v_data.ngayTra,
				"soPhong" : v_data.soPhong,
				"loaiPhong": v_data.loaiPhong
			},
			success : function(response) {
				$('#tong-gia').text(numberWithCommas(response) + "₫");
				$('#tong-gia-param').val(response);
			}
		});
	}

	// hiển thị phân cách phần nghìn tiền
	function numberWithCommas(x) {
		return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
	}

});