package com.emidwife.web.models.entities;

import java.sql.Date;

/**
 * Created by hasini on 11/20/16.
 */
public class ChildGivenVaccine {

    private String childId;
    private float vaccineAmount;
    private String vaccineCode;
    private String vaccineName;
    private Date clinicDate;

    public ChildGivenVaccine() {}

    public ChildGivenVaccine(String childId, float vaccineAmount, String vaccineCode, String vaccineName, Date clinicDate) {
        this.childId = childId;
        this.vaccineAmount = vaccineAmount;
        this.vaccineCode = vaccineCode;
        this. vaccineName = vaccineName;
        this.clinicDate = clinicDate;
    }

    public String getChildId() {
        return childId;
    }

    public Date getClinicDate() {
        return clinicDate;
    }

    public float getVaccineAmount() {
        return vaccineAmount;
    }

    public String getVaccineCode() {
        return vaccineCode;
    }

    public String getVaccineName() {
        return vaccineName;
    }

    public void setChildId(String childId) {
        this.childId = childId;
    }

    public void setClinicDate(Date clinicDate) {
        this.clinicDate = clinicDate;
    }

    public void setVaccineAmount(float vaccineAmount) {
        this.vaccineAmount = vaccineAmount;
    }

    public void setVaccineCode(String vaccineCode) {
        this.vaccineCode = vaccineCode;
    }

    public void setVaccineName(String vaccineName) {
        this.vaccineName = vaccineName;
    }

}
