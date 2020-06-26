package com.example.mybatis.dao;

import com.example.mybatis.modal.Employee;
import com.example.mybatis.util.MyBatisUtil;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EmployeeMapper {
    public List<Employee> getAllEmployees() {
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        List<Employee> employeeList = session.selectList("getAllEmployees");
        session.commit();
        session.close();
        return employeeList;
    }
}
