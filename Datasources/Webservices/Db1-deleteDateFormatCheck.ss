function deleteDateFormatCheck(){
	var queryStr = "DELETE FROM \"public\".\"DateFormatCheck\"";
	try{
		$s.query("Db1", queryStr);
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
deleteDateFormatCheck();
