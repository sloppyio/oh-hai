<html>
<head>
        <title>Hi sloppy.io</title>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
        <style>
        body {
                background-color: white;
                text-align: center;
                padding: 50px;
                font-family: "Open Sans","Helvetica Neue",Helvetica,Arial,sans-serif;
        }

        #logo {
                margin-bottom: 40px;
        }
        </style>
</head>
<body>
        <img id="logo" src="logo.png" />
        <h1><?php echo "Oh hai!"; ?></h1>
        <?php if($_ENV["HOSTNAME"]) {?><h3>My hostname is <?php echo $_ENV["HOSTNAME"]; ?></h3><?php } ?>
        <?php

        if($_ENV["SLOPPY_DOMAIN"]) {
                ?>
                <h3>My Domain is <?php echo $_ENV["SLOPPY_DOMAIN"]; ?></h3>
                <?php
        }
        ?>

	<?php

        if($_ENV["MESSAGE"]) {
                ?>
                <h3>I just want so say: <?php echo $_ENV["MESSAGE"]; ?></h3>
                <?php
        }
        ?>

</body>
</html>

