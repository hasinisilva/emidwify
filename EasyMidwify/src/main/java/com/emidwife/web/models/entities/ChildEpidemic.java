package com.emidwife.web.models.entities;

import java.sql.Date;

/**
 * Created by hasini on 11/20/16.
 */
public class ChildEpidemic {

    private String childId;
    private String epidemicCode;
    private String epidemicName;
    private Date date;
    private String note;

    public ChildEpidemic() {}

    public ChildEpidemic(String childId, String epidemicCode, String epidemicName, Date date, String note) {
        this.childId = childId;
        this.epidemicCode = epidemicCode;
        this.epidemicName = epidemicName;
        this.date = date;
        this.note =note;
    }

    public String getChildId() {
        return childId;
    }

    public Date getDate() {
        return date;
    }

    public String getEpidemicCode() {
        return epidemicCode;
    }

    public String getEpidemicName() {
        return epidemicName;
    }

    public String getNote() {
        return note;
    }

    public void setChildId(String childId) {
        this.childId = childId;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setEpidemicCode(String epidemicCode) {
        this.epidemicCode = epidemicCode;
    }

    public void setEpidemicName(String epidemicName) {
        this.epidemicName = epidemicName;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
