package com.DormitoryManagementSystem.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import com.DormitoryManagementSystem.domain.Notice;

import java.util.List;

@Repository
public interface NoticeMapper {
    @Insert("INSERT INTO notice( `schoolId`, `noticeName`, `noticeContent`, `noticeTime`, `noticeForBuildId`) VALUES (#{schoolId},#{noticeName},#{noticeContent},#{noticeTime}, #{noticeForBuildId})")
    int addNotice(@Param("schoolId")Integer schoolId,@Param("noticeName") String noticeName,@Param("noticeContent")String noticeContent,@Param("noticeTime")String noticeTime,@Param("noticeForBuildId") String noticeForBuildId);

    @Select("select buildId from user where schoolId=#{schoolId}")

    String getBuildId(Integer schoolId);

    @Select("select role from user where schoolId=#{schoolId}")
    String getRole(Integer schoolId);

    @Select("select trueName from user where schoolId=#{schoolId}")
    String getTrueName(Integer schoolId);

    @Select("select * from notice where noticeForBuildId in('0',#{noticeForBuildId})")
    List<Notice> getAllNoticesByid(String buildId);

    @Select("select * from notice order by noticeTime desc")
    List<Notice> getAllNotices();

    @Select("select * from notice where id=#{id}")
    List<Notice> getNoticeById(String id);

    @Delete("delete from notice where id = #{id}")
    boolean deleteNoticeById(Integer id);
}
