package com.dao;

import com.pojo.AdminCode;
import com.pojo.AdminCodeExample;
import java.util.List;

import com.pojo.LoginUser;
import org.apache.ibatis.annotations.Param;

public interface AdminCodeMapper {

    /**
     * 查询邀请码是否存在并且类型是什么
     * @param code
     * @return
     */
    AdminCode selectadminCode(String code);
    /**
     * 用户使用后删除会员邀请码
     * @param code
     * @return
     */
    int delete(String code);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table admincode
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    int countByExample(AdminCodeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table admincode
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    int deleteByExample(AdminCodeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table admincode
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    int deleteByPrimaryKey(Integer codeid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table admincode
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    int insert(AdminCode record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table admincode
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    int insertSelective(AdminCode record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table admincode
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    List<AdminCode> selectByExample(AdminCodeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table admincode
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    AdminCode selectByPrimaryKey(Integer codeid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table admincode
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    int updateByExampleSelective(@Param("record") AdminCode record, @Param("example") AdminCodeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table admincode
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    int updateByExample(@Param("record") AdminCode record, @Param("example") AdminCodeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table admincode
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    int updateByPrimaryKeySelective(AdminCode record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table admincode
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    int updateByPrimaryKey(AdminCode record);
}