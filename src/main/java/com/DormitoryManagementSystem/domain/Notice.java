package com.DormitoryManagementSystem.domain;

import lombok.Data;

@Data
public class Notice {
    private Integer id;
    private Integer schoolId;
    private String noticeName;
    private String noticeContent;
    private String noticeTime;
    private String noticeForBuildId;
}
