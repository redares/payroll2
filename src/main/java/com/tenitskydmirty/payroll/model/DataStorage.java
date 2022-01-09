package com.tenitskydmirty.payroll.model;

import java.util.ArrayList;
import java.util.List;

public class DataStorage {
    private static final List<IEmployee> employees = new ArrayList<>();

    public static void addEmployee(IEmployee employee) {
        employees.add(employee);
        if(employees.size() > 10) {
            employees.remove(0);
        }
    }

    public static List<IEmployee> getEmployees() {
        return employees;
    }
}