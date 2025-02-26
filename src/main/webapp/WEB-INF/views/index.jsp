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
    <h2 class="welcomeName">Welcome, <%= session.getAttribute("username") %>!</h2>
    <nav class="menu">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="resume.html">About</a></li>
            <li><a href="qualification.html">Job</a></li>
            <li><a href="private.html">Life</a></li>
            <li><a href="certificate.html">Certificate</a></li>
            <li><a href="contact.html">Contact</a></li>
            <li><a href="feedback.html">Feedback</a></li>
            <li><a href="auswertung.php">Feedback Table</a></li>
            <li><a href="/logout" class="logout">Logout</a></li>
        </ul>
    </nav>
</header>

<h3>Jaehan Kim</h3>
<p>In 2021, I gained practical experience abroad as Overseas Project Team Staff at Daewon Logistics in Korea.</p>
<p>This experience provided me with valuable insights into international cooperation and intercultural
    communication.</p>
<p>Since 2023, I have been studying Computer Science at <a href="https://www.w-hs.de/">the University of Applied
    Sciences in Westphalia</a> and am highly motivated to deepen my knowledge in this field.</p>
<p>I expect to complete my studies in 2025.</p>
<p>During my studies, I have already acquired initial programming skills in Java and Kotlin and am currently taking an
    online course on Java frameworks to further expand my knowledge.</p>
<p>In my free time, I am also intensively involved in programming and independently develop simple Android apps.</p>
<p>I am very impressed by your company history and the associated expertise in the field of programming.</p>
<p>I am convinced that I can learn a lot from your experienced employees and apply my knowledge profitably in
    practice.</p>
<p>I am a motivated and eager learner who enjoys taking on new challenges. With my enthusiasm for software development
    and my commitment, I am happy to contribute to the success of your team.</p>

</body>
</html>
