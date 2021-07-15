package com.DormitoryManagementSystem.domain;

import lombok.Data;

@Data
public class User {
    private Integer id;
    private Integer schoolId;
    private String userName;
    private String passWord;
    private Integer role;
    private String trueName;
    private String PhoneNumber;
    private String checkTime;
    private String roomId;
    private String buildId;
    private String updateTime;
    private String deleteTime;
}
