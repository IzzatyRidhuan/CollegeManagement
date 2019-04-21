/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.io.Serializable;
/**
 *
 * @author USER
 */
public class Kolej implements Serializable{
    private String kolejname, block;
    private int capacity, cap, kolejID; 

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
     * @return the cap
     */
    public int getCap() {
        return cap;
    }

    /**
     * @param cap the cap to set
     */
    public void setCap(int cap) {
        this.cap = cap;
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

    /**
     * @return the kolejID
     */
    public int getKolejID() {
        return kolejID;
    }

    /**
     * @param kolejID the kolejID to set
     */
    public void setKolejID(int kolejID) {
        this.kolejID = kolejID;
    }
    
}
