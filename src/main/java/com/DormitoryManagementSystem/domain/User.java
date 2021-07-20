package com.DormitoryManagementSystem.domain;

import lombok.Data;

@Data
public class User {
    private Integer id;
    private Integer schoolId;

    public Integer getId() {
        return id;
    }

    public Integer getSchoolId() {
        return schoolId;
    }

    public String getUserName() {
        return userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public Integer getRole() {
        return role;
    }

    public String getTrueName() {
        return trueName;
    }

    public String getPhoneNumber() {
        return PhoneNumber;
    }

    public String getCheckTime() {
        return checkTime;
    }

    public String getRoomId() {
        return roomId;
    }

    public String getBuildId() {
        return buildId;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public String getDeleteTime() {
        return deleteTime;
    }

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
