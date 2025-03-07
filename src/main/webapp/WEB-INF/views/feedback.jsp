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
        <h3>Feedback</h3>
        <p>If you have any feedback, feel free to send!</p>
        <p>*: required to answer</p>

        <form method="POST" action="http://localhost/my_portfolio_php_backend/auswertung.php">
            <label for="anrede">Anrede: </label>
            <select name="anrede" id="anrede" required>
				<option value="">--Bitte wählen--</option>
                <option value="Herr">Herr</option>
                <option value="Frau">Frau</option>
                <option value="Doktor">Dr.</option>
                <option value="Professor">Prof.</option>
            </select>
            <br>

            <label for="vorname">Vorname *: </label>
            <input type="text" id="vorname" name="vorname" size="20" required>
            <br>

            <label for="nachname">Nachname *: </label>
            <input type="text" id="nachname" name="nachname" size="20" required>
            <br><br>

            <input type="checkbox" id="kopie" name="kopie">
            <label for="kopie">Kopie an meine Mailbox senden</label>
            <br><br>

            <label for="email">Email Adresse: </label>
            <input type="email" id="email" name="email" size="20" placeholder="Emailadresse eingeben">
            <br><br>

            <input type="checkbox" id="rueckfragen" name="rueckfragen">
            <label for="rueckfragen">Ich stehe für evtl. Rückfragen zur Verfügung.</label>
            <br><br>

            <label for="telefonnummer">Telefonnummer: </label>
            <input type="tel" id="telefonnummer" name="telefonnummer" size="20">
            <br>

            <label for="website">URL/Website: </label>
            <input type="text" id="website" name="website" size="20">
            <br>

            <label for="age">Alter: </label>
            <input type="number" id="age" name="age" min="18" max="99" value="21">
            <br><br>

            <input type="checkbox" id="besuch" name="besuch">
            <label for="besuch">Ich werde die Seite wieder besuchen</label>
            <br><br>

            <label>Was würden Sie verbessern?</label>
            <br>
            <textarea id="verbesserung" name="verbesserung" cols="50" rows="8" wrap="soft"></textarea>
            <br><br>

            <label>Wie sind Sie auf diese Bewerbungsseite aufmerksam geworden?</label>
            <br>
            <select name="aufmerksamkeit" id="aufmerksamkeit">
                <option value="">--Bitte wählen--</option>
                <optgroup label="Allgemein">
                    <option value="zufall">Zufall</option>
                    <option value="freunde">Freunde/Bekannte</option>
                    <option value="praesentation">Präsentation/Vortrag</option>
                    <option value="fruehere_nutzung">Frühere Nutzung</option>
                </optgroup>
                <optgroup label="Internet-Angebote">
                    <option value="newsletter">Newsletter anderer Seiten</option>
                    <option value="suchmaschine">Suchmaschine</option>
                    <option value="linkliste">Linkliste</option>
                    <option value="forum">Forum/Gästebuch-Eintrag</option>
                    <option value="kostenlos">Kostenlos/Gratis-Seite</option>
                </optgroup>
                <optgroup label="Medien">
                    <option value="zeitung">Zeitung</option>
                    <option value="zeitschrift">Zeitschrift</option>
                    <option value="radio">Radio</option>
                    <option value="fernsehen">Fernsehen</option>
                </optgroup>
            </select>
            <br><br>

            <label>Welche Note würdest Du allgemein dem Inhalt geben? (1 = sehr gut, 6 = ungenügend)</label>
            <br>
            <input type="radio" id="note1" name="note_inhalt" value="1"><label for="note1">1</label>
            <input type="radio" id="note2" name="note_inhalt" value="2"><label for="note2">2</label>
            <input type="radio" id="note3" name="note_inhalt" value="3"><label for="note3">3</label>
            <input type="radio" id="note4" name="note_inhalt" value="4"><label for="note4">4</label>
            <input type="radio" id="note5" name="note_inhalt" value="5"><label for="note5">5</label>
            <input type="radio" id="note6" name="note_inhalt" value="6"><label for="note6">6</label>
            <br><br>

			<label>Welche Note würdest Du allgemein dem Aussehen geben?  (1 = sehr gut, 6 = ungenügend) </label>
            <br>
            <input type="radio" id="note11" name="note_aussehen" value="1"><label for="note1">1</label>
            <input type="radio" id="note22" name="note_aussehen" value="2"><label for="note2">2</label>
            <input type="radio" id="note33" name="note_aussehen" value="3"><label for="note3">3</label>
            <input type="radio" id="note44" name="note_aussehen" value="4"><label for="note4">4</label>
            <input type="radio" id="note55" name="note_aussehen" value="5"><label for="note5">5</label>
            <input type="radio" id="note66" name="note_aussehen" value="6"><label for="note6">6</label>
            <br><br>

            <label>Passwort-/Spamschutz: Bitte gib <i>Internetsprachen</i> ein</label>
            <br>
            <input type="password" name="passwort" required>
            <br><br>

            <input type="submit" value="Absenden">
            <input type="reset" value="Zurücksetzen">
        </form>
    </main>
</body>
</html>
