package controller;

import domain.Quiz;
import domain.User;
import service.QuizService;
import service.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
/**
 * Created by Saurav on 1/31/2017.
 */
public class UserServlet extends javax.servlet.http.HttpServlet {
    private Object HttpServletRequest;

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        System.out.println("Login Success");
        String page = request.getParameter("page");

//        if(!page.equalsIgnoreCase("login") && !page.equalsIgnoreCase("logout")){
//            HttpSession session = request.getSession(false);
//            User user = (User) session.getAttribute("user");
//
//            if (user == null){
//                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//                rd.forward(request, response);
//             //   return;
//            }
//        }

        UserServlet.checkSession(request, response, page);

        if (page.equalsIgnoreCase("login")) {

            String name = request.getParameter("username");
            String password = request.getParameter("password");

            User user = new UserService().getUser(name, password);

            if (user != null) {

                HttpSession session = request.getSession(false);
                session.setAttribute("uid", user.getId());
                session.setAttribute("user",user);
                request.setAttribute("msg", "Login Success!");

                QuizService quizService = new QuizService();
                quizService.deleteData();

                RequestDispatcher rd = request.getRequestDispatcher("user/home.jsp");
                rd.forward(request, response);

            } else {
                request.setAttribute("msg","Invalid Credentials");
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }

//            if(name.equals("deerwalk")){
//                RequestDispatcher rd = request.getRequestDispatcher("user/home.jsp");
//                rd.forward(request,response);
//            }else {
//
//                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//                rd.forward(request,response);
//            }
        }
        if (page.equalsIgnoreCase("logout")) {

            HttpSession session = request.getSession(false);
            session.invalidate();


            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("list")) {
            redirectToList(request, response);
        }
        if (page.equalsIgnoreCase("userForm")) {
            RequestDispatcher rd = request.getRequestDispatcher("user/userForm.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("adduser")) {

            User user = new User();
            user.setName(request.getParameter("username"));
            user.setPassword(request.getParameter("password"));
            user.setRole(request.getParameter("role"));

            new UserService().add(user);

            redirectToList(request, response);
        }

        if(page.equalsIgnoreCase("deleteuser")){
            int id = Integer.parseInt(request.getParameter("id"));
            new UserService().delete(id);
            redirectToList(request,response);
        }

        if (page.equalsIgnoreCase("edit")) {
            int id = Integer.parseInt(request.getParameter("id"));
            User user = new UserService().getUser(id);
            request.setAttribute("user", user);

            RequestDispatcher rd = request.getRequestDispatcher("user/editUser.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("update")) {

            User user = new User();
            user.setName(request.getParameter("username"));
            user.setPassword(request.getParameter("password"));
            user.setRole(request.getParameter("role"));
            user.setId(Integer.parseInt(request.getParameter("id")));

            new UserService().update(user);

            redirectToList(request, response);
        }


    }

    private void redirectToList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> userList = new UserService().getUserList();
        request.setAttribute("userList", userList);

        RequestDispatcher rd = request.getRequestDispatcher("user/list.jsp");
        rd.forward(request, response);
    }

    public static void checkSession(HttpServletRequest request, HttpServletResponse response, String page){
        if(page==null){
            page = "xyz";
        }
        if(!page.equalsIgnoreCase("login")){
            HttpSession session = request.getSession(false);
            User user = (User) session.getAttribute("user");
            if(user==null){
                String message = "Login First !!!";
                try {
                    request.setAttribute("msg",message);
                    request.getRequestDispatcher("index.jsp").forward(request,response);
                } catch (ServletException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }

        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request,response);
    }
}
