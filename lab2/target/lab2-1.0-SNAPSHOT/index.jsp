<%@page contentType="text/html" pageEncoding="UTF-8" import ="java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>Main page</title>
    <meta  charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

</head>
<body background="https://s1.1zoom.ru/big0/890/Joker_hero_Joker_2019_Joaquin_Phoenix_Clown_572451_1280x857.jpg">


<%
    Cookie [] cookies = request.getCookies();
    String username = null;
    String password = null;


    if (request.getAttribute("status") != null && request.getAttribute("status").equals("registration")) {
        username = (String) request.getAttribute("username");
        password = (String) request.getAttribute("password");
    } else {
        System.out.println("SET cokies");
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("username")) {
                username = cookie.getValue();
            }
            if (cookie.getName().equals("password")) {
                password = cookie.getValue();
            }
        }
    }
%>

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

<div class="form-box" style="padding: 10% 10%;" >
    <div class="main-box">
        <p style="color: white;">Username: <span><%= username %></span></p>
        <p style="color: white;">Password: <span><%= password %></span></p>
    </div>
</div>

</body>
</html>
