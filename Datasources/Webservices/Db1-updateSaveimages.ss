function updateSaveimages(){
	var queryStr = "UPDATE \"public\".\"saveimages\" SET \"photo\"=?,\"document\"=?";
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
updateSaveimages();
