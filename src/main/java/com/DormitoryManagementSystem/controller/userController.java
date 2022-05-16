package com.DormitoryManagementSystem.controller;

import com.DormitoryManagementSystem.mapper.UserMapper;
import com.DormitoryManagementSystem.domain.User;
import lombok.extern.slf4j.Slf4j;
import net.sf.json.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import java.util.List;
import java.util.Objects;
import java.util.logging.Logger;

@Slf4j
@RequestMapping("user")
@RestController
public class userController {
    @Autowired
    private UserMapper userMapper;

    @GetMapping("getAllUsers")
    public Object getAllUsers(HttpServletRequest request, HttpServletResponse response) {

        List<User> user = userMapper.selectAllUsers();
        JSONObject json = new JSONObject();
        System.out.println(user);
        json.put("user", user);
        return json;
    }

    @GetMapping("getUserRoleAndTrueName")
    public Object getRole(HttpServletRequest request, HttpServletResponse response) {
        Integer schoolId = Integer.valueOf(request.getParameter("schoolId"));
        String role = userMapper.getRole(schoolId);
        String trueName = userMapper.getTrueName(schoolId);
        JSONObject json = new JSONObject();
        json.put("role", role);
        json.put("trueName", trueName);
        return json;
    }

    @GetMapping("getAllAdmin")
    public Object getAllAdmin(HttpServletRequest request, HttpServletResponse response) {
        List<User> user = userMapper.getAllAdmin();
        return user;
    }
    @GetMapping("getAllStudent")
    public Object getAllStudent(HttpServletRequest request, HttpServletResponse response) {
        Integer role = Integer.valueOf(request.getParameter("role"));
        List<User> user = null;
        if(role ==0) {
            user = userMapper.getAllStudent();
        }
        if(role ==1){
            String buildId = request.getParameter("buildId");
            user = userMapper.getBuildStudent(buildId);
        }
        return user;
    }

    @PostMapping("login")
    public Object login(HttpServletRequest request, HttpServletResponse response,@RequestBody User userInfo) {
        System.out.println(userInfo);

        String userName = userInfo.getUserName();
        String passWord = userInfo.getPassWord();
        User user = userMapper.selectUser(userName);
        System.out.println(userName);
        JSONObject json = new JSONObject();
        if (user == null) {
            json.put("code", "1001");
            json.put("message", "登录失败");
            return json;
        }
        if (Objects.equals(passWord, user.getPassWord())) {
            json.put("code", "1000");
            json.put("message", "登录成功");
            json.put("id", user.getId());
            json.put("role", user.getRole());
            json.put("schoolId", user.getSchoolId());
            json.put("trueName", user.getTrueName());
            json.put("phoneNumber", user.getPhoneNumber());
            json.put("checkTime", user.getCheckTime());
            json.put("roomId", user.getRoomId());
            json.put("buildId", user.getBuildId());
            json.put("userName", user.getUserName());
            json.put("updateTime", user.getUpdateTime());
            json.put("deleteTime", user.getDeleteTime());
            return json;
        }
        json.put("code", "1002");
        json.put("message", "登录失败,密码错误");
        return json;
    }

    @GetMapping("searchUser")
    public Object searchUser(HttpServletRequest request, HttpServletResponse response) {
        String trueName = request.getParameter("trueName");
        String userName = request.getParameter("userName");
        List<User> resultCount = userMapper.searchUser(trueName, userName);
        System.out.println(resultCount);
        JSONObject json = new JSONObject();
        if (resultCount.isEmpty()) {
            json.put("code", "1000");
            json.put("message", "success");
            return json;
        } else {
            json.put("code", "1001");
            json.put("message", "faild");
            return json;
        }
    }

    @GetMapping("getStudentsByBuildId")
    public Object getStudentsByBuildId(HttpServletRequest request, HttpServletResponse response) {
        String buildId = request.getParameter("buildId");
        Integer count = null;
        try {
            count = userMapper.getStudentsByBuildId(buildId);
        } catch (Exception e) {
          Logger.getLogger(e.getMessage());
        }
        return count;
    }

    @GetMapping("deleteAdminBySchoolId")
    public boolean deleteAdminBySchoolId(HttpServletRequest request, HttpServletResponse response) {
        int schoolId = Integer.parseInt(request.getParameter("schoolId"));
        if (userMapper.deleteAdminBySchoolId(schoolId)) {
            return true;
        }
        return false;
    }

    @GetMapping("addAdmin")
    public Object addAdmin(HttpServletRequest request, HttpServletResponse response) {
        String schoolId = request.getParameter("schoolId");
        String userName = request.getParameter("userName");
        String passWord = request.getParameter("passWord");
        String phoneNumber = request.getParameter("phoneNumber");
        String trueName = request.getParameter("trueName");
        int role = Integer.parseInt(request.getParameter("role"));
        String checkTime = request.getParameter("checkTime");
        String buildId = request.getParameter("buildId");

        int resultCount = 0;
        try {
            resultCount = userMapper.addAdmin(schoolId, userName, passWord, phoneNumber, trueName, role, checkTime, buildId);
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        JSONObject json = new JSONObject();
        if (resultCount == 0) {
            json.put("code", "1001");
            json.put("message", "注册失败");
            return json;
        }
        json.put("code", "1000");
        json.put("message", "注册成功");
        return json;
    }

    @PostMapping("addStu")
    public boolean addStu(HttpServletRequest request,HttpServletResponse response){
        String schoolId = request.getParameter("schoolId");
        String userName = request.getParameter("userName");
        String passWord = request.getParameter("passWord");
        String phoneNumber = request.getParameter("phoneNumber");
        String trueName = request.getParameter("trueName");
        String buildId = request.getParameter("buildId");
        String roomId = request.getParameter("roomId");
        String checkTime = request.getParameter("checkTime");
        String updateTime = request.getParameter("updateTime");

        Integer result = userMapper.addStu(schoolId,userName,passWord,phoneNumber,trueName,checkTime,buildId,roomId,updateTime);
        if (result == 1) {
            return true;
        } else {
            return false;
        }
    }

}
