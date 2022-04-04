package com.ruoyi.project.system.userinfo.mapper;

import java.util.List;
import com.ruoyi.project.system.userinfo.domain.Userinfo;

/**
 * 微信信息Mapper接口
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
public interface UserinfoMapper 
{
    /**
     * 查询微信信息
     * 
     * @param openid 微信信息主键
     * @return 微信信息
     */
    public Userinfo selectUserinfoByOpenid(String openid);

    /**
     * 查询微信信息列表
     * 
     * @param userinfo 微信信息
     * @return 微信信息集合
     */
    public List<Userinfo> selectUserinfoList(Userinfo userinfo);

    /**
     * 新增微信信息
     * 
     * @param userinfo 微信信息
     * @return 结果
     */
    public int insertUserinfo(Userinfo userinfo);

    /**
     * 修改微信信息
     * 
     * @param userinfo 微信信息
     * @return 结果
     */
    public int updateUserinfo(Userinfo userinfo);

    /**
     * 删除微信信息
     * 
     * @param openid 微信信息主键
     * @return 结果
     */
    public int deleteUserinfoByOpenid(String openid);

    /**
     * 批量删除微信信息
     * 
     * @param openids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteUserinfoByOpenids(String[] openids);
}
