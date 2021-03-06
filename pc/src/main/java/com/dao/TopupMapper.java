package com.dao;

import com.pojo.Topup;
import com.pojo.TopupExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TopupMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table topup
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    int countByExample(TopupExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table topup
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    int deleteByExample(TopupExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table topup
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    int deleteByPrimaryKey(Integer topupid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table topup
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    int insert(Topup record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table topup
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    int insertSelective(Topup record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table topup
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    List<Topup> selectByExample(TopupExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table topup
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    Topup selectByPrimaryKey(Integer topupid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table topup
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    int updateByExampleSelective(@Param("record") Topup record, @Param("example") TopupExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table topup
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    int updateByExample(@Param("record") Topup record, @Param("example") TopupExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table topup
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    int updateByPrimaryKeySelective(Topup record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table topup
     *
     * @mbggenerated Wed Jun 27 21:38:33 CST 2018
     */
    int updateByPrimaryKey(Topup record);
}