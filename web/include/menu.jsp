<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">

    <div class="navbar-header">
        <a class="navbar-brand" href="navbar?page=navbar">
            <img src="../assets/images/logo.png" alt="">
        </a>
    </div>

    <div id="navbar container" class="collapse navbar-collapse ">
        <ul class="nav navbar-nav">

            <li><a href="#!" style="font-size: 15px;"></a></li>
            <li><a href="#!" style="font-size: 15px;"></a></li>

           <c:if test="${sessionScope.user.role=='admin'}">

               <li>
                   <a href="userList?page=list" style="font-size: 23px;">User</a>
               </li>


            <li>
                <a href="businessList?page=list" style="font-size: 23px;">Business</a>
            </li>

            <li>
                <a href="questionList?page=list" style="font-size: 23px;">Question</a>
            </li>
           </c:if>


            <li>
                <a href="getQuestion?page=quiz&id=0" style="font-size: 24px;">Play<span class="label">Quiz</span></a>
            </li>

            <li>
                <a href="getScore?page=score" style="font-size: 23.5px;">Scores</a>
            </li>

        </ul>


        <ul class="nav navbar-nav navbar-right">

            <li>
                <a href="#!" style="font-size: 25px; color: #ff7b28;">Hello ${sessionScope.user.name}</a>
                    <%--<span class="badge bg-default">529</span>--%>

                    <%--<span class="label" style="font-size: 16px;">Deerwalk Institute of Technology</span>--%>
            </li>

            <li>
                <a href="logout?page=logout" style="font-size: 20px;">Logout <i class="fa fa-sign-out" aria-hidden="true"></i></a>
            </li>

        </ul>

    </div>
</div>