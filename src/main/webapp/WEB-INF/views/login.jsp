<html>
<head>
    <title> Login Page </title>
    <style>
        body {
            background-color: lightblue;
            font-family: Arial, sans-serif;
            text-align: center;
        }

        h1 {
            color: indianred;
        }
    </style>
    <%--    <script>--%>
    <%--        function validateLogin(event) {--%>
    <%--            event.preventDefault();--%>

    <%--            var username = document.getElementById("username").value;--%>
    <%--            var password = document.getElementById("password").value;--%>

    <%--            if (username === "1234" && password === "1234") {--%>
    <%--                window.location.href = "./index";--%>
    <%--            } else {--%>
    <%--                alert("Login failed");--%>
    <%--            }--%>
    <%--        }--%>
    <%--    </script>--%>
</head>
<body>
<h1> This is a login page </h1>
<% if (request.getParameter("error") != null) { %>
<p style="color: red">Login failed</p>
<% } %>
<form action="/login" method="post">
    <label for="username"> Username: </label>
    <input type="text" id="username" name="username" required> <br> <br>
    <label for="password"> Password: </label>
    <input type="password" id="password" name="password" required> <br> <br>
    <input type="submit" value="Login">
</form>
</body>
</html>