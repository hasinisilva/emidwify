package com.emidwife.web.models.entities;

import java.sql.Date;

/**
 * Created by hasini on 11/20/16.
 */
public class ChildDeath {

    private String childId;
    private Date date;
    private String motherId;
    private String reason;

    public ChildDeath() {}

    public ChildDeath(String childId, Date date, String motherId, String reason) {
        this.childId = childId;
        this.date = date;
        this.motherId = motherId;
        this.reason = reason;
    }

    public String getChildId() {
        return childId;
    }

    public Date getDate() {
        return date;
    }

    public String getMotherId() {
        return motherId;
    }

    public String getReason() {
        return reason;
    }

    public void setChildId(String childId) {
        this.childId = childId;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setMotherId(String motherId) {
        this.motherId = motherId;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }
}
