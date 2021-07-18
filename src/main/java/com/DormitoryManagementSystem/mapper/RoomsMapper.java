package com.DormitoryManagementSystem.mapper;

import com.DormitoryManagementSystem.domain.Rooms;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoomsMapper {
    @Insert("Insert into rooms(roomId,buildId,floor,status,peopleNum)VALUES(#{roomId},#{buildId},#{floor},1,6)")
    Integer createBuildAndRoom(@Param("roomId") String roomId,@Param("buildId")String buildId,@Param("floor")Integer floor);

    @Select("select COUNT(id) from rooms where buildId=#{buildId}")
    Integer getRoomNumberByBuildId(String buildId);

    @Select("Select * from rooms")
    List<Rooms> getAllRooms();
}
