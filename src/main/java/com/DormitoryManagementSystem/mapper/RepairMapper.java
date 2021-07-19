package com.DormitoryManagementSystem.mapper;


import com.DormitoryManagementSystem.domain.Repair;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RepairMapper {
    @Insert("insert into repair(repairTime,repairGoods,repairReason,buildId,roomId,status) VALUES(#{repairTime},#{repairGoods},#{repairReason},#{buildId},#{roomId},0) ")
    int addRepair(String repairGoods,String repairReason,String repairTime,String roomId,String buildId);

    @Select("select * from repair")
    List<Repair> getAllRepair();

    @Select("select * from repair where buildId = #{buildId}")
    List<Repair> getRepairByBuildId(String buildId);

    @Select("select * from repair where roomId = #{roomId}")
    List<Repair> getRepairByRoomId(String roomId);

    @Update("update repair set status = 1 WHERE id = #{id}")
    Integer dealOneRepair(Integer id);
}
