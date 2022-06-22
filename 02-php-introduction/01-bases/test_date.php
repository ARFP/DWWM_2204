<?php 
echo 'TEST DATE' .PHP_EOL;
$start = microtime(true);

for($i = 0; $i <= 10000000; $i++) {
    $date = date('Y-m-d H:i:s');    
}
$end = microtime(true);
$duration = ($end - $start);
echo $duration . PHP_EOL;


echo 'TEST DATETIME' . PHP_EOL;

$start = microtime(true);

$date = new DateTime();

for($i = 0; $i <= 10000000; $i++) {
    $d = $date->format('Y-m-d H:i:s');    
}

$end = microtime(true);

$duration = ($end - $start);

echo $duration . PHP_EOL;