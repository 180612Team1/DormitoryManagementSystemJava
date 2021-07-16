package com.DormitoryManagementSystem.mapper;

import com.DormitoryManagementSystem.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {

    @Select("select * from user where username=#{name}")
    User selectUser(String userName);

    @Select("select * from user where role in (0,1)")
    List<User> getAllAdmin();

    @Select("select * from user")
    List<User> selectAllUsers();

    @Select("select role from user where schoolId=#{schoolId}")
    String getRole(Integer schoolId);

    @Select("select trueName from user where schoolId=#{schoolId}")
    String getTrueName(Integer schoolId);

    @Select("select * from user where username=#{userName} or truename =#{trueName}")
    List<User> searchUser(String trueName, String userName);
    @Insert("INSERT into user(schoolId,userName,passWord,phoneNumber,trueName,role,checkTime,buildId) VALUES(#{schoolId},#{userName},#{passWord},#{phoneNumber},#{trueName},#{role},#{checkTime},#{buildId})")
    int addAdmin(@Param("schoolId") String schoolId,@Param("userName") String userName, @Param("passWord") String passWord, @Param("phoneNumber") String phoneNumber,@Param("trueName") String trueName, @Param("role") int role, @Param("checkTime") String checkTime, @Param("buildId") String buildId);
}
