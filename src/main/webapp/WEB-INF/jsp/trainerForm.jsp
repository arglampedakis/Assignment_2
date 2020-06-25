<%-- 
    Document   : trainerForm
    Created on : Jun 23, 2020, 1:16:19 AM
    Author     : glamb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="springform" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trainer Form</title>
        <link rel="icon" href="/img/logo.png" sizes="32x32">
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
                    <div class="col-5 d-none d-lg-block">
                        <div class="big-box">
                            <img class="rounded" src="/img/trainer.jpg" width="500" height="300" alt="photo1">
                        </div>
                    </div>
                    <div class="col-12 bg-light col-lg-6 offset-lg-1 pt-2">
                    <springform:form action="/doInsertTrainer" method="post" modelAttribute="newTrainer">
                        <div class="row mt-2">
                            <div class="col mini-box">
                                <h3 class="display-5 text-center"> <i>Please fill the form to add/update a Trainer</i></h3>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col mini-box">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"> <i>First Name: </i></span>
                                    </div>
                                    <springform:input path="id" hidden="true"></springform:input>
                                    <springform:input path="firstName" cssClass="form-control"
                                                      pattern="[A-Za-z]{3,50}" title="must be between 3 and 45 characters"
                                                      placeholder="Type here..."/>
                                    <springform:errors path="firstName" cssClass="error"/>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col mini-box">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"> <i>Last Name: </i></span>
                                    </div>
                                    <springform:input path="lastName" cssClass="form-control"
                                                      pattern="[A-Za-z]{3,50}" title="must be between 3 and 45 characters"
                                                      placeholder="Type here..." />
                                    <springform:errors path="lastName" cssClass="error"/>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col mini-box">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"> <i>Subject: </i></span>
                                    </div>

                                    <springform:input path="trSubject" cssClass="form-control"
                                                      placeholder="Type here..." minlength="3" maxlength="50" title="must be between 2 and 45 characters" />
                                    <springform:errors path="trSubject" cssClass="error"/>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col mini-box">
                                <button type="submit" id="submit" class="btn btn-lg btn-block btn-primary mb-1"
                                        ">Save</button>
                            </div>
                            <div class="col mini-box">
                                <button type="reset" class="btn btn-lg btn-block btn-primary mb-1">Reset</button>
                            </div>
                        </div>
                    </springform:form>
                </div>
            </div>

            <jsp:include page="footer.jsp"></jsp:include>
        </div>
        
    </body>
</html>
