package com.DormitoryManagementSystem.controller;

import com.DormitoryManagementSystem.domain.Build;
import com.DormitoryManagementSystem.domain.BuildId;
import com.DormitoryManagementSystem.mapper.BuildMapper;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@RequestMapping("build")
@RestController
public class buildController {
    @Autowired
    private BuildMapper buildMapper;

    @GetMapping("getAllBuildId")
    public Object getAllBuildId(HttpServletRequest request, HttpServletResponse response) {
        List<BuildId> buildId = buildMapper.getAllBuildId();
        JSONObject json = new JSONObject();
        json.put("allBuildId", buildId);
        return json;
    }

}
