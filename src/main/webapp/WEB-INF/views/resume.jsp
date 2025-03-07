<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Mein Lebenslauf</title>
    <link rel="stylesheet" href="../style/style.css">
</head>
<body>
    <header class="header">
        <h1 id="oben">Jay is There!</h1>
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
        <h3>Zusammenfassung</h3>
        <table>
            <tr>
                <td>
                    <table>
                        <tr>
                            <th>Name:</th>
                            <td class="zusammen">Jaehan Kim</td>
                        </tr>
                        <tr>
                            <th>E-Mail:</th>
                            <td class="zusammen"><a href="mailto:jaehan.kim@studmail.w-hs.de">jaehan.kim@studmail.w-hs.de</a></td>
                        </tr>
                        <tr>
                            <th>Adresse:</th>
                            <td class="zusammen">Marl, Deutschland</td>
                        </tr>
                    </table>
                </td>
                <td>
                    <div style="float: right; margin-right: 20px;">
                        <img src="https://jayisthere.github.io/assets/myPhoto.jpg" width="100" height="100" alt="Profilbild" class="profilbild">
                    </div>
                </td>
            </tr>
        </table>

        <h3>Ausbildung</h3>
        <table>
            <tr>
                <th>Osaka Universität</th>
                <td>[Bachelor / kulturelle Anthropologie] (2014-2018)</td>
            </tr>
            <tr>
                <th>Westfälische Hochschule</th>
                <td>[Bachelor / Informatik] (2023-heute) <br>(Voraussichtliches Abschlussjahr: 2025)</td>
            </tr>
        </table>
		
		<h3>Fähigkeiten</h3>
        <table>
            <tr>
                <th>Java</th>
                <td>Fundamentale Kenntnisse der Java-Programmiersprache, angewandt in <a href="https://github.com/jayIsThere/TimeWeatherWidget">diesem Projekt</a>.</td>
            </tr>
            <tr>
                <th>Python</th>
                <td>Grundlegende Kenntnisse der Python-Programmiersprache, angewandt in <a href="https://github.com/jayIsThere/password_manager">diesem Projekt</a>.</td>
            </tr>
            <tr>
                <th>Webentwicklung</th>
                <td>Erfahrung in der Entwicklung von Webanwendungen mit HTML, CSS und JavaScript.</td>
            </tr>
        </table>

    </main>
</body>
</html>
