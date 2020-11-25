package com.atguigu.springboot.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.atguigu.springboot.bean.TAdmin;


public interface TAdminMapper {
   
//	@Insert
//	@Delete
//	@Update
	@Select("select * from t_admin where id=#{id}")
    TAdmin selectByPrimaryKey(Integer id);

}