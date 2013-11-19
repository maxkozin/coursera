<?php
require_once('class.DB.php');

DB::config('main', array(
	'host' => "127.0.0.1",
	'port' => "3306",
	'user' => "root",
	'pass' => "513342",
	'db_name' => "hw6",
));

$db = DB::get_instance();

$deseases = array('bronchitis' => 'b.b','lung' => 'l.l', 'tuberculosis' => 't.t');

foreach($deseases as $desease => $field)
{
	echo $desease . "\n";
	
	$result = $db->get_key_list('SELECT ' . $field . ', 
	SUM(a.p*b.p*d.p*e.p*l.p*s.p*t.p*x.p) as s
FROM asia as a,bronchitis as b,dyspnoea as d,either as e,lung as l,smoking as s,tuberculosis as t,xray as x
WHERE 1
	AND t.a=a.a
	AND e.t=t.t
	AND e.e=x.e
	AND d.e=e.e
	AND e.l=l.l
	AND l.s=s.s
	AND b.s=s.s
	AND d.b=b.b
	AND d.d=0
	AND a.a=1
	AND s.s=0
	AND x.x=1
GROUP BY ' . $field);

	echo 'pos: ' . sprintf('%.10f', ($result[1]['s'] / ($result[0]['s'] + $result[1]['s']))) . "\n";
	echo 'neg: ' . sprintf('%.10f', ($result[0]['s'] / ($result[0]['s'] + $result[1]['s']))) . "\n-----------------\n";
}