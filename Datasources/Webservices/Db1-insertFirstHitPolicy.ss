function insertFirstHitPolicy(){
	var queryStr = "INSERT INTO \"public\".\"firstHitPolicy\" (\"TypeOfOrder\",\"CustomerLocation\",\"TypeOfCustomer\",\"SpecialDiscount\") VALUES(?,?,?,?)";
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
insertFirstHitPolicy();
