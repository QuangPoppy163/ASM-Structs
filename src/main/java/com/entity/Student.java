package com.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Student {
@Id
    private String rollNumber;
    private String name;

    public Student() {
    }

    public Student(String rollNumber, String name) {
        this.rollNumber = rollNumber;
        this.name = name;
    }

    public String getRollNumber() {
        return rollNumber;
    }

    public void setRollNumber(String rollNumber) {
        this.rollNumber = rollNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
