package com.tenitskydmirty.payroll.model;

public class SalesManager implements IEmployee {
    private int baseSalary;
    private int bonus;
    private int transactionCount;

    public SalesManager(int baseSalary, int bonus, int transactionCount) {
        this.baseSalary = baseSalary;
        this.bonus = bonus;
        this.transactionCount = transactionCount;
    }

    @Override
    public int getSalary() {
        return baseSalary + bonus * transactionCount;
    }
}