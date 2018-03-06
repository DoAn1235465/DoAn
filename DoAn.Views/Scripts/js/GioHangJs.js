
function ThemVaoGioHang(sp) {
	if (typeof (Storage) !== 'undefined') {
		var gioHang = localStorage.getItem("GioHang");
		if (gioHang) {
			var arr = JSON.parse(localStorage.getItem("GioHang"), []);
			var count = 0;
			for (var i = 0; i < arr.length; i++) {
				if (arr[i].Id == sp.Id) {
					arr[i].SoLuongBan += 1;
					count = 1;
				}
			}
			if (count == 0) {
				sp.SoLuongBan = 1;
				arr.push(sp);
			}
			localStorage.setItem("GioHang", JSON.stringify(arr));
		} else {
			var arr = [];
			sp.SoLuongBan = 1;
			arr.push(sp);
			localStorage.setItem("GioHang", JSON.stringify(arr));
		}
	} else {
		alert('Trình duyệt của bạn đã quá cũ. Hãy nâng cấp trình duyệt ngay!');
	}
}

function XoaSPGioHang(id) {
	var arr1 = [];
	var arr = JSON.parse(localStorage.getItem("GioHang"), []);
	for (var i = 0; i < arr.length; i++) {
		if (arr[i].Id != sp.Id) {
			arr1.push(arr[i]);
		}
	}
	localStorage.setItem("GioHang", JSON.stringify(arr1));
}