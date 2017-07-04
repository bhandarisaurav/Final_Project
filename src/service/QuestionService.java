package service;

import domain.Question;
import utils.DatabaseConnection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by saura on 6/22/2017.
 */
public class QuestionService {

    public List<Question> getQuestionList() {
        List<Question> questionList = new ArrayList<Question>();

        String query = "select * from question_data";
        PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                Question question = new Question();
                question.setId(rs.getInt("id"));
                question.setQuestion(rs.getString("question"));
                question.setOption1(rs.getString("option1"));
                question.setOption2(rs.getString("option2"));
                question.setOption3(rs.getString("option3"));
                question.setOption4(rs.getString("option4"));
                question.setCorrect_ans(rs.getString("correct_ans"));
                question.setCategory(rs.getString("category"));
                questionList.add(question);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return questionList;
    }

    public void add(Question question) {
        String query = "INSERT INTO `question_data`(`question`, `option1`, `option2`, `option3`, `option4`, `correct_ans`, `category`) VALUES (?,?,?,?,?,?,?)";
        PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
        try {
            pstm.setString(1, question.getQuestion());
            pstm.setString(2, question.getOption1());
            pstm.setString(3, question.getOption2());
            pstm.setString(4, question.getOption3());
            pstm.setString(5, question.getOption4());
            pstm.setString(6,question.getCorrect_ans());
            pstm.setString(7,question.getCategory());

            System.out.println("----------------------");
            System.out.println(question.getQuestion());
            System.out.println(question.getOption1());
            System.out.println(question.getOption2());
            System.out.println(question.getOption3());
            System.out.println(question.getOption4());
            System.out.println(question.getCorrect_ans());
            System.out.println(question.getCategory());
            System.out.println("----------------------");

            pstm.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Question getQuestion(int id) {
        Question question = null;
        String query = "select * from question_data where id=?";
        PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
        try {
            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                question = new Question();
                question.setId(rs.getInt("id"));
                question.setQuestion(rs.getString("question"));
                question.setOption1(rs.getString("option1"));
                question.setOption2(rs.getString("option2"));
                question.setOption3(rs.getString("option3"));
                question.setOption4(rs.getString("option4"));
                question.setCorrect_ans(rs.getString("correct_ans"));
                question.setCategory(rs.getString("category"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return question;
    }

    public void delete(int id) {
        String query = "DELETE FROM `question_data` WHERE id = ?;";
        PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
        try {
            pstm.setInt(1,id);

            pstm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void update(Question question) {
        String query = "UPDATE `question_data` SET `question`=?,`option1`=?,`option2`=?,`option3`=?,`option4`=?,`correct_ans`=?,`category`=? WHERE id=?";
        PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);

        try {
            pstm.setString(1, question.getQuestion());
            pstm.setString(2, question.getOption1());
            pstm.setString(3, question.getOption2());
            pstm.setString(4, question.getOption3());
            pstm.setString(5, question.getOption4());
            pstm.setString(6,question.getCorrect_ans());
            pstm.setString(7,question.getCategory());
            pstm.setInt(8, question.getId());

            System.out.println("----------------------");
            System.out.println(question.getQuestion());
            System.out.println(question.getOption1());
            System.out.println(question.getOption2());
            System.out.println(question.getOption3());
            System.out.println(question.getOption4());
            System.out.println(question.getCorrect_ans());
            System.out.println(question.getCategory());
            System.out.println("----------------------");
            pstm.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
