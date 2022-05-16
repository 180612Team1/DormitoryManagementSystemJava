package com.DormitoryManagementSystem.mapper;

import com.DormitoryManagementSystem.domain.Build;
import com.DormitoryManagementSystem.domain.BuildId;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BuildMapper {
    @Select("select buildId from buildings")
    List<BuildId> getAllBuildId();

    @Select("select * from buildings order by id")
    List<Build> getAllBuild();

    @Select("select * from buildings where buildId= #{buildId}")
    List<Build> getBuildSelf(String buildId);

    @Insert("INSERT into buildings(buildName,buildId,buildFloor) VALUES(#{buildName},#{buildId},#{buildFloor})")
    int addBuild(@Param("buildName") String buildName,@Param("buildId")String buildId,@Param("buildFloor")Integer buildFloor);
}
