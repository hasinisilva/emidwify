package com.emidwife.web.models.entities;

/**
 * Created by hasini on 9/16/16.
 */
public class Vaccine {

    private String vaccineCode;
    private String vaccineName;

    public Vaccine() {}

    public Vaccine(String vaccineCode, String vaccineName) {
        this.vaccineCode = vaccineCode;
        this.vaccineName = vaccineName;
    }

    public String getVaccineCode() {
        return vaccineCode;
    }

    public String getVaccineName() {
        return vaccineName;
    }

    public void setVaccineCode(String vaccineCode) {
        this.vaccineCode = vaccineCode;
    }

    public void setVaccineName(String vaccineName) {
        this.vaccineName = vaccineName;
    }
}
