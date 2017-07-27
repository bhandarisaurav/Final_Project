package domain;

/**
 * Created by User on 3/17/2017.
 */
public class Quiz {
    int uid;
    int marks;
    int qid;
    String user_ans;
    String question;
    String correct_ans;

    String correctAnswerSt;
    String chosenAnswerSt;

    public int getUid() { return uid; }

    public void setUid(int uid) { this.uid = uid; }

    public int getMarks() { return marks; }

    public void setMarks(int marks) { this.marks = marks; }

    public int getQid() { return qid; }

    public void setQid(int qid) { this.qid = qid; }

    public String getUser_ans() { return user_ans; }

    public void setUser_ans(String userAns) { this.user_ans = userAns; }

    public String getQuestion() { return question; }

    public void setQuestion(String question) { this.question = question; }

    public String getCorrect_ans() { return correct_ans; }

    public void setCorrect_ans(String correctAns) { this.correct_ans = correctAns;  }

    public String getCorrectAnswerSt() { return correctAnswerSt;  }

    public void setCorrectAnswerSt(String correctAnswerSt) { this.correctAnswerSt = correctAnswerSt; }

    public String getChosenAnswerSt() { return chosenAnswerSt; }

    public void setChosenAnswerSt(String chosenAnswerSt) { this.chosenAnswerSt = chosenAnswerSt; }
}
