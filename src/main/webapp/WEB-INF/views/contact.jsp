<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Mein Lebenslauf</title>
    <link rel="stylesheet" href="../style/style.css">
</head>
<body>
    <header class="header">
        <h1>Jay is There!</h1>
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
        <h3>Kontakt</h3>
		
		<p>If you have any questions, feel free to ask!</p>
		<br>
		
		<form>
		<legend>Betreff</legend>
		<input type="text" id="betreff" size="50" placeholder="Title" list="betreffBeispiel">
		<datalist id="betreffBeispiel">
		<option value="Hallo">
		<option value="Hi">
		</datalist>
		<legend>Inhalt</legend>
		<textarea id="order" cols="50" rows="8" placeholder="Write down the email here!" wrap="soft"></textarea><br>
		<a href="javasctipt:void(0)" onclick="javascript:sendEmail()" class="button"><input type="button" value="Submit"></a><br>
		</form>

		<script src="../js.script_contact.js">
			
		</script>
		
		<br><br>
		<p>Oder telefonieren!</p>
		<p>Telefon: +82 12 345 6789</p>	
    </main>
</body>
</html>
