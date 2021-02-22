function selectAllControl(){
	var queryStr = "SELECT \"skills\",\"skill1\",\"skill2\",\"skill3\",\"skill4\",\"skill5\",\"skill6\" , count(*) OVER() AS full_count FROM \"public\".\"control\"";
	var queryStrWithLimit = "SELECT \"skills\",\"skill1\",\"skill2\",\"skill3\",\"skill4\",\"skill5\",\"skill6\" , count(*) OVER() AS full_count FROM \"public\".\"control\" LIMIT ? OFFSET ?";
	try{
		if($s.getParameter("limit") && $s.getParameter("limit") != "" && $s.getParameter("offset") && $s.getParameter("offset") != ""){
		$s.query("Db1", queryStrWithLimit);
		$s.setLong(1, "limit");
		$s.setLong(2, "offset");
		}else{
		$s.query("Db1", queryStr);
		}
		results = $s.queryDb();
		$s.sendResponse(200, results);
} catch(e) {
			java.lang.System.out.println(e);
			$s.sendResponse(500, e);
		}
}
selectAllControl();
