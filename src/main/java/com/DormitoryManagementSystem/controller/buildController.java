package com.DormitoryManagementSystem.controller;

import com.DormitoryManagementSystem.domain.Build;
import com.DormitoryManagementSystem.domain.BuildId;
import com.DormitoryManagementSystem.mapper.BuildMapper;
import com.DormitoryManagementSystem.mapper.RoomsMapper;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
    @Autowired
    RoomsMapper roomsMapper;

    @GetMapping("getAllBuildId")
    public Object getAllBuildId(HttpServletRequest request, HttpServletResponse response) {
        List<BuildId> buildId = buildMapper.getAllBuildId();
        JSONObject json = new JSONObject();
        json.put("allBuildId", buildId);
        return json;
    }

    @GetMapping("getBuildInfo")
    public Object getBuildInfo(HttpServletRequest request, HttpServletResponse response) {
//        List<Build> build = new List;
        Integer role = Integer.valueOf(request.getParameter("role"));

        JSONObject json = new JSONObject();
        if (role == 0) {
            List<Build> build = buildMapper.getAllBuild();
            json.put("buildInfo", build);
        } else {
            String BuildId = request.getParameter("buildId");
            List<Build> build = buildMapper.getBuildSelf(BuildId);
            json.put("buildInfo", build);
        }
        return json;
    }

    @PostMapping("createBuildAndRoom")
    public Object createBuildAndRoom(HttpServletRequest request, HttpServletResponse response) {
        String buildName = request.getParameter("buildName");
        String buildId = request.getParameter("buildId");
        Integer buildFloor = Integer.valueOf(request.getParameter("buildFloor"));
        Integer floorRooms = Integer.valueOf(request.getParameter("floorRooms"));



       int count = 0;

        Integer addBuild = buildMapper.addBuild(buildName, buildId, buildFloor);
        for (int i = 1; i <= buildFloor; i++) {
            for (int j = 1; j <= floorRooms; j++) {
                String roomNum = String.valueOf(0);
                if(j<10){
                    roomNum = String.valueOf(0)+String.valueOf(j);
                }
                else roomNum = String.valueOf(j);
                String roomId = buildId + i + roomNum;
                Integer floor = i;

                roomsMapper.createBuildAndRoom(roomId, buildId, floor);
                count +=1;
            }
        }

        JSONObject json = new JSONObject();
//        json.put("addbuild",addBuild);
        json.put("roomCount",count);
        return json;

    }

    @GetMapping("getRoomNumberByBuildId")
    public Integer getRoomNumberByBuildId(HttpServletRequest request,HttpServletResponse response){
        String buildId = request.getParameter("buildId");
        return roomsMapper.getRoomNumberByBuildId(buildId);
    }
}
