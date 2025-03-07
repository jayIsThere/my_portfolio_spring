<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Mein Lebenslauf</title>
    <link rel="stylesheet" href="../style/style.css">
</head>
<body>
    <header class="header">
        <h1><a id="oben">Jay is There!</a></h1>
        <nav class="menu">
            <ul>
				<li><a href="/index">Home</a></li>
				<li><a href="/resume">About</a></li>
				<li><a href="/qualification">Job</a></li>
				<li><a href="/private">Life</a></li>
				<li><a href="/certificate">Certificate</a></li>
				<li><a href="/contact">Contact</a></li>
				<li><a href="/feedback">Feedback</a></li>
				<li><a href="auswertung.php">Feedback Table</a></li>
				<li><a href="toDo.html">ToDo List</a></li>
				<li><a href="/logout" class="logout">Logout</a></li>
            </ul>
        </nav>
    </header>

    <main>
		
        <h3>Hobbies</h3>
        <p>I love drawing! </p>
		<div class="image-gallery small-image">
		<img src="../img/portrait.jpg" alt="drawing1" width="50%" height="50%">
		<img src="../img/sunset.jpg" alt="drawing2">
		</div>
		
		<p>I love cooking! </p>
		<div class="image-gallery">
		<img src="../img/sushi.jpg" alt="cooking1">
		<img src="../img/pasta.jpg" alt="cooking2">
		<img src="../img/suppe.jpg" alt="cooking3">
		</div>
		
		<p>And I love, of course, programming!</p>
		<div class="image-gallery">
		<img src="../img/program1.png" alt="programming1">
		<img src="../img/program1.png" alt="programming2">
		<img src="../img/program1.png" alt="programming3">
		</div>
		<br>
		<h3>My family</h3>
        <p>Luna </p>
		
		<div class="image-gallery">
		<img id="family1" src="../img/luna.jpg" alt="luna">
		
		<video width="500" controls autoplay loop>
		  <source src="../vid/luna.MOV" type="video/mp4">
		  Your browser does not support HTML video.
		</video>
		</div>
		
		<!--<a download href="luna.jpg">Download Luna's picture</a>-->
		
		
		<p>Jaehan </p>
		<div class="image-gallery">
		<img id="family2" src="../img/jaehan.jpg" alt="jaehan">
		</div>
		
		<!--<a download href="jaehan.jpg">Download Jaehan's picture</a>-->
		
		
		
		
		<a href="private.html#oben">nach oben(mit hash)</a>
		<a href="#oben">nach oben(mit hash)</a> <!-- kein Unterschied wie oben-->
		<a href="index.html#oben">nach oben(mit hash)</a>
		<a href="private.html" target="_top">this(top)</a>
		<a href="private.html" target="_self">this(self)</a>
		<a href="private.html" target="_parent">this(parent)</a>
		<a href="private.html" target="_blank" name="blank">this(blank)</a> <!--das Attribut "name" hat heute kaum Bedeutungen-->
    </main>
</body>
</html>
