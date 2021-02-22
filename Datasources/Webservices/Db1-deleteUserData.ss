function deleteUserData(){
	var queryStr = "DELETE FROM \"public\".\"UserData\" WHERE \"Email\"= ?";
	try{
		$s.query("Db1", queryStr);
		$s.setString(1, "Email");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
deleteUserData();
