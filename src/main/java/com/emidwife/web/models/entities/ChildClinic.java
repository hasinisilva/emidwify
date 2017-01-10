package com.emidwife.web.models.entities;

import java.sql.Date;

/**
 * Created by hasini on 11/19/16.
 */
public class ChildClinic {

    private String childId;
    private String age;
    private Date clinicDate;
    private Date updatedDate;
    private float weight;

    public ChildClinic() {}

    public ChildClinic(String childId, String age, Date clinicDate, Date updatedDate, float weight) {
        this.childId = childId;
        this.age = age;
        this.clinicDate = clinicDate;
        this.updatedDate = updatedDate;
        this.weight = weight;
    }

    public String getChildId() {
        return childId;
    }

    public String getAge() {
        return age;
    }

    public Date getClinicDetails() {
        return clinicDate;
    }

    public Date getUpdatedDate() {
        return updatedDate;
    }

    public float getWeight() {
        return weight;
    }

    public void setChildId(String childId) {
        this.childId = childId;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public void setClinicDetails(Date clinicDate) {
        this.clinicDate = clinicDate;
    }

    public void setUpdatedDate(Date updatedDate) {
        this.updatedDate = updatedDate;
    }

    public void setWeight(float weight) {
        this.weight = weight;
    }
}
