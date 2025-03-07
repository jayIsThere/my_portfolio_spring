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
        <h3>Zertifikate</h3>
        <table>
            <tr>
                <td>Zusätzlich habe ich Kurse in HTML, CSS und JavaScript absolviert und Zertifikate erhalten:</td>
            </tr>
            <tr>
                <td>
                    <a href="https://jayisthere.github.io/assets/screenshot_html_css_javascript.png" target="_blank">
                        <img src="https://jayisthere.github.io/assets/screenshot_html_css_javascript.png" width="100" height="100" alt="Zertifikat">
                    </a>
                </td>
            </tr>
        </table>

        <h3>Weitere Projekte</h3>
        <table>
            <tr>
                <td>Weitere Projekte können Sie unter folgendem Link einsehen: <a href="https://github.com/jayIsThere">GitHub-Profil</a></td>
            </tr>
        </table>
        <h3>PDF-Dokumentenanforderung</h3>
        <p>Wählen Sie die gewünschten Unterlagen aus:</p>
        <form>
			<fieldset>
			<legend>Wählen Sie bitte</legend>
            <p><label><input type="checkbox" name="document" value="zeugnisse" id="zeugnisse" onclick="myFunction()" value="Zeugnisse">Zeugnisse</label></p>
			<p><label><input type="checkbox" name="document" value="urkunde" id="urkunde" onclick="myFunction()" value="Urkunden">Urkunden</label></p>
            <p><label><input type="checkbox" name="document" value="zertifikat" id="zertifikat" onclick="myFunction()" value="Zertifikat">Zertifikat</label></p>
            <p><label><input type="checkbox" name="document" value="praktikum" id="praktikum" onclick="myFunction()" value="Praktikumsunterlagen">Praktikumsunterlagen</label></p>
			</fieldset>

			<!--<label>Ausgewählte Unterlagen: </label>
			<input type="text" id="order" size="50">-->
		
			<a href="javasctipt:void(0)" onclick="javascript:sendEmail()" class="button"><input type="button" value="Submit"></a>
			
        </form>	
		
			<script src="../js/sript_cert.js">
			</script>
            
		
		
		
		

    </main>
</body>
</html>
