/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student;

import data.student;
import bean.KolejOrder;
import bean.kolej;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//import java.util.ArrayList;
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
@WebServlet(name = "StudentInsertRequestRoom", urlPatterns = {"/StudentInsertRequestRoom"})
public class StudentInsertRequestRoom extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();

        //User user = (User) session.getAttribute("memberprofile");
        //String username = user.getUsername();
        
        int id = Integer.parseInt(request.getParameter("id"));
        String studentID = request.getParameter("studentID");
        //String status = "pending";
        
        KolejOrder book = new KolejOrder();

        book.setId(id);
        book.setStudentID(studentID);
        kolej k = new kolej ();
        //book.setStatus(status);
       
       out.println(book.getId());
       String sqlQuery = "SELECT * FROM kolej WHERE id = ?";
        try {
            
            student user=(student)session.getAttribute("memberprofile");
            String studentId = user.getStudentID();
            /*-----------------------------------[SQL QUERY]---------------------------------*/
            PreparedStatement preparedStatement = con.prepareStatement(sqlQuery);
            preparedStatement.setInt(1, id);
            //preparedStatement.executeQuery();
            ResultSet rs = preparedStatement.executeQuery();
            String kolejname = "";
            String block = "";
            while (rs.next())
                    {
                        kolejname = rs.getString("kolejname");
                        block = rs.getString("block");
                        
                        
                    }
            //out.println(kolejID);
            //kolej k = new kolej ();
            k.setId (id);
            
            
            /*-----------------------------------[SQL INSERT]---------------------------------*/
            String sqlInsert = "INSERT INTO kolejorder (id, studentID, status, kolejname, block) "
               + "VALUES (?, ?, 'Pending', ?, ?)";
            preparedStatement = con.prepareStatement(sqlInsert);
            preparedStatement.setInt(1, book.getId());
            preparedStatement.setString(2, studentId);
            preparedStatement.setString(3, kolejname);
            
            preparedStatement.setString(4, block);
            preparedStatement.executeUpdate();

        } 
        catch (SQLException ex) 
        {
            out.println(ex);
        }
        session.setAttribute("KolejOrder", book);
        response.sendRedirect(request.getContextPath() + "/StudentViewResultApplyServlet");
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
