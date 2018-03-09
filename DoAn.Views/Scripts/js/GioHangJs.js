
var ShoppingCartItem = [];
$(document).ready(function () {
	//kiểm tra nếu đã có sessionStorage["GioHang"] đã có hay chưa
	if (sessionStorage["GioHang"] != null)
		ShoppingCartItem = JSON.parse(sessionStorage["GioHang"].toString());
	//hiển thị
	HienThi();
});
function ThemVaoGioHang(id) {
	$.ajax({
		url: urlRoot + 'HoaDonSanPhams/GetSanPham/' + id,
		type: 'Get',
		dataType: 'json',
		success: function (data) {
			var exists = false;
			var item={
				Id:data[0].Id,
				Id_Loai:data[0].Id_Loai,
				TenSp:data[0].TenSp,
				SoLuong:1,
				Gia:data[0].Gia,
				HinhAnhSPs:data[0].HinhAnhSPs
			}
			if (ShoppingCartItem.length > 0) {
				$.each(ShoppingCartItem, function (k, v) {
					//Nếu mặt hàng đã tồn tại thì chỉ cần tăng số lượng
					if(v.Id==data[0].Id)
					{
						v.SoLuong++;
						exists = true;
						return false;
					}
				});
			}
			//Nếu mặt hàng chưa tồn tại trong giỏ hàng
			if (!exists) {
				ShoppingCartItem.push(item);
			}
			//Lưu thông tin của giỏ hàng
			sessionStorage["GioHang"] = JSON.stringify(ShoppingCartItem);
			HienThi();
		}, error: function () { alert("Thêm vào giỏ hàng thất bại");}
	});
};

function XoaSPGioHang(id) {
	ShoppingCartItem = JSON.parse(sessionStorage["GioHang"].toString());
	for (var i = 0; i < ShoppingCartItem.length; i++) {
		if (ShoppingCartItem[i].Id == id) {
			ShoppingCartItem.splice(i, 1);
		}
	}
	sessionStorage["GioHang"] = JSON.stringify(ShoppingCartItem);
	HienThi();
};