/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;

/**
 *
 * @author Harris D.Ilham Adni
 */
public class Order2 implements Serializable {

    /**
     * @return the availability
     */
    public int getAvailability() {
        return availability;
    }

    /**
     * @param availability the availability to set
     */
    public void setAvailability(int availability) {
        this.availability = availability;
    }

    /**
     * @return the capacity
     */
    public int getCapacity() {
        return capacity;
    }

    /**
     * @param capacity the capacity to set
     */
    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }
    
    private String studentID, block, orderID, id, kolejname, status;
    private int availability;
    private int capacity;
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
     * @return the block
     */
    public String getBlock() {
        return block;
    }

    /**
     * @param block the block to set
     */
    public void setBlock(String block) {
        this.block = block;
    }

    /**
     * @return the orderID
     */
    public String getOrderID() {
        return orderID;
    }

    /**
     * @param orderID the orderID to set
     */
    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    /**
     * @return the kolejID
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the kolejID to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the kolejname
     */
    public String getKolejname() {
        return kolejname;
    }

    /**
     * @param kolejname the kolejname to set
     */
    public void setKolejname(String kolejname) {
        this.kolejname = kolejname;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }
    
//constructor 6 param, set all attr.
    public Order2 (String studentID, String block, String orderID, String id, String kolejname, String status,int availability, int capacity ){
        this.studentID= studentID;
        this.block= block;
        this.orderID= orderID;
        this.id= id;
        this.kolejname= kolejname;
        this.status = status;
        this.capacity=capacity;
        this.availability=availability;
   
    }
 
  
}
