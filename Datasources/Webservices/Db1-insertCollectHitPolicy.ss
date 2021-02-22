function insertCollectHitPolicy(){
	var queryStr = "INSERT INTO \"public\".\"collectHitPolicy\" (\"age\",\"income\",\"ouput\") VALUES(?,?,?)";
	try{
		$s.query("Db1", queryStr);
		$s.setBigDecimal(1, "age");
		$s.setBigDecimal(2, "income");
		$s.setString(3, "ouput");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertCollectHitPolicy();
