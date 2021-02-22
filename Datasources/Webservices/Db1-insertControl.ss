function insertControl(){
	var queryStr = "INSERT INTO \"public\".\"control\" (\"skills\",\"skill1\",\"skill2\",\"skill3\",\"skill4\",\"skill5\",\"skill6\") VALUES(?,?,?,?,?,?,?)";
	try{
		$s.query("Db1", queryStr);
		$s.setObject(1, "skills");
		$s.setObject(2, "skill1");
		$s.setObject(3, "skill2");
		$s.setObject(4, "skill3");
		$s.setObject(5, "skill4");
		$s.setObject(6, "skill5");
		$s.setObject(7, "skill6");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertControl();
