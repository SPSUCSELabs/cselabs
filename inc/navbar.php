<?php
/*
 * the navbar at the top of the screen
 * 
 * @author Noah Harvey
 */
?>

<div id="header-wrapper">
	<header class="container" id="site-header">
		<div class="row">
			<div class="12u">
				<div id="logo">
					<h1>CSE Labs</h1>
				</div>
				<nav id="nav">
					<ul>
						<li id="home"><a href="<?php pageLink("home"); ?>">Homepage</a></li>
						<li id="labinfo"><a href="<?php pageLink("labinfo"); ?>">Lab Info</a></li>
						<li id="faculty"><a href="<?php pageLink("faculty"); ?>">Faculty</a></li>
						<li id="staff"><a href="<?php pageLink("staff"); ?>">Staff</a></li>
						<li id="advisers"><a href="<?php pageLink("advisers"); ?>">Advisers</a></li>
						<li id="waitlist"><a href="Waitlist/Default.aspx">Waitlist</a></li>
						<li id="virtualMachines"><a href="<?php pageLink("virtualMachines"); ?>">Virtual Machines</a></li>
						<li id="clubs"><a href="<?php pageLink("clubs"); ?>">Student Organizations</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
</div>



