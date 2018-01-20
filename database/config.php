<?php
$localhost_cleardb_url = "mysql://bac996b3026e22:d988f641@us-cdbr-iron-east-05.cleardb.net/heroku_dcbe31e526aff85?reconnect=true";

if(!getenv("CLEARDB_DATABASE_URL")){
    putenv("CLEARDB_DATABASE_URL=$localhost_cleardb_url");
}
