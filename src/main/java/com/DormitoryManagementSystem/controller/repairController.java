package com.DormitoryManagementSystem.controller;

import com.DormitoryManagementSystem.domain.Repair;
import com.DormitoryManagementSystem.mapper.RepairMapper;
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
@RequestMapping("repair")
@RestController
public class repairController {
    @Autowired
    private RepairMapper repairMapper;

    @PostMapping("addRepair")
    public Integer addRepair(HttpServletRequest request, HttpServletResponse response) {
        String repairTime = request.getParameter("repairTime");
        String repairGoods = request.getParameter("repairGoods");
        String repairReason = request.getParameter("repairReason");
        String buildId = request.getParameter("buildId");
        String roomId = request.getParameter("roomId");
//        Integer status = Integer.valueOf(request.getParameter("status"));
        Integer addResult = repairMapper.addRepair(repairGoods, repairReason, repairTime, roomId, buildId);
        return addResult;
    }

    @GetMapping("adminGetRepair")
    public Object adminGetRepair(HttpServletRequest request, HttpServletResponse response) {
        Integer role = Integer.valueOf(request.getParameter("role"));
        JSONObject json = new JSONObject();
        if (role == 0) {
            List<Repair> repairs = repairMapper.getAllRepair();
            json.put("repairInfo", repairs);
        } else if (role == 1) {
            String BuildId = request.getParameter("buildId");
            List<Repair> repairs = repairMapper.getRepairByBuildId(BuildId);
            json.put("repairInfo", repairs);
        } else {
            json.put("repairInfo", "您没有权限");

        }
        return json;
    }

    @GetMapping("stuGetRepair")
    public Object stuGetRepair(HttpServletRequest request, HttpServletResponse response) {
        String roomId = request.getParameter("roomId");

        JSONObject json = new JSONObject();
        List<Repair> repairs = repairMapper.getRepairByRoomId(roomId);
        json.put("repairInfo", repairs);
        return json;
    }

    @GetMapping("dealOneRepair")
    public Boolean dealOneRepair(HttpServletRequest request, HttpServletResponse response) {
        Integer id = Integer.valueOf(request.getParameter("id"));
        Integer result = repairMapper.dealOneRepair(id);

        if (result == 1) {
            return true;
        } else {
            return false;
        }
    }
}
