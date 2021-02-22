function updateDateFormatCheck(){
	var queryStr = "UPDATE \"public\".\"DateFormatCheck\" SET \"DOB\"=?,\"Name\"=?";
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
updateDateFormatCheck();
