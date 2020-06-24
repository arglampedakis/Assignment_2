<%-- 
    Document   : trainersTable
    Created on : Jun 23, 2020, 3:02:40 PM
    Author     : glamb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trainer Details</title>
        <link rel="icon" href="/images/logo.png" sizes="32x32">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="/style.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

        <script type="text/javascript">
            var jQuery_ui = $.noConflict(true);
        </script>

        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
                integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
            <jsp:include page="navbar.jsp"></jsp:include>
                <div class="row my-3">
                    <div class="col-6 offset-3">
                        <img class="rounded img-fluid" src="/img/searching.jpg" height="300px" alt="trainertable">
                    </div>
                </div>
                <div class="row mt-3 bg-light">
                    <h3 class="display-5 text-center"><i>Search results: </i></h3>
                </div>
                <div class="row mt-1">

                    <table class="table table-striped " id="trainerTable">
                        <thead>
                            <tr>
                                <th scope="col" hidden="true">ID</th>
                                <th scope="col">#</th>
                                <th scope="col">First Name</th>
                                <th scope="col">Last Name</th>
                                <th scope="col">Subject</th>
                                <th scope="col">Update</th>
                                <th scope="col">Delete</th>
                            </tr>
                        </thead>
                        <tbody id="tableBody">
                        <c:forEach items="${trainerList}" var="tr">
                            <tr>
                                <td hidden="true">${tr.id}</td>
                                <td scope="row">${trainerList.indexOf(tr)+1}</td>
                                <td>${tr.firstName}</td>
                                <td>${tr.lastName}</td>
                                <td>${tr.trSubject}</td>
                                <td>
                                    <a href="/updateTrainer/${tr.id}" class="btn btn-info">
                                        Update
                                    </a>
                                </td>
                                <td>
                                    <a href="/deleteTrainer/${tr.id}" class="btn btn-danger">
                                        Delete
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>
        </div>


    </body>
</html>
