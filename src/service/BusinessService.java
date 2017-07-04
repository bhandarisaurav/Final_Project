package service;

import domain.Business;
import utils.DatabaseConnection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by saura on 2/12/2017.
 */
public class BusinessService {

    public Business getBusiness(String name, String password) {

        Business business = null;
        String query = "select * from business_users where name=? and password=?";
        PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
        try {
            pstm.setString(1, name);
            pstm.setString(2, password);
            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {

                business = new Business();
                business.setId(rs.getInt("id"));
                business.setName(rs.getString("name"));
                business.setPassword(rs.getString("password"));
                business.setAddress(rs.getString("address"));
                business.setAddress(rs.getString("established_date"));
                business.setAddress(rs.getString("gross_income"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return business;
    }

    public void register(Business business) {
        String query = "INSERT INTO `business_users`(`name`, `password`, `address`, `established_date`, `gross_income`) VALUES (?,?,?,?,?)";
        PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
        try {
            pstm.setString(1,business.getName());
            pstm.setString(2,business.getPassword());
            pstm.setString(3,business.getAddress());
            pstm.setString(4,business.getEstablished_date());
            pstm.setString(5,business.getGross_income());

            System.out.println("----------------------");
            System.out.println(business.getName());
            System.out.println(business.getPassword());
            System.out.println(business.getAddress());
            System.out.println(business.getEstablished_date());
            System.out.println(business.getGross_income());
            System.out.println("----------------------");

            pstm.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Business getBusiness(int id) {
        Business business = null;
        String query = "select * from business_users where id=?";
        PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
        try {
            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                business = new Business();
                business.setId(rs.getInt("id"));
                business.setName(rs.getString("name"));
                business.setPassword(rs.getString("password"));
                business.setAddress(rs.getString("address"));
                business.setEstablished_date(rs.getString("established_date"));
                business.setGross_income(rs.getString("gross_income"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return business;
    }


    public List<Business> getBusinessList() {
        List<Business> businessList = new ArrayList<Business>();

        String query = "select * from business_users";
        PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                Business business = new Business();
                business.setId(rs.getInt("id"));
                business.setName(rs.getString("name"));
                business.setPassword(rs.getString("password"));
                business.setAddress(rs.getString("address"));
                business.setEstablished_date(rs.getString("established_date"));
                business.setGross_income(rs.getString("gross_income"));
                businessList.add(business);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return businessList;
    }


    public void add(Business business) {
        String query = "INSERT INTO `business_users`(`name`, `password`, `address`, `established_date`, `gross_income`) VALUES (?,?,?,?,?)";
        PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
        try {
            pstm.setString(1, business.getName());
            pstm.setString(2, business.getPassword());
            pstm.setString(3,business.getAddress());
            pstm.setString(4,business.getEstablished_date());
            pstm.setString(5,business.getGross_income());

            System.out.println("----------------------");
            System.out.println(business.getName());
            System.out.println(business.getPassword());
            System.out.println(business.getAddress());
            System.out.println(business.getEstablished_date());
            System.out.println(business.getGross_income());
            System.out.println("----------------------");

            pstm.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void delete(int id) {
        String query = "DELETE FROM business_users WHERE id = ?;";
        PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
        try {
            pstm.setInt(1,id);

            pstm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void update(Business business) {
        String query = "update business_users set name=?, password=?, address=?,established_date=?, gross_income=? where id=?";
        PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);

        try {
            pstm.setString(1, business.getName());
            pstm.setString(2, business.getPassword());
            pstm.setString(3, business.getAddress());
            pstm.setString(4, business.getEstablished_date());
            pstm.setString(5, business.getGross_income());
            pstm.setInt(6, business.getId());

            System.out.println("----------------------");
            System.out.println(business.getName());
            System.out.println(business.getPassword());
            System.out.println(business.getAddress());
            System.out.println(business.getEstablished_date());
            System.out.println(business.getGross_income());
            System.out.println(business.getId());
            System.out.println("----------------------");
            pstm.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
//    public void update(int id) {
//        Business business=null;
//        String query = "UPDATE `business_users` SET `name`=?,`password`=?,`address`=?,`established_date`=?,`gross_income`=? WHERE id=?";
//        PreparedStatement pstm = new DatabaseConnection().getPreparedStatement(query);
//
//        try {
//            pstm.setString(1, business.getName());
//            pstm.setString(2, business.getPassword());
//            pstm.setString(3, business.getAddress());
//            pstm.setString(4, business.getEstablished_date());
//            pstm.setString(5, business.getGross_income());
//            pstm.setInt(6, business.getId());
//
//            System.out.println("----------------------");
//            System.out.println(business.getName());
//            System.out.println(business.getPassword());
//            System.out.println(business.getAddress());
//            System.out.println(business.getEstablished_date());
//            System.out.println(business.getGross_income());
//            System.out.println(business.getId());
//            System.out.println("----------------------");
//            pstm.execute();
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }


}
