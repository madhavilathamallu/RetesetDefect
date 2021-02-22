function insertDMdatatypeTest(){
	var queryStr = "INSERT INTO \"public\".\"DMdatatypeTest\" (\"name\",\"dob\",\"Citizenship\",\"age\",\"status\",\"Rating\") VALUES(?,?,?,?,?,?)";
	try{
		$s.query("Db1", queryStr);
		$s.setString(1, "name");
		$s.setDate(2, "dob");
		$s.setString(3, "Citizenship");
		$s.setBigDecimal(4, "age");
		$s.setString(5, "status");
		$s.setBigDecimal(6, "Rating");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertDMdatatypeTest();
