<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>Login page</title>
    <meta  charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

</head>
<body background="https://s1.1zoom.ru/big0/890/Joker_hero_Joker_2019_Joaquin_Phoenix_Clown_572451_1280x857.jpg">


<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                    </li>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="registration">Registration</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</header>




<div style="width: 50%; padding: 10% 10%;" >
    <h2 style="text-align: center; color: aliceblue;"><em>LOGIN</em></h2>
    <form action="login" method="post">
        <div class="form-group">
            <label for="username" style="color: aliceblue;"><b>Username:</b></label>
            <input type="text" name="username" class="form-control" id="username" aria-describedby="emailHelp" placeholder="Enter username">
        </div>
        <div class="form-group">
            <label for="password" style="color: aliceblue;"><b>Password</b></label>
            <input type="password" name="password" class="form-control" id="password" placeholder="Password">
        </div>
        <div class="form-check">
            <input type="checkbox" name="checkbox" class="form-check-input" id="checkbox">
            <label class="form-check-label" style="color: aliceblue;" for="checkbox"><b>Check me out</b></label>
        </div>
        <input type="submit" name="submit" class="btn btn-success" value="sign in">
        <button class="btn btn-danger" style="float: right;"><a href="registration" style="text-decoration: none; color: white; ">New account</a></button>
    </form>
</div>



<%
    if ((String)request.getAttribute("status") != null && ((String)request.getAttribute("status")).equals("false")) {
        out.println("<p class=error>Username or password is not correct!</p>");
    }
%>



</body>
</html>
