/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import bean.kolej;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
@WebServlet(name = "EditCollegeProcessServlet", urlPatterns = {"/EditCollegeProcessServlet"})
public class EditCollegeProcessServlet extends HttpServlet {
    private JDBCUtility jdbcUtility;
    private Connection con;
    
    public void init() throws ServletException
    {
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
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        ArrayList collegeList = new ArrayList();  
        
        //get form data from VIEW > V-I
        String kolejname = request.getParameter("kolejname");
       
        String block = request.getParameter("block");
   
        String id = request.getParameter("id");
        
        String sqlUpdate = "UPDATE kolej SET kolejname= ?, block = ? WHERE id = ?"; 
        
        try {
            PreparedStatement preparedStatement = con.prepareStatement(sqlUpdate);
            preparedStatement.setString(1, kolejname);
         
            preparedStatement.setString(3, block);

            preparedStatement.setString(6, id);
            preparedStatement.executeUpdate();
            
            String sqlQuery = "SELECT * FROM kolejorder ORDER BY kolejname ASC";
            
            preparedStatement = con.prepareStatement(sqlQuery);
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
                String collegeKolejname = rs.getString("kolejname");
               
                String collegeBlock = rs.getString("block");
        
                
                String collegeStatus = rs.getString("status");
                int setCollegeId = rs.getInt("id");
                
                kolej college = new kolej();
                college.setKolejname(collegeKolejname);
             
                college.setBlock(collegeBlock);
   
                
                college.setStatus(collegeStatus);
                college.setId(setCollegeId);
                collegeList.add(college);
            }
        }
        catch (SQLException ex) {            
        }
        
        session.setAttribute("collegelist", collegeList);
        response.sendRedirect(request.getContextPath() + "/ManageDataServlet"); 
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
