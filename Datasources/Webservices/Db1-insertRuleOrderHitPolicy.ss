function insertRuleOrderHitPolicy(){
	var queryStr = "INSERT INTO \"public\".\"ruleOrderHitPolicy\" (\"StudentGPA\",\"ExtraActivitiesCount\",\"NHSMembership\",\"FinancialPackage\") VALUES(?,?,?,?)";
	try{
		$s.query("Db1", queryStr);
		$s.setBigDecimal(1, "StudentGPA");
		$s.setBigDecimal(2, "ExtraActivitiesCount");
		$s.setString(3, "NHSMembership");
		$s.setString(4, "FinancialPackage");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertRuleOrderHitPolicy();
