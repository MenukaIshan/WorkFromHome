<div>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <span class="navbar-brand">Welcome...</span>

            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="translate.jsp">Translator <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">User Management<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="registration.jsp">Add User</a>
                            </li>
                            <li><a href="LoadSearch.jsp">Search User</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Delete User</a></li>
                        </ul>
                    </li>
                </ul>


            </div>
        </div>
    </nav>
</div>

<script type='text/javascript'>
    function callMe() {
        $.ajax({url: "CountryInformation"});
    }
</script>
