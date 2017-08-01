package controller;
import domain.Business;
import service.BusinessService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created by Saurav on 1/31/2017.
 */
public class BusinessServlet extends javax.servlet.http.HttpServlet {
    private Object HttpServletRequest;

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        System.out.println("Success");
        String page = request.getParameter("page");

        UserServlet.checkSession(request, response, page);

//        if(!page.equalsIgnoreCase("login") && !page.equalsIgnoreCase("logout")){
//            HttpSession session = request.getSession(false);
//            Business business = (Business) session.getAttribute("business");
//
//            if (business == null){
//                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//                rd.forward(request, response);
//             //   return;
//            }
//        }

//        if (page.equalsIgnoreCase("login")) {
//
//            String name = request.getParameter("username");
//            String password = request.getParameter("password");
//
//            Business business = new BusinessService().getBusiness(name, password);
//            System.out.println(name);
//            System.out.println(password);
//
//            if (business != null) {
//
//                HttpSession session = request.getSession(false);
//                session.setAttribute("business",business);
//
//
//                RequestDispatcher rd = request.getRequestDispatcher("business/home.jsp");
//                rd.forward(request, response);
//            } else {
//                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//                rd.forward(request, response);
//            }
//        }

//        if (page.equalsIgnoreCase("register")) {
//
//           Business business = new Business();
//           business.setName(request.getParameter("username"));
//           business.setPassword(request.getParameter("password"));
//           business.setAddress(request.getParameter("address"));
//           business.setEstablished_date(request.getParameter("established_date"));
//           business.setGross_income(request.getParameter("gross_income"));
//
//
//            new BusinessService().register(business);
//            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//            rd.forward(request, response);
//
//        }
//
//
//        if (page.equalsIgnoreCase("logout")) {
//
//            HttpSession session = request.getSession(false);
//            session.invalidate();
//
//            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//            rd.forward(request, response);
//        }

        if (page.equalsIgnoreCase("navbar")) {
            RequestDispatcher rd = request.getRequestDispatcher("user/home.jsp");
            rd.forward(request, response);
        }


        if (page.equalsIgnoreCase("list")) {
            redirectToList(request, response);
        }

        if (page.equalsIgnoreCase("businessForm")) {
            RequestDispatcher rd = request.getRequestDispatcher("business/businessForm.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("addBusiness")) {

            Business business = new Business();
            business.setName(request.getParameter("username"));
            business.setPassword(request.getParameter("password"));
            business.setAddress(request.getParameter("address"));
            business.setEstablished_date(request.getParameter("established_date"));
            business.setGross_income(request.getParameter("gross_income"));

            new BusinessService().add(business);
            redirectToList(request, response);
        }

        if(page.equalsIgnoreCase("delete")){
            int id = Integer.parseInt(request.getParameter("id"));
            new BusinessService().delete(id);
            redirectToList(request,response);
        }

        if (page.equalsIgnoreCase("edit")) {
            int id = Integer.parseInt(request.getParameter("id"));
            Business business = new BusinessService().getBusiness(id);
            request.setAttribute("business", business);

            RequestDispatcher rd = request.getRequestDispatcher("business/editBusiness.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("update")) {

            Business business = new Business();
            business.setId(Integer.parseInt(request.getParameter("id")));
            business.setName(request.getParameter("username"));
            business.setPassword(request.getParameter("password"));
            business.setAddress(request.getParameter("address"));
            business.setEstablished_date(request.getParameter("established_date"));
            business.setGross_income(request.getParameter("gross_income"));

            new BusinessService().update(business);

            redirectToList(request, response);
        }


    }

    private void redirectToList(javax.servlet.http.HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Business> businessList = new BusinessService().getBusinessList();
        request.setAttribute("businessList", businessList);

        RequestDispatcher rd = request.getRequestDispatcher("business/list.jsp");
        rd.forward(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request,response);
    }
}
