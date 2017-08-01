package controller;

import domain.Question;
import domain.Quiz;
import domain.Score;
import domain.User;
import service.QuestionService;
import service.QuizService;

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
 * Created by saura on 7/17/2017.
 */
@WebServlet(name = "QuizServlet")

public class QuizServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String page = request.getParameter("page");
        System.out.println(page);

        UserServlet.checkSession(request, response, page);

        HttpSession session = request.getSession(false);

        if (page.equalsIgnoreCase("quiz")) {

            int id = Integer.parseInt(request.getParameter("id"));
            int marks = 0;
            if (id == 0) {
                getQuestion(request, response, id);
            }else{
                String correct = request.getParameter("correct");
                String clicked = request.getParameter("option");
                String ques = request.getParameter("question");

                Quiz quiz = new Quiz();

                if (clicked.equalsIgnoreCase(correct)) {
                    quiz.setMarks(50);
                    System.out.println("------------------------------");
                    System.out.println(quiz.getMarks());
                    System.out.println("------------------------------");
                }else {
                    quiz.setMarks(0);
                }
                quiz.setQuestion(ques);
                quiz.setCorrect_ans(correct);

                quiz.setUid((Integer) session.getAttribute("uid"));

                quiz.setQid(id);
                quiz.setUser_ans(clicked);
                new QuizService().insert(quiz);
                getQuestion(request, response, id);

            }

        }

        if(page.equalsIgnoreCase("score")){
            quizScore(request, response);

        }
    }

    private void getQuestion(HttpServletRequest request, HttpServletResponse response, int id) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        Question question = new QuestionService().getRow(id);
        int max = new QuestionService().getMaxId();
        if (id == max) {

            //------------------------------------------------------//




            List<Quiz> quizList = new QuizService().getQuizList((Integer) session.getAttribute("uid"));

            request.setAttribute("quizResult", quizList);

            int total_marks = new QuizService().getTotalMarks((Integer) session.getAttribute("uid"));

            System.out.println(total_marks);

            request.setAttribute("total_marks",total_marks);

            System.out.println(quizList);

            request.setAttribute("msg", "Final Result");
            List<Question> ques = new QuestionService().getQuestionList();

System.out.println("------------------------------");

            User user =(User) session.getAttribute("user");

//------------------------------------------------------//

            String name= user.getName();
            Integer score = total_marks;

            System.out.println(name);
            System.out.println(score);

            QuizService.addScore(name,score);
//------------------------------------------------------//

 System.out.println("------------------------------");


            request.setAttribute("question", ques);
            request.setAttribute("name",user.getName());
            RequestDispatcher rd = request.getRequestDispatcher("quiz/quizResult.jsp");
            rd.forward(request, response);

            //------------------------------------------------------//

            //Display result
//            System.out.println("Null");
//            request.setAttribute("msg","Quiz Finished!!!!");
//            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//            rd.forward(request, response);
        }
        request.setAttribute("question", question);

        RequestDispatcher rd = request.getRequestDispatcher("quiz/playQuiz.jsp");
        rd.forward(request, response);
    }

    private void quizScore(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Score> scoreList = new QuizService().getScoreList();

        request.setAttribute("scoreList", scoreList);

        RequestDispatcher rd = request.getRequestDispatcher("quiz/quizScore.jsp");
        rd.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
