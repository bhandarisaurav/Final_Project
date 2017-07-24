package controller;

import domain.Question;
import domain.User;
import service.QuestionService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by saura on 7/17/2017.
 */
@WebServlet(name = "QuizServlet")
public class QuizServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String page = request.getParameter("page");
        System.out.println(page);

        HttpSession session = request.getSession(false);
        User user = (User) session.getAttribute("user");
        int userId = user.getId();

        if (page.equalsIgnoreCase("quiz")) {
            int id = Integer.parseInt(request.getParameter("id"));
            int marks = 0;
            if (id == 0) {
                getQuestion(request, response, id);
            }else{
                String correct = request.getParameter("correct");
                String clicked = request.getParameter("option");
                String ques = request.getParameter("question");

                if (clicked.equalsIgnoreCase(correct)) {
                    marks = 10;
                }
                // Insert question, correct, clicked, marks, userid
                getQuestion(request, response, id);

            }

        }
    }

    private void getQuestion(HttpServletRequest request, HttpServletResponse response, int id) throws ServletException, IOException {
        Question question = new QuestionService().getRow(id);
        int max = new QuestionService().getMaxId();
        if (id == max) {
            //Display result
            System.out.println("Null");
            request.setAttribute("msg","Quiz Finished!!");
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
        request.setAttribute("question", question);
        RequestDispatcher rd = request.getRequestDispatcher("quiz/playQuiz.jsp");
        rd.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
