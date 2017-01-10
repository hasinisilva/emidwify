package com.emidwife.web.models.entities;

/**
 * Created by hasini on 11/20/16.
 */
public class Mother {

    private String guardianId;
    private String motherId;

    public Mother() {}

    public Mother(String guardianId, String motherId) {
        this.guardianId = guardianId;
        this.motherId = motherId;
    }

    public String getGuardianId() {
        return guardianId;
    }

    public String getMotherId() {
        return motherId;
    }

    public void setGuardianId(String guardianId) {
        this.guardianId = guardianId;
    }

    public void setMotherId(String motherId) {
        this.motherId = motherId;
    }
}
