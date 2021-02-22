function insertOutputOrderHitPolicy(){
	var queryStr = "INSERT INTO \"public\".\"outputOrderHitPolicy\" (\"Age\",\"YearsOfService\",\"Holidays\") VALUES(?,?,?)";
	try{
		$s.query("Db1", queryStr);
		$s.setBigDecimal(1, "Age");
		$s.setBigDecimal(2, "YearsOfService");
		$s.setObject(3, "Holidays");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertOutputOrderHitPolicy();
