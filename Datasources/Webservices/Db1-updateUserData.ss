function updateUserData(){
	var queryStr = "UPDATE \"public\".\"UserData\" SET \"Firstname\"=?,\"Lastname\"=?,\"Email\"=?,\"Username\"=?,\"Password\"=?,\"Displayname\"=?,\"Mobilenumber\"=? WHERE \"Email\"= ?";
	try{
		$s.query("Db1", queryStr);
	$s.setString(1, "Firstname");
	$s.setString(2, "Lastname");
	$s.setString(3, "Email");
	$s.setString(4, "Username");
	$s.setString(5, "Password");
	$s.setString(6, "Displayname");
	$s.setBigDecimal(7, "Mobilenumber");
	$s.setString(8, "Email");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
updateUserData();
