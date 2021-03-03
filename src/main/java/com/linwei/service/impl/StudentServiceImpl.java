package com.linwei.service.impl;

import com.linwei.dao.StudentDao;
import com.linwei.domain.Student;
import com.linwei.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @date 2021/3/3 21:51
 */
@Service
public class StudentServiceImpl implements StudentService {

    @Resource
    private StudentDao studentDao;

    @Override
    public int addStudent(Student student) {
        int nums = studentDao.insertStudent(student);
        return nums;
    }

    @Override
    public List<Student> queryStudents() {

        return studentDao.selectStudents();
    }
}
