<?php 
/* includes */
include("conf/config.php");

ini_set('display_errors',$DEBUG);

/** initially we want to grab the cached file */
$cache = true;


//TODO: change this so default page is home and simplify logic
/* get the requested page name */
if(isset($_GET['pageid']))
	$_SESSION['pageid'] = @$_GET['pageid'];
else
	$_SESSION['pageid'] = 'home';

//build the page path
$pagepath = $conf['PAGESPATH']."/".$_SESSION['pageid'].".php";

/* if file isn't found then redirect to page not found page*/
if(!file_exists($pagepath))
{
	$_SESSION['pageid'] = "pgNotFound"; 
	$pagepath = $conf['PAGESPATH']."/".$_SESSION['pageid'].".php";
}

/* perform caching only if we aren't debugging*/
if(isset($_SESSION['login']) && $_SESSION['login'])
	$cachefile = $conf['CACHEPATH']."/".$_SESSION['pageid']."_login.cache";
else
	$cachefile = $conf['CACHEPATH']."/".$_SESSION['pageid'].".cache";

/**/
if(!file_exists($cachefile) || filemtime($pagepath) > filemtime($cachefile))
	$cache = false;


/* call the cache if the requested page has a later modification time than its
matching cachepage*/
if(!$DEBUG && $cache)
{
	include($cachefile);
	exit;
}

/* otherwise regenerate page */
//stop the output buffer
ob_start();

//grab the content of the page
include_once("inc/page.php");

date_default_timezone_set('UTC');
echo "<!-- PAGE CREATED ON: ".date(DATE_RFC2822)."-->";

file_put_contents($cachefile,ob_get_contents());
chmod($cachefile,0770);
touch($pagepath);//update the filemtime

ob_end_flush();

?>
