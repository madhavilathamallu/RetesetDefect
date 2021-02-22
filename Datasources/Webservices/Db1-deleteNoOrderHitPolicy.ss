function deleteNoOrderHitPolicy(){
	var queryStr = "DELETE FROM \"public\".\"noOrderHitPolicy\"";
	try{
		$s.query("Db1", queryStr);
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
deleteNoOrderHitPolicy();
