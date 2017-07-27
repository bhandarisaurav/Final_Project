package service;

import domain.Quiz;
import utils.DatabaseConnection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class QuizService {

    public void insert(Quiz quiz) {
        String query = "insert into quiz_data (qid, uid, user_ans, marks, question, correct_ans) values(?,?,?,?,?,?)";
        PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
        try {
            pstm.setInt(1, quiz.getQid());
            pstm.setInt(2, quiz.getUid());
            pstm.setString(3, quiz.getUser_ans());
            pstm.setInt(4, quiz.getMarks());
            pstm.setString(5, quiz.getQuestion());
            pstm.setString(6,quiz.getCorrect_ans());
            pstm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Quiz> getQuizList(int uid)
    {
        List<Quiz> quizList = new ArrayList<Quiz>();

        String query = "select * from quiz_data where uid = ?";

        PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);

        String optionCorrect = null, optionUser = null;

        try {
            pstm.setInt(1,uid);
            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                Quiz quiz = new Quiz();
                quiz.setMarks(rs.getInt("marks"));
                quiz.setQid(rs.getInt("qid"));
                quiz.setUid(rs.getInt("uid"));
                quiz.setUser_ans(rs.getString("user_ans"));
                quiz.setQuestion(rs.getString("question"));
                quiz.setCorrect_ans(rs.getString("correct_ans"));
//                userAnsList.add(userAns);
//                optionCorrect = rs.getString("correct_ans");
//                optionUser= rs.getString("user_Ans");

//                String query2 = "select option "+ optionCorrect +" as a, option " + optionUser + " as b from question_data where id = " + rs.getInt("qid");
//                PreparedStatement pstm2 =new DatabaseConnection().getPreparedStatement(query2);
//                try {
//                    ResultSet rs2 = pstm2.executeQuery();
//                    while (rs2.next()) {
//                        quiz.setCorrectAnswerSt(rs2.getString("a"));
//                        quiz.setChosenAnswerSt(rs2.getString("b"));
//                    }
//                } catch (SQLException e) {
//                    e.printStackTrace();
//                }
                quizList.add(quiz);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return quizList;
    }

//    public void deleteData(int uid)
//    {
//        String query = "delete from quiz_data where uid = ?";
//        PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
//        try {
//            pstm.setInt(1,uid);
//            pstm.execute();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }

    public void deleteData()
    {
        String query = "delete from quiz_data";
        PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
        try {
            pstm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public int getTotalMarks(int uid)
    {
        String query = "select sum(marks) from quiz_data where uid = ? ";
        PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
        int totMarks = 0;
        try {
           pstm.setInt(1,uid);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                totMarks = rs.getInt("sum(marks)");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return totMarks;
    }







}
