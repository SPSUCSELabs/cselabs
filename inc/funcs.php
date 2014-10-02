<?php 
/**
 * Universal functions for the website
 */

/*
 * returns the path of the optimized image
 * only supports the images supported by imagecreatefrom... in PHP5
 * 
 * @param $url - path to image
 * @param $quality - quality of the image (100 is full, 0 is the least)
 *
 * @return returns the path of the optimized image (or NULL if error occurs)
 */
function optimizeImage($url,$quality = 70)
{
	global $conf;
	
	//check if the image cache already exists
	if(FALSE && file_exists($cache_path))
	{
		echo $cache_path;
		return;
	}

	//get the image type and cache path. Always save image as jpeg
	$type = pathinfo($url,PATHINFO_EXTENSION);
	$cache_path = $conf['CACHEPATH']."/".basename($url,".".$type).".jpeg";

	//don't do anything if image type can't be determined
	if($type == "")
		return NULL;

	//create the image based off of the type
	$func = "imagecreatefrom".$type;

	if(($image = call_user_func("imagecreatefrom".$type,$url)) == FALSE)
		return NULL;

	//create image cache 
	imagejpeg($image,$cache_path,$quality);
		echo $cache_path;

	return 0;
}

/**
 * @brief includes the given page path
 * 
 * this function is a wrapper around include_once()
 *
 * @param path - 
 *
 * @return void
 * 
 */
function incPage($path)
{
	global $conf;
	$Path = $conf['INCPATH'].'/'.$path.'.php';

	if(file_exists($Path))
		include_once($Path);
}

/**
 * @brief creates a page link and echos it
 *
 * if a the pageid is invalid then nothing will be printed 
 * 
 */
function pageLink($pageid)
{
	global $conf;
	$path = $conf['PAGESPATH']."/".$pageid.".php";

	//check if valid file exists
	if(!file_exists($path))
	{
		$path = $conf['PAGESPATH']."/".$pageid.".html";
		if(!file_exists($path))
			return;
	}

	echo $conf['LINKPATH'].$pageid;
}

?>
