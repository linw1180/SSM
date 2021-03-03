package com.linwei.dao;

import com.linwei.domain.Student;

import java.util.List;

/**
 * @date 2021/3/3 21:45
 */
public interface StudentDao {

    //添加
    int insertStudent(Student student);

    //查询
    List<Student> selectStudents();

}
