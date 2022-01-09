package com.tenitskydmirty.payroll.model;

public class Engineer implements IEmployee {
    private final int baseSalary;
    private int prize = 0;

    public Engineer(int baseSalary, int prize) {
        this.baseSalary = baseSalary;
        this.prize = prize;
    }

    @Override
    public int getSalary() {
        return baseSalary + prize;
    }
}