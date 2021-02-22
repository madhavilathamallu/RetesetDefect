function selectUserData(){
	var queryStr = "SELECT \"Firstname\",\"Lastname\",\"Email\",\"Username\",\"Password\",\"Displayname\",\"Mobilenumber\" , count(*) OVER() AS full_count FROM \"public\".\"UserData\" WHERE \"Email\"= ?";
	var queryStrWithLimit = "SELECT \"Firstname\",\"Lastname\",\"Email\",\"Username\",\"Password\",\"Displayname\",\"Mobilenumber\" , count(*) OVER() AS full_count FROM \"public\".\"UserData\" WHERE \"Email\"= ? LIMIT ? OFFSET ?";
	try{
		if($s.getParameter("limit") && $s.getParameter("limit") != "" && $s.getParameter("offset") && $s.getParameter("offset") != ""){
		$s.query("Db1", queryStrWithLimit);
		$s.setLong(2, "limit");
		$s.setLong(3, "offset");
		}else{
		$s.query("Db1", queryStr);
		}
	$s.setString(1, "Email");
		results = $s.queryDb();
		$s.sendResponse(200, results);
} catch(e) {
			java.lang.System.out.println(e);
			$s.sendResponse(500, e);
		}
}
selectUserData();
