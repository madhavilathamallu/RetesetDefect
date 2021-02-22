function insertDateFormatCheck(){
	var queryStr = "INSERT INTO \"public\".\"DateFormatCheck\" (\"DOB\",\"Name\") VALUES(?,?)";
	try{
		$s.query("Db1", queryStr);
		$s.setDate(1, "DOB");
		$s.setString(2, "Name");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertDateFormatCheck();
