<!DOCTYPE html>
<?php
    session_start();
    $h=mysql_connect("localhost","root","");
    mysql_select_db("CM");
    $query= mysql_query("SELECT * FROM user");
?>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="style.css" rel="stylesheet" type="text/css">
        <title> Credit Management</title>
    </head>
    <body class="background">
            <div class="container">
                <h1> Users </h1>
                <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th> Name </th>
                        <th>Credits</th>
                    </tr>
                </thead>
                <tbody id="myTable">
                    <?php
                        if(mysql_affected_rows()>0)
                        {
                            while($row=mysql_fetch_array($query))
                            {
                                echo "<tr><td><a href='transfer.php?id=$row[0]'>$row[1]</a></td>";
                                echo "<td><a href='transfer.php?id=$row[0]'>$row[3]</a></td></tr>";
                            }
                        }
                    ?>
                </tbody>
                </table>
            </div>
    </body>
</html>
