package com.DormitoryManagementSystem.mapper;

import com.DormitoryManagementSystem.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    @Insert("INSERT into user(trueName,nickName,address,userName,passWord,role) VALUES(#{trueName},#{nickName},#{address},#{userName},#{passWord},'1')")
    int saveUser(@Param("trueName") String truename,@Param("nickName")String nickname,@Param("address")String address,@Param("userName") String userName, @Param("passWord") String passWord);

    @Select("select * from user where username=#{name}")
    User selectUser(String userName);

    @Select("select * from user")
    List<User> selectAllUsers();

    @Select("select role from user where schoolId=#{schoolId}")
    String getRole(Integer schoolId);

    @Select("select trueName from user where schoolId=#{schoolId}")
    String getTrueName(Integer schoolId);

    @Select("select * from user where username=#{userName} or truename =#{trueName}")
    List<User> searchUser(String trueName, String userName);
}
