package com.emidwife.web.models.entities;

/**
 * Created by hasini on 11/20/16.
 */
public class ChildVaccineAmount {

    private String vaccineCode;
    private int age;
    private float amount;

    public ChildVaccineAmount() {}

    public ChildVaccineAmount(String vaccineCode, int age, float amount) {
        this.vaccineCode = vaccineCode;
        this.age = age;
        this.amount = amount;
    }

    public String getVaccineCode() {
        return vaccineCode;
    }

    public float getAmount() {
        return amount;
    }

    public int getAge() {
        return age;
    }

    public void setVaccineCode(String vaccineCode) {
        this.vaccineCode = vaccineCode;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }
}
