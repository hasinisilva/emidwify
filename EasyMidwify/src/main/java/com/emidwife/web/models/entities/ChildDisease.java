package com.emidwife.web.models.entities;

import java.sql.Date;

/**
 * Created by hasini on 11/20/16.
 */
public class ChildDisease {

    private String childId;
    private String diseaseCode;
    private Date diseaseDate;
    private String diseaseName;
    private String diseaseNote;

    public ChildDisease () {}

    public ChildDisease(String childId, String diseaseCode, Date diseaseDate, String diseaseName, String diseaseNote) {
        this.childId = childId;
        this.diseaseCode = diseaseCode;
        this.diseaseDate = diseaseDate;
        this.diseaseName = diseaseName;
        this.diseaseNote = diseaseNote;
    }

    public String getChildId() {
        return childId;
    }

    public Date getDiseaseDate() {
        return diseaseDate;
    }

    public String getDiseaseCode() {
        return diseaseCode;
    }

    public String getDiseaseName() {
        return diseaseName;
    }

    public String getDiseaseNote() {
        return diseaseNote;
    }

    public void setChildId(String childId) {
        childId = childId;
    }

    public void setDiseaseCode(String diseaseCode) {
        this.diseaseCode = diseaseCode;
    }

    public void setDiseaseDate(Date diseaseDate) {
        this.diseaseDate = diseaseDate;
    }

    public void setDiseaseName(String diseaseName) {
        this.diseaseName = diseaseName;
    }

    public void setDiseaseNote(String diseaseNote) {
        this.diseaseNote = diseaseNote;
    }
}
