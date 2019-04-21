/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author SyahIIIr
 */
public class Student {
    private String studentpassword,studentID;
 
    

    /**
     * @return the studentID
     */
    public String getStudentID() {
        return studentID;
    }

    /**
     * @param studentID the studentID to set
     */
    public void setStudentID(String studentID) {
        this.studentID = studentID;
    }

    /**
     * @return the studentpassword
     */
    public String getStudentpassword() {
        return studentpassword;
    }

    /**
     * @param studentpassword the studentpassword to set
     */
    public void setStudentpassword(String studentpassword) {
        this.studentpassword = studentpassword;
    }
}
