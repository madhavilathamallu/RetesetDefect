function insertAnyHitPolicy(){
	var queryStr = "INSERT INTO \"public\".\"anyHitPolicy\" (\"creditRating\",\"creditBalance\",\"loanBalance\",\"compliance\") VALUES(?,?,?,?)";
	try{
		$s.query("Db1", queryStr);
		$s.setString(1, "creditRating");
		$s.setBigDecimal(2, "creditBalance");
		$s.setBigDecimal(3, "loanBalance");
		$s.setString(4, "compliance");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertAnyHitPolicy();
