package com.emidwife.web.models.entities;

/**
 * Created by hasini on 11/19/16.
 */
public class ChildWeightCycle {

    private int maxAge;
    private int minAge;
    private float maxweight;
    private float minWeight;

    public ChildWeightCycle() {}

    public ChildWeightCycle(int maxAge, int minAge, float maxweight, float minWeight) {
        this.maxAge = maxAge;
        this.minAge = minAge;
        this.maxweight = maxweight;
        this.minWeight = minWeight;
    }

    public int getMaxAge() {
        return maxAge;
    }

    public int getMinAge() {
        return minAge;
    }

    public float getMaxweight() {
        return maxweight;
    }

    public float getMinWeight() {
        return minWeight;
    }

    public void setMaxAge(int maxAge) {
        this.maxAge = maxAge;
    }

    public void setMinAge(int minAge) {
        this.minAge = minAge;
    }

    public void setMaxweight(float maxweight) {
        this.maxweight = maxweight;
    }

    public void setMinWeight(float minWeight) {
        this.minWeight = minWeight;
    }
}
