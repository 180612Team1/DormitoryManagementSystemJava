package com.DormitoryManagementSystem.controller;

import com.DormitoryManagementSystem.domain.Notice;
import com.DormitoryManagementSystem.mapper.NoticeMapper;
import lombok.extern.slf4j.Slf4j;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Slf4j
@RequestMapping("notice")
@RestController
public class noticeController {
    @Autowired
    private NoticeMapper noticeMapper;

    @GetMapping("getAllNotices")
    public Object getAllNotices(HttpServletRequest request, HttpServletResponse response) {
        Integer schoolId = Integer.valueOf(request.getParameter("schoolId"));
        String buildId = noticeMapper.getBuildId(schoolId);
        System.out.println(buildId);
        Integer role = Integer.valueOf(noticeMapper.getRole(schoolId));
        System.out.println(role);
        JSONObject json = new JSONObject();
        if (role == 0) {
            List<Notice> notice = noticeMapper.getAllNotices();

            json.put("notice", notice);
        }
        else{
            List<Notice> notice = noticeMapper.getAllNoticesByid(buildId);
            json.put("notice", notice);
        }
        return json;
    }

    @PostMapping("addNotice")
    public Object addNotice(HttpServletRequest request, HttpServletResponse response) {
        return 2;
    }
}
