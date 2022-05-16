package com.DormitoryManagementSystem.domain;

import lombok.Data;

@Data
public class Rooms {
    private Integer id;
    private String roomId;
    private String buildId;
    private Integer floor;
    private Integer status;
    private Integer peopleNum;
}
