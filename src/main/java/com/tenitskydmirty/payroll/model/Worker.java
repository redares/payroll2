package com.tenitskydmirty.payroll.model;

public class Worker implements IEmployee {
    private int hourlyRate;
    private int hours;
    private int overtimeHours;

    public Worker(int hourlyRate, int hours, int overtimeHours) {
        this.hourlyRate = hourlyRate;
        this.hours = hours;
        this.overtimeHours = overtimeHours;
    }

    @Override
    public int getSalary() {
        return (hourlyRate * hours) + (hourlyRate * 2 * overtimeHours);
    }
}

