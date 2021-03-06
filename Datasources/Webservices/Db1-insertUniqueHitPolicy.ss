function insertUniqueHitPolicy(){
	var queryStr = "INSERT INTO \"public\".\"uniqueHitPolicy\" (\"ApplicantAge\",\"MedicalHistory\",\"ApplicantRiskRating\") VALUES(?,?,?)";
	try{
		$s.query("Db1", queryStr);
		$s.setBigDecimal(1, "ApplicantAge");
		$s.setString(2, "MedicalHistory");
		$s.setString(3, "ApplicantRiskRating");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertUniqueHitPolicy();
