/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student;

import data.student;
import data.student;
import data.kolejorder;
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
 * @author USER
 */
@WebServlet(name = "StudentViewResultApplyServlet", urlPatterns = {"/StudentViewResultApplyServlet"})
public class StudentViewResultApplyServlet extends HttpServlet 
{
    private JDBCUtility jdbcUtility;
    private Connection con;

    public void init() throws ServletException 
    {
        String driver = "com.mysql.jdbc.Driver";

        String dbName = "college";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String password = "";

        jdbcUtility = new JDBCUtility(driver,url,userName,password);

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
             /* TODO output your page here. You may use following sample code. */
        HttpSession session = request.getSession();
        
        student stud = (student)session.getAttribute("memberprofile");
        String studentID = stud.getStudentID();
        out.println("test");
        ArrayList koList = new ArrayList();        
                    

        String sqlQuery = "SELECT * FROM kolejorder WHERE studentID = ? ";
        System.out.println(sqlQuery);
        try {
            
            PreparedStatement preparedStatement = con.prepareStatement(sqlQuery);
            preparedStatement.setString(1, studentID);
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) 
            {
                int orderid = rs.getInt("orderID");
                String kolejname = rs.getString("kolejname");
                String block = rs.getString("block");
                String status = rs.getString("status");
                
                kolejorder ko = new kolejorder();
                ko.setOrderID(orderid);
                ko.setKolejname(kolejname);
                ko.setBlock(block);
                ko.setStatus(status);
                
                koList.add(ko);
            }
        }
        catch (SQLException ex) { 
            out.println(ex);
        }
        
        session.setAttribute("KolejOrder", koList);
        response.sendRedirect(request.getContextPath() + "/StudentViewResultApply.jsp");   
        }
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
