function updateFirstHitPolicy(){
	var queryStr = "UPDATE \"public\".\"firstHitPolicy\" SET \"TypeOfOrder\"=?,\"CustomerLocation\"=?,\"TypeOfCustomer\"=?,\"SpecialDiscount\"=?";
	try{
		$s.query("Db1", queryStr);
	$s.setString(1, "TypeOfOrder");
	$s.setString(2, "CustomerLocation");
	$s.setString(3, "TypeOfCustomer");
	$s.setBigDecimal(4, "SpecialDiscount");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
updateFirstHitPolicy();
