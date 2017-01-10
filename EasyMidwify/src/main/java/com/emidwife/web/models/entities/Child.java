package com.emidwife.web.models.entities;


import java.sql.Date;

/**
 * Created by hasini on 9/16/16.
 */
public class Child {

    private String childId;
    private float childBirthWeight;
    private Date childDateofDelivary;
    private String childFatherId;
    private String childName;
    private String childNotes;
    private String childPicture;
    private Date childRegisteredDate;
    private String guardianId;

    public Child() {}

    public Child(String childId, float childBirthWeight, Date childDateofDelivary, String childFatherId,
                 String childName, String childNotes, String childPicture, Date childRegisteredDate, String guardianId) {
        this.childId = childId;
        this.childBirthWeight = childBirthWeight;
        this.childDateofDelivary = childDateofDelivary;
        this.childFatherId = childFatherId;
        this.childName = childName;
        this.childNotes = childNotes;
        this.childPicture = childPicture;
        this.childRegisteredDate = childRegisteredDate;
        this.guardianId = guardianId;
    }

    public String getChildId() {
        return childId;
    }

    public float getChildBirthWeight() {
        return childBirthWeight;
    }

    public Date getChildDateofDelivary() {
        return childDateofDelivary;
    }

    public String getChildFatherId() {
        return childFatherId;
    }

    public String getChildName() {
        return childName;
    }

    public String getChildNotes() {
        return childNotes;
    }

    public String getChildPicture() {
        return childPicture;
    }

    public Date getChildRegisteredDate() {
        return childRegisteredDate;
    }

    public String getGuardianId() {
        return guardianId;
    }

    public void setChildId(String childId) {
        this.childId = childId;
    }

    public void setChildBirthWeight(float childBirthWeight) {
        this.childBirthWeight = childBirthWeight;
    }

    public void setChildDateofDelivary(Date childDateofDelivary) {
        this.childDateofDelivary = childDateofDelivary;
    }

    public void setGuardianId(String guardianId) {
        this.guardianId = guardianId;
    }

    public void setChildFatherId(String childFatherId) {
        this.childFatherId = childFatherId;
    }

    public void setChildName(String childName) {
        this.childName = childName;
    }

    public void setChildNotes(String childNotes) {
        this.childNotes = childNotes;
    }

    public void setChildPicture(String childPicture) {
        this.childPicture = childPicture;
    }

    public void setChildRegisteredDate(Date childRegisteredDate) {
        this.childRegisteredDate = childRegisteredDate;
    }

}
