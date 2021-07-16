package com.DormitoryManagementSystem.mapper;

import com.DormitoryManagementSystem.domain.Build;
import com.DormitoryManagementSystem.domain.BuildId;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BuildMapper {
    @Select("select buildId from buildings")
    List<BuildId> getAllBuildId();




}
