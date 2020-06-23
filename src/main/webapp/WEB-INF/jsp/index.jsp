<%-- 
    Document   : index
    Created on : Jun 22, 2020, 5:32:41 PM
    Author     : glamb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PeopleCode</title>
        <link rel="icon" href="/img/logo.png" sizes="32x32">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="/css/style.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

        <script type="text/javascript">
        var jQuery_ui = $.noConflict(true);
        </script>
    </head>
    <body>
        <div class="container">
            <jsp:include page="navbar.jsp"></jsp:include>
                <br>
                <div class="carousel slide mt-3" id="mycarousel" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#mycarousel" data-slide-to="0"></li>
                        <li data-target="#mycarousel" data-slide-to="1" class="active"></li>
                        <li data-target="#mycarousel" data-slide-to="2"></li>
                        <li data-target="#mycarousel" data-slide-to="3"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="/img/carousel_0.jpg" class="d-block w-100 mh-30 rounded img-fluid" alt="slide 0">
                        </div>
                        <div class="carousel-item">
                            <img src="/img/carousel2.jpg" class="d-block w-100 mh-30 rounded img-fluid" alt="slide 1">
                        </div>
                        <div class="carousel-item">
                            <img src="/img/carousel3.jpg" class="d-block w-100 mh-30 rounded img-fluid" alt="slide 2">
                        </div>
                        <div class="carousel-item">
                            <img src="/img/carousel_1.jpg" class="d-block w-100 mh-30 rounded img-fluid" alt="slide 3">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#mycarousel" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                        <span class="sr-only">Previous</span> 
                    </a>
                    <a class="carousel-control-next" href="#mycarousel" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <br>
                <div class="row mt-3">
                    <div class="col-12 col-lg-6 bg-light">
                        <h3 class="display-7 text-left">Τι είναι τα Coding Bootcamps;</h3>
                        <p class="text-left">Τα Coding Bootcamps είναι ταχύρρυθμα και εντατικά προγράμματα εκπαίδευσης στον
                            προγραμματισμό
                            και την ανάπτυξη εφαρμογών, συνολικής διάρκειας <b>500 ωρών</b>. Με την επιτυχή ολοκλήρωση του
                            προγράμματος, διαθέτεις όλα τα απαραίτητα εφόδια για να προσληφθείς άμεσα ως <b>entry-level,
                                full-stack προγραμματιστής</b>.</p>
                        <p class="text-left bg-light3 mt-2">
                            Απευθύνονται σε <b>οποιονδήποτε</b> θέλει να γίνει προγραμματιστής, <b>ανεξάρτητα από
                                το γνωστικό υπόβαθρό του</b>. Μέχρι σήμερα εκατοντάδες σπουδαστές προερχόμενοι από διαφορετικά
                            επαγγελματικά πεδία και σπουδές (αρχιτέκτονες, μαθηματικοί, φυσικοί, οικονομολόγοι,
                            ηλεκτρολόγοι, μηχανικοί) έχουν ολοκληρώσει με επιτυχία τα Coding Bootcamps!
                        </p>

                    </div>
                    <div class="col-6 d-none d-lg-block">
                        <img class="rounded" src="/img/1st_row.jpg" width="500" height="300" alt="photo1">
                    </div>
                </div>
                <br>
                <div class="row mt-3">
                    <div class="col-5 d-none d-lg-block">
                        <img class="rounded" src="/img/2nd_row.jpg" width="500" height="300" alt="photo2">
                    </div>
                    <div class="col-12 bg-light col-lg-6 offset-lg-1 pt-2">
                        <h3 class="display-7 text-left">Ταχύρρυθμα προγράμματα!</h3>
                        <p class="text-left"> Τα ταχύρρυθμα προγράμματα μας είναι μία <b>εξαιρετική πρόταση και για αποφοίτους
                                πληροφορικής</b>,
                            καθώς σου δίνουν τη δυνατότητα να εκπαιδευτείς στις τελευταίες τεχνολογίες προγραμματισμού,
                            να κάνεις πρακτική άσκηση πάνω σε project και να αποκτήσεις αυτό που ζητάει η αγορά σήμερα,
                            δηλαδή hands-on εμπειρία.</p>
                        <p class="text-left bg-light3 mt-2">
                            Στα Coding Bootcamps διδάσκονται οι αντικειμενοστραφείς γλώσσες προγραμματισμού <b>C#</b>,
                            <b>Java</b> και <b>JavaScript</b> που είναι από τις πλέον διαδομένες παγκοσμίως.
                            Επίλεξε αυτήν που σου ταιριάζει.
                        </p>
                    </div>
                </div>
                <br>
                <div class="jumbotron mt-2 bgimage text-light text-center p-3">
                    <h3 class="display-6 text-center">Μπες στο Coding Bootcamp</h3>
                    <a class="btn btn-lg btn-danger" target="_blank" href="#dead">Κάνε Αίτηση τώρα!</a>
                </div>
                <br>
                <div class="accordion" id="accord1">
                    <h3 class="display-7 text-center">Γίνε Περιζήτητος Πιστοποιημένος Προγραμματιστής!</h3>
                    <div class="card bordered">
                        <div class="card-header bg-primary" id="header1">
                            <button class="btn btn-outline-dark" type="button" data-target="#text1" data-toggle="collapse"
                                    aria-control="#text1">Άρτια Εκπαίδευση</button>
                        </div>
                        <div class="collapse show" id="text1" data-parent="#accord1" aria-labelledby="#header1">
                            <div class="card-body bg-light">
                                <h2>Άρτια Εκπαίδευση</h2>
                                <ul>
                                    <li>
                                        Tο εκπαιδευτικό πρόγραμμα, αρχικά σχεδιασμένο υπό την επίβλεψη διακεκριμένων καθηγητών
                                        του Οικονομικού
                                        Πανεπιστημίου Αθηνών, εναρμονίζεται συνεχώς με τις εξελίξεις της τεχνολογίας. Η
                                        διδασκαλία γίνεται από
                                        άριστους εκπαιδευτές, επαγγελματίες στον χώρο του προγραμματισμού.
                                    </li>
                                    <li>
                                        <b>Θα διδαχθείς ακριβώς ό,τι ζητά η αγορά εργασίας</b> σήμερα, έτσι ώστε με την
                                        αποφοίτησή σου να είσαι
                                        άμεσα παραγωγικός.
                                    </li>
                                    <li>
                                        Θα εκπαιδευτείς στον προγραμματισμό και παράλληλα θα αποκτήσεις hands-on εμπειρία μέσα
                                        από <b>συνεχή
                                            πρακτική εξάσκηση</b> με ασκήσεις, assignments και projects. Ολοκληρώνοντας το
                                        πρόγραμμα θα έχεις
                                        γράψει
                                        χιλιάδες γραμμές κώδικα και θα <b>έχεις αναπτύξει το δικό σου επαγγελματικό project
                                            portfolio</b>.
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card bordered">
                        <div class="card-header bg-primary" id="header2">
                            <button class="btn btn-outline-dark" type="button" data-target="#text2" data-toggle="collapse"
                                    aria-control="#text2">Διεθνής Πιστοποίηση</button>
                        </div>
                        <div class="collapse" id="text2" data-parent="#accord1" aria-labelledby="#header2">
                            <div class="card-body bg-light">
                                <h2>Διεθνής Πιστοποίηση</h2>
                                <p> Η πιστοποίηση των δεξιοτήτων σου αποτελεί επιπρόσθετη αξία των προσόντων που έχεις αποκτήσει
                                    κατά τη διάρκεια
                                    της εκπαίδευσης και σε καθιστά πραγματικά περιζήτητο στην αγορά εργασίας! Σε συνεργασία με
                                    τον παγκόσμιο φορέα
                                    πιστοποίησης PeopleCode, σου δίνεται η ευκαιρία να αποκτήσεις τα ακόλουθα 2 πιστοποιητικά.
                                </p>
                                <ul>
                                    <li>
                                        PeopleCode Software Developer Skills, Foundation Level
                                    </li>
                                    <li>
                                        PeopleCode Software Developer Skills, Advanced Level
                                    </li>
                                </ul>
                                <p> Το κόστος των πιστοποιήσεων περιλαμβάνεται στα δίδακτρα, μαζί με μία ακόμα προσπάθεια ανά
                                    πιστοποιητικό σε
                                    περίπτωση αποτυχίας.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="card bordered">
                        <div class="card-header bg-primary" id="header3">
                            <button class="btn btn-outline-dark" type="button" data-target="#text3" data-toggle="collapse"
                                    aria-control="#text3">Ένταξη στην Αγορά Εργασίας</button>
                        </div>
                        <div class="collapse" id="text3" data-parent="#accord1" aria-labelledby="#header3">
                            <div class="card-body bg-light">
                                <h2>Ένταξη στην Αγορά Εργασίας</h2>
                                <p> Με την επιτυχή ολοκλήρωση του προγράμματος θα είσαι έτοιμος να ενταχθείς άμεσα στην αγορά
                                    εργασίας καθώς το
                                    πρόγραμμα περιλαμβάνει:
                                </p>
                                <ul>
                                    <li>
                                        Workshops και υπηρεσίες επαγγελματικής συμβουλευτικής που στοχεύουν στην ενδυνάμωση των
                                        προσωπικών
                                        δεξιοτήτων
                                    </li>
                                    <li>
                                        Προώθηση βιογραφικών στο δίκτυο των συνεργαζόμενων εταιριών
                                    </li>
                                    <li>
                                        Events γνωριμίας και διασύνδεσης με τις συνεργαζόμενες εταιρίες
                                    </li>
                                </ul>
                                <p> Oι επαγγελματίες του Coding Bootcamp βρίσκονται συνεχώς δίπλα σου μέχρι να ξεκινήσεις τη νέα
                                    σου επαγγελματική
                                    σταδιοδρομία. Το 97% απασχολησιμότητας των αποφοίτων μας, αποδεικνύει ακριβώς αυτό!
                                </p>
                            </div>
                        </div>
                    </div>
                    <br>
                    <br>
                </div>
            <jsp:include page="footer.jsp"></jsp:include>
        </div>

        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
                integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
    </body>
</html>
