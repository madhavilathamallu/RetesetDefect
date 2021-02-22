function updateCollectHitPolicy(){
	var queryStr = "UPDATE \"public\".\"collectHitPolicy\" SET \"age\"=?,\"income\"=?,\"ouput\"=?";
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
updateCollectHitPolicy();
