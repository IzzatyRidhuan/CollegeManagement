/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;

/**
 *
 * @author Najihah Zanudin
 */
public class RequestCollege implements Serializable {

    /**
     * @return the bookid
     */
    public String getBookid() {
        return bookid;
    }

    /**
     * @param bookid the bookid to set
     */
    public void setBookid(String bookid) {
        this.bookid = bookid;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the roomno
     */
    public String getRoomno() {
        String r = "";
        int i = 0;
        for (String room : roomno) {
            if (roomno.length <= 0) {
                return "";
            } else if (roomno.length == 1) {
                return roomno[0];
            } else if (i == 0) {
                r += room;
            }
            r = r + "," + room;
            i++;
        }
        return r;
    }

    /**
     * @param roomno the roomno to set
     */
    public void setRoomno(String[] roomno) {
        this.roomno = roomno;
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

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    private String bookid;
    private String username;
    private String[] roomno;
    private String status;
    private String id;
}
