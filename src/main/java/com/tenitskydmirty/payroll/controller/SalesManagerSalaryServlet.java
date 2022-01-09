package com.tenitskydmirty.payroll.controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.tenitskydmirty.payroll.model.DataStorage;
import com.tenitskydmirty.payroll.model.IEmployee;
import com.tenitskydmirty.payroll.model.SalesManager;
import com.tenitskydmirty.payroll.model.Worker;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SalesManagerSalaryServlet", urlPatterns = "/calculateSalesManagerSalary")
public class SalesManagerSalaryServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        JsonObject data = new Gson().fromJson(req.getReader(), JsonObject.class);

        int baseSalary = data.get("baseSalary").getAsInt();
        int bonus = data.get("bonus").getAsInt();
        int tCount = data.get("tCount").getAsInt();


        IEmployee employee = new SalesManager(baseSalary, bonus, tCount);
        DataStorage.addEmployee(employee);

        String answer = employee.getSalary() + "";

        resp.setContentType("text/plain");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().write(answer);
    }
}