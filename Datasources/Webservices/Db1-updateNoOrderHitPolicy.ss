function updateNoOrderHitPolicy(){
	var queryStr = "UPDATE \"public\".\"noOrderHitPolicy\" SET \"Age\"=?,\"YearsOfService\"=?,\"Holidays\"=?";
	try{
		$s.query("Db1", queryStr);
	$s.setBigDecimal(1, "Age");
	$s.setBigDecimal(2, "YearsOfService");
	$s.setBigDecimal(3, "Holidays");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
updateNoOrderHitPolicy();
