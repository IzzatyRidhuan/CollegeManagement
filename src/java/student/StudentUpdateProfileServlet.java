/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package student;

import data.student;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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

@WebServlet(name = "StudentUpdateProfileServlet", urlPatterns = {"/StudentUpdateProfileServlet"})
public class StudentUpdateProfileServlet extends HttpServlet {

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
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        //get form data from VIEW > V-I
        String studentID = request.getParameter("studentID");
        String studentpassword = request.getParameter("studentpassword");
        String studentname = request.getParameter("studentname");
        String studentphoneno = request.getParameter("studentphoneno");
       // String userType = "admin";
       // String image = request.getParameter("image");
        
        String sqlUpdate = "UPDATE student SET studentpassword = ?, studentname = ?, studentphoneno = ? WHERE studentID = ?"; 
        
        try {
            PreparedStatement preparedStatement = con.prepareStatement(sqlUpdate);
            preparedStatement.setString(1, studentpassword);
          //  preparedStatement.setString(2, userType);
            preparedStatement.setString(2, studentname);
            preparedStatement.setString(3, studentphoneno);
            preparedStatement.setString(4, studentID);
            preparedStatement.executeUpdate();
            
            student s = new student();
            s.setStudentID(studentID);
            s.setStudentname(studentname);
            s.setStudentpassword(studentpassword);
          //  user.setImage(image);
            s.setStudentphoneno(studentphoneno);
            
            //request.setAttribute("newuser", user);
            //sendPage(request, response, "/regsuccess.jsp");
            
            //Get the session object
            //sendRedirect doesn't recognise request object
            //only session
            
            session.setAttribute("memberprofile", s);
            response.sendRedirect(request.getContextPath() + "/StudentProfile.jsp");
        }
        catch (SQLException ex) {   
            PrintWriter out = response.getWriter();
            out.println(ex);
        }
    }
    
    void sendPage(HttpServletRequest req, HttpServletResponse res, String fileName) throws ServletException, IOException
    {
        // Get the dispatcher; it gets the main page to the user
	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(fileName);

	if (dispatcher == null)
	{
            System.out.println("There was no dispatcher");
	    // No dispatcher means the html file could not be found.
	    res.sendError(res.SC_NO_CONTENT);
	}
	else
	    dispatcher.forward(req, res);
    }        

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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