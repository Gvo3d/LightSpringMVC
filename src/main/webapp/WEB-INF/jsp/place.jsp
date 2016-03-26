<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hello :: Spring Application</title>
        <spring:url value="/resources/simple.css" var="mainCss" />
        <link href="${mainCss}" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Hello - Spring Application</h1>
        <p>Greetings.</p>

        <iframe width="600" height="450" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/search?q=%D0%9A%D0%BE%D0%BC%D0%BF%D1%8C%D1%8E%D1%82%D0%B5%D1%80%D0%BD%D0%B0%D1%8F%20%D1%88%D0%BA%D0%BE%D0%BB%D0%B0%20Hillel%2C%20%D1%83%D0%BB%D0%B8%D1%86%D0%B0%20%D0%9A%D0%B0%D0%BD%D0%B0%D1%82%D0%BD%D0%B0%D1%8F%2C%20%D0%9E%D0%B4%D0%B5%D1%81%D1%81%D0%B0%2C%20%D0%9E%D0%B4%D0%B5%D1%81%D1%81%D0%BA%D0%B0%D1%8F%20%D0%BE%D0%B1%D0%BB%D0%B0%D1%81%D1%82%D1%8C%2C%20%D0%A3%D0%BA%D1%80%D0%B0%D0%B8%D0%BD%D0%B0&key=AIzaSyCKOZ4S7PnSYa-XoT9BoA5pPjvIW1_GMyA" allowfullscreen></iframe>

    </body>
</html>
<?PHP

define('HOST',          'localhost'   );
define('DB_NAME',       'bagrijroman' );
define('TABLE_NAME',    'Publications');
define('USER_NAME',     'root'        );
define('PASSWORD',      ''            );

$PublicationID = (int)$_GET['id'];

$DataBaseHandle = mysql_connect(HOST, USER_NAME, PASSWORD) or die (mysql_error());
mysql_select_db(DB_NAME) or die (mysql_error());

$SQLRequest = "SELECT Image FROM ".TABLE_NAME." WHERE id=".$PublicationID."";

$query = mysql_query($SQLRequest) or die (mysql_error());

$row = mysql_fetch_array($query, MYSQL_ASSOC);

header('Content-type: image/jpeg; charset=utf-8');
echo $row['Image'];

mysql_close($DataBaseHandle);

?>