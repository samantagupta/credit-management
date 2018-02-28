<?php
    $h=mysql_connect("localhost","root","");
    mysql_select_db("CM");
    $query1= mysql_query("SELECT * FROM user where id=$_GET[sender]");
    $sender=  mysql_fetch_array($query1);
    $query2= mysql_query("SELECT * FROM user where id=$_GET[reciever]");
    $reciever=  mysql_fetch_array($query2);
    $totalCredits=$reciever[3]+$sender[3];
    $query3=  mysql_query("UPDATE user SET credits=$totalCredits where id=$_GET[reciever]");
    $query4=mysql_query("UPDATE user SET credits=0 where id=$_GET[sender]");
    $query="INSERT INTO `cm`.`transfer` (`from_email`, `to_email`, `credits`) VALUES ('$sender[2]', '$reciever[2]', '$sender[3]');";
    $qry=  mysql_query($query);
    if(mysql_affected_rows()>0)
    {
        header("location:selectUser.php");
    }
?>
