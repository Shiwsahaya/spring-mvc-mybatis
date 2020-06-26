package com.example.mybatis.controller;

import com.example.mybatis.dao.EmployeeMapper;
import com.example.mybatis.modal.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class EmployeeController {


    EmployeeMapper employeeMapper;

    public EmployeeController(EmployeeMapper employeeMapper) {
        this.employeeMapper = employeeMapper;
    }

    @RequestMapping("/")
    public ModelAndView index() {

        ModelAndView modelAndView = new ModelAndView("list-employees");
        modelAndView.addObject("listEmployees", employeeMapper.getAllEmployees());
        List<Employee> employees = employeeMapper.getAllEmployees();
        for (Employee employee: employees){
            System.out.println(employee.getId());
            System.out.println(employee.getFullname());
            System.out.println(employee.getEmail());
            System.out.println(employee.getGender());
            System.out.println(employee.getCountry());
            System.out.println(employee.getAddress());
            System.out.println(employee.getHobbies());
        }
        return modelAndView;
    }

}
