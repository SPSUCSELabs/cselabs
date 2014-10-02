<?php
/*
 * The page generation code.
 * 
 * This is directly called in main.php
 * 
 * @author Noah Harvey <nharvey@spsu.edu>
 */
/* get login data */
global $editable;
global $login;

include("inc/funcs.php");
?>
<!DOCTYPE html>

<html>
<head>
	<!-- *************HEADER************** -->
	<?php incPage("head"); ?>
</head>
<body>

<!-- ******************** NAVBAR ******************** -->
<?php incPage("navbar"); ?>
<!-- /NAVBAR -->

<!-- ******************** CONTENT ******************** -->
<div id="page_content">
	<div class="container">
		<!-- ******************** banner ******************** -->
		<div class="row">
			<?php incPage("banner"); ?>
		</div>
		<!-- /banner -->
	
		<!-- ******************** features ******************** -->
		<div class="row">
			<?php	include($pagepath); ?>
		</div>
		<!-- /features -->
	</div>
</div><!-- /page_content --!>
<!-- /CONTENT -->

<!-- ******************** FOOTER ******************** -->
<?php incPage("footer"); ?>
<!-- /FOOTER -->

<!-- ******************** SCRIPTS ******************** -->
<?php incPage("scripts"); ?>
<!-- /SCRIPTS -->

</body>
</html>
