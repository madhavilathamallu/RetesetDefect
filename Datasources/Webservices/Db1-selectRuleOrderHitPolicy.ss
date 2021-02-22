function selectRuleOrderHitPolicy(){
	var queryStr = "SELECT \"StudentGPA\",\"ExtraActivitiesCount\",\"NHSMembership\",\"FinancialPackage\" , count(*) OVER() AS full_count FROM \"public\".\"ruleOrderHitPolicy\"";
	var queryStrWithLimit = "SELECT \"StudentGPA\",\"ExtraActivitiesCount\",\"NHSMembership\",\"FinancialPackage\" , count(*) OVER() AS full_count FROM \"public\".\"ruleOrderHitPolicy\" LIMIT ? OFFSET ?";
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
selectRuleOrderHitPolicy();
