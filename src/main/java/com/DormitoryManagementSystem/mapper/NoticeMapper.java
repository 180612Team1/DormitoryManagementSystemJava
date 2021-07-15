package com.DormitoryManagementSystem.mapper;

import com.DormitoryManagementSystem.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import com.DormitoryManagementSystem.domain.Notice;

import java.util.List;

@Repository
public interface NoticeMapper {
    //    @Insert("INSERT into notice()")
    @Select("select buildId from user where schoolId=#{schoolId}")
    String getBuildId(Integer schoolId);
    @Select("select role from user where schoolId=#{schoolId}")
    String getRole(Integer schoolId);
    @Select("select * from notice where noticeForBuildId in('0',#{noticeForBuildId})")
    List<Notice> getAllNoticesByid(String buildId);
    @Select("select * from notice")
    List<Notice> getAllNotices();
}
