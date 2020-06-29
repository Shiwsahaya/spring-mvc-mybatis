package com.example.mybatis.controller;

import com.example.mybatis.dao.EmployeeMapper;
import com.example.mybatis.modal.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
public class EmployeeController {


    @Autowired
    EmployeeMapper employeeMapper;

    @GetMapping("/")
    public ModelAndView index() {

        ModelAndView modelAndView = new ModelAndView("employees-list");
        modelAndView.addObject("employeeList", employeeMapper.getAllEmployees());
        List<Employee> employees = employeeMapper.getAllEmployees();
        return modelAndView;

    }

    @GetMapping("/add")
    public String newPost(Map<String,Object> model) {
        model.put("employee", new Employee());
        return "new-employee";

    }

    @PostMapping(value = "/save")
    public String saveEmployee(@ModelAttribute("employee") Employee employee) {
        if (employee.getId() == null) {
            employeeMapper.saveEmployee(employee);
        }
        else {
            employeeMapper.updateEmployee(employee);
        }
        return "redirect:/";

    }

    @GetMapping("/edit")
    public ModelAndView editPosts(@RequestParam("id") int id) {
        ModelAndView modelAndView=new ModelAndView("edit-employee-details");
        Employee employee=employeeMapper.findById(id);
        modelAndView.addObject("employee",employee);
        return modelAndView;

    }

    @RequestMapping(value = "/delete/{id}")
    public String delete(@PathVariable("id") int id) {
        employeeMapper.deleteEmployee(id);
        return "redirect:/";

    }

}
