<?php
/*
 * Includes the script code into the footer of the generated page. This is to
 * optimize the speed of the website
 */
global $conf
?>
<script>
//set the current page tab
$(function()
{
	$("#nav ul #<?php echo $conf['PAGEID']; ?>").addClass("current_page_item");
});
</script>
