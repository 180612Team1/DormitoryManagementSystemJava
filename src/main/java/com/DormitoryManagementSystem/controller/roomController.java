package com.DormitoryManagementSystem.controller;


import java.util.List;

import com.DormitoryManagementSystem.domain.Rooms;
import com.DormitoryManagementSystem.mapper.RoomsMapper;
import lombok.extern.slf4j.Slf4j;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Slf4j
@RequestMapping("room")
@RestController
public class roomController {
    @Autowired
    private RoomsMapper roomsMapper;
    @GetMapping("getAllRoom")
    public Object getAllRoom(HttpServletRequest request, HttpServletResponse response) {
        List<Rooms> rooms = roomsMapper.getAllRooms();
        JSONObject json = new JSONObject();
        json.put("rooms", rooms);
        return json;
    }
}
