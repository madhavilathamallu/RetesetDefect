function insertSaveimages(){
	var queryStr = "INSERT INTO \"public\".\"saveimages\" (\"photo\",\"document\") VALUES(?,?)";
	try{
		$s.query("Db1", queryStr);
		$s.setBytes(1, "photo");
		$s.setBytes(2, "document");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertSaveimages();
