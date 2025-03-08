<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>Mein Lebenslauf</title>
    <link rel="stylesheet" href="../webjars/bootstrap/5.1.3/css/bootstrap.min-jsf.css">
</head>
<body>
<header class="header">
    </header>
    <div class="container">
        <div class="d-flex justify-content-between align-items-center mt-4">
            <h1>Jay is There!</h1>
            <h2 class="welcomeName">Welcome, <%= session.getAttribute("username") %>!</h2>
        </div>
        <nav class="mt-4">
            <ul class="nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="/index">Home</a></li>
                <li class="nav-item"><a class="nav-link active" aria-current="page"  href="/resume">About</a></li>
                <li class="nav-item"><a class="nav-link active" aria-current="page"  href="/qualification">Job</a></li>
                <li class="nav-item"><a class="nav-link active" aria-current="page"  href="/private">Life</a></li>
                <li class="nav-item"><a class="nav-link active" aria-current="page"  href="/certificate">Certificate</a></li>
                <li class="nav-item"><a class="nav-link active" aria-current="page"  href="/contact">Contact</a></li>
                <li class="nav-item"><a class="nav-link active" aria-current="page"  href="/feedback">Feedback</a></li>
                <li class="nav-item"><a class="nav-link active" aria-current="page"  href="auswertung.php">Feedback Table</a></li>
                <li class="nav-item"><a class="nav-link active" aria-current="page"  href="/list-todos">ToDo List</a></li>
                <li class="nav-item"><a class="nav-link active" aria-current="page"  href="/logout" class="logout">Logout</a></li>
            </ul>
        </nav>

<h3 class="mt-4">Jaehan Kim</h3>
<div class="mt-4">
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
</div>
    </div>
<script src="../webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<script src="../webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>
