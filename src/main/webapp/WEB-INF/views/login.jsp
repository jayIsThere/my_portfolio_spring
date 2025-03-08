<html>
<head>
    <title> Login Page </title>
    <link rel="stylesheet" href="../webjars/bootstrap/5.1.3/css/bootstrap.min-jsf.css">
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-12 col-md-4">
<h1> This is a login page </h1>
        </div>
    </div>

<pre>${errorMessage}</pre>
<% if (request.getParameter("error") != null) { %>
<p style="color: red">Login failed</p>
<% } %>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-4">
        <form action="/login" method="post" class="border p-4 rounded mt-4">
            <div class="mb-3">
                <label for="username" class="form-label">Username:</label>
                <input type="text" id="username" name="username" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <input type="password" id="password" name="password" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
        </form>
        </div>
        </div>
    </div>
</div>
<script src="../webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<script src="../webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>