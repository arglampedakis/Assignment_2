
<nav class="navbar navbar-expand-lg navbar-dark bg-primary sticky-top rounded mt-3"
     style="box-shadow: 10px 8px 9px 0px rgb(39, 41, 46);">
    <div class="mx-auto order-0">
        <a href="/" class="navbar-brand mx-auto">
            <img src="/img/logo.png" width="30" height="30" class="d-inline-block align-top" alt="Logo">
            <b><i>PeopleCode</i></b>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2"
                aria-label="toggle here" aria-expanded="false" aria-controls="#navbar1">
            <span class="navbar-toggler-icon"></span>
        </button>

    </div>
    <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a href="/" class="nav-link">Home</a>
            </li>
            <li class="nav-item active">
                <a href="/preInsertTrainer" class="nav-link">Create Trainer</a>
            </li>
            <li class="nav-item active">
                <a href="/allTrainers" class="nav-link">See all Trainers</a>
            </li>

        </ul>
    </div>

    <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
        <ul class="navbar-nav ml-auto">
            <form action="/searchTrainerByName" method="get">
                <div class="input-group mt-1 ml-auto">
                    <input type="search" id="searchInput" name="searchInput" placeholder="Search trainer by name.." class="form-control">
                    <div class="input-group-btn">
                        <button type="submit" class="btn btn-dark" id="searchButton">Search</button>
                    </div>
                </div>
            </form>
        </ul>
    </div>
</nav>
<script src="/js/navbarJQuery.js"></script>
