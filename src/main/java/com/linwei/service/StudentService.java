package com.linwei.service;

import com.linwei.domain.Student;

import java.util.List;

/**
 * @date 2021/3/3 21:50
 */
public interface StudentService {

    int addStudent(Student student);

    List<Student> queryStudents();
}
