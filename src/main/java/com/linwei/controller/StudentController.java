package com.linwei.controller;

import com.linwei.domain.Student;
import com.linwei.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * @date 2021/3/3 21:54
 */
@Controller
@RequestMapping("/student")
public class StudentController {

    @Resource
    private StudentService studentService;

    @RequestMapping("/addStudent.do")
    public ModelAndView addStudent(Student student){

        ModelAndView mv = new ModelAndView();
        //调用service处理student数据
        int nums = studentService.addStudent(student);
        String tips = "学生【"+student.getName()+"】注册失败！";
        if (nums > 0){
            //注册成功
            tips = "学生【"+student.getName()+"】注册成功！";
        }
        //添加数据到request作用域
        mv.addObject("tips", tips);
        //指定结果页面（注册了视图解析器，可以用逻辑名称）
        mv.setViewName("result");
        return mv;
    }

    @RequestMapping("/queryStudent.do")
    @ResponseBody
    public List<Student> queryStudent(){
        List<Student> stuList = studentService.queryStudents();
        return stuList;
    }
}
