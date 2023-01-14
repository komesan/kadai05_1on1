<?php
session_start();

$_SESSION['name'] = 'tanaka';
$_SESSION['age'] = '38';

$sid = session_id();
echo $sid;
