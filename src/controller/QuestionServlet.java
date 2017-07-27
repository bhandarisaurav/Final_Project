package controller;

import domain.Question;
import service.QuestionService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created by saura on 6/22/2017.
 */
@WebServlet(name = "QuestionServlet")
public class QuestionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("Success Question");
        String page = request.getParameter("page");

        UserServlet.checkSession(request, response, page);

        if (page.equalsIgnoreCase("list")) {
            redirectToList(request, response);
        }

        if (page.equalsIgnoreCase("questionForm")) {
            RequestDispatcher rd = request.getRequestDispatcher("question/questionForm.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("addQuestion")) {

            Question question = new Question();
            question.setQuestion(request.getParameter("question"));
            question.setOption1(request.getParameter("option1"));
            question.setOption2(request.getParameter("option2"));
            question.setOption3(request.getParameter("option3"));
            question.setOption4(request.getParameter("option4"));
            question.setCorrect_ans(request.getParameter("correct_ans"));
            question.setCategory(request.getParameter("category"));

            new QuestionService().add(question);
            redirectToList(request, response);
        }

        if(page.equalsIgnoreCase("delete")){
            int id = Integer.parseInt(request.getParameter("id"));
            new QuestionService().delete(id);
            redirectToList(request,response);
        }

        if (page.equalsIgnoreCase("edit")) {
            int id = Integer.parseInt(request.getParameter("id"));
            Question question = new QuestionService().getQuestion(id);
            request.setAttribute("question", question);

            RequestDispatcher rd = request.getRequestDispatcher("question/editQuestion.jsp");
            rd.forward(request, response);
        }



        if (page.equalsIgnoreCase("update")) {

            Question question = new Question();
            question.setId(Integer.parseInt(request.getParameter("id")));
            question.setQuestion(request.getParameter("question"));
            question.setOption1(request.getParameter("option1"));
            question.setOption2(request.getParameter("option2"));
            question.setOption3(request.getParameter("option3"));
            question.setOption4(request.getParameter("option4"));
            question.setCorrect_ans(request.getParameter("correct_ans"));
            question.setCategory(request.getParameter("category"));

            new QuestionService().update(question);

            redirectToList(request, response);
        }



    }

    private void redirectToList(javax.servlet.http.HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Question> questionList = new QuestionService().getQuestionList();
        request.setAttribute("questionList", questionList);

        RequestDispatcher rd = request.getRequestDispatcher("question/list.jsp");
        rd.forward(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request,response);
    }
}