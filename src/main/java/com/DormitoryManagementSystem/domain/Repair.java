package com.DormitoryManagementSystem.domain;

import lombok.Data;

@Data
public class Repair {
    private Integer id;
    private String repairTime;
    private String repairGoods;
    private String repairReason;
    private String buildId;
    private String roomId;
    private Integer status;
}
