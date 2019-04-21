/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import bean.SetCollege;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdbc.JDBCUtility;

/**
 *
 * @author Najihah Zanudin
 */
@WebServlet(name = "AddCollegeServlet2", urlPatterns = {"/AddCollegeServlet2"})
public class AddCollegeServlet2 extends HttpServlet {

    private JDBCUtility jdbcUtility;
    private Connection con;

    public void init() throws ServletException {
        String driver = "com.mysql.jdbc.Driver";

        String dbName = "college";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String password = "";

        jdbcUtility = new JDBCUtility(driver,
                url,
                userName,
                password);

        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();

        ArrayList collegeList = new ArrayList();

        SetCollege c = new SetCollege();
        
        String roomtype = request.getParameter("roomtype");
        String date = request.getParameter("date");
        String block = request.getParameter("block");
        String period = request.getParameter("period");
        Double price = Double.parseDouble(request.getParameter("price"));
       
        String sqlInsert = "INSERT INTO setcollege (roomtype, date, block, period, price, status) VALUES(?, ?, ?, ?, ?, 'active')";

        try {
            PreparedStatement preparedStatement = con.prepareStatement(sqlInsert);

            preparedStatement.setString(1, roomtype);
            preparedStatement.setString(2, date);
            preparedStatement.setString(3, block);
            preparedStatement.setString(4, period);
            preparedStatement.setDouble(5, price);
            preparedStatement.executeUpdate();
             
            out.println (roomtype);
        out.println (date);
        out.println (block);
        out.println (period);
        out.println (price);

            c.setRoomtype(roomtype);
            c.setDate(date);
            c.setBlock(block);
            c.setPeriod(period);
            c.setPrice(price);
            c.setStatus("active"); 

            String sqlQuery = "SELECT * FROM setcollege ORDER BY roomtype ASC";

            preparedStatement = con.prepareStatement(sqlQuery);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String collegeRoomtype = rs.getString("roomtype");
                String collegeDate = rs.getString("date");
                String collegeBlock = rs.getString("block");
                String collegePeriod = rs.getString("period");
                double collegePrice = rs.getDouble("price");
                String collegeStatus = rs.getString("status");

                int id = rs.getInt("id");

                SetCollege college = new SetCollege();
                college.setRoomtype(collegeRoomtype);
                college.setDate(collegeDate);
                college.setBlock(collegeBlock);
                college.setPeriod(collegePeriod);
                college.setPrice(collegePrice);

                college.setStatus(collegeStatus);
                college.setId(id);
                collegeList.add(college);
            }
        session.setAttribute("collegelist",collegeList); 
       response.sendRedirect(request.getContextPath() + "/ManageDataServlet"); 
        } 
        catch (SQLException ex) 
        {}

       // session.setAttribute("collegelist",c);
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
