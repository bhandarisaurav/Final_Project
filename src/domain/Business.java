package domain;

/**
 * Created by saura on 2/12/2017.
 */
public class Business {

    int id;
    String name;
    String password;
    String address;
    String established_date;
    String gross_income;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEstablished_date() {
        return established_date;
    }

    public void setEstablished_date(String established_date) {
        this.established_date = established_date;
    }

    public String getGross_income() {
        return gross_income;
    }

    public void setGross_income(String gross_income) {
        this.gross_income = gross_income;
    }
}
