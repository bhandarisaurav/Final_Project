<div class="container">

    <div class="navbar-header">
        <a class="navbar-brand" href="navbar?page=navbar">
            <img src="../assets/images/logo.png" alt="">
        </a>
    </div>

    <div id="navbar" class="collapse navbar-collapse ">
        <ul class="nav navbar-nav">

            <li><a href="#!" style="font-size: 25px;"></a></li>
            <li><a href="#!" style="font-size: 25px;"></a></li>

            <li>
                <a href="#!" style="font-size: 25px;">User <span class="label">games</span></a>
            </li>

            <c:if test="${sessionScope.business.role=='admin'}">

            <li>
                <a href="businessList?page=list" style="font-size: 25px;">Business<span class="label">news</span></a>
            </li>

            <li>
                <a href="questionList?page=list" style="font-size: 25px;">Question <span class="label"></span></a>
            </li>

            </c:if>
            <li>
                <a href="" style="font-size: 25px;">Play<span class="label">Quiz</span></a>
            </li>

        </ul>


        <ul class="nav navbar-nav navbar-right">

            <li>
                <a href="#!" style="font-size: 25px;">Saurav Bhandari  <span class="badge bg-default">529</span></span>
                    <span class="label" style="font-size: 16px;">Deerwalk Institute of Technology</span></a>
            </li>

            <li>
                <a href="logout?page=logout" style="font-size: 20px;">Logout <i class="fa fa-sign-out" aria-hidden="true"></i></a>
            </li>

        </ul>

    </div>
</div>