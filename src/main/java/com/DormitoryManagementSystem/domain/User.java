package com.DormitoryManagementSystem.domain;

import lombok.Data;

@Data
public class User {
    private Integer id;
    private String userName;
    private String passWord;
    private int role;
}
