// The article parameter is assigned to $article variable without any sanitization or validation
$articleid = $_GET['article'];		
// The $articleid parameter is passed as part of the query
$query = "SELECT * FROM articles WHERE articleid = $articleid";

