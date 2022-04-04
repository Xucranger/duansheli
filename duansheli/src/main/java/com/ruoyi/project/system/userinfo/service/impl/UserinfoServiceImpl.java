package com.ruoyi.project.system.userinfo.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.userinfo.mapper.UserinfoMapper;
import com.ruoyi.project.system.userinfo.domain.Userinfo;
import com.ruoyi.project.system.userinfo.service.IUserinfoService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 微信信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
@Service
public class UserinfoServiceImpl implements IUserinfoService 
{
    @Autowired
    private UserinfoMapper userinfoMapper;

    /**
     * 查询微信信息
     * 
     * @param openid 微信信息主键
     * @return 微信信息
     */
    @Override
    public Userinfo selectUserinfoByOpenid(String openid)
    {
        return userinfoMapper.selectUserinfoByOpenid(openid);
    }

    /**
     * 查询微信信息列表
     * 
     * @param userinfo 微信信息
     * @return 微信信息
     */
    @Override
    public List<Userinfo> selectUserinfoList(Userinfo userinfo)
    {
        return userinfoMapper.selectUserinfoList(userinfo);
    }

    /**
     * 新增微信信息
     * 
     * @param userinfo 微信信息
     * @return 结果
     */
    @Override
    public int insertUserinfo(Userinfo userinfo)
    {
        userinfo.setCreateTime(DateUtils.getNowDate());
        return userinfoMapper.insertUserinfo(userinfo);
    }

    /**
     * 修改微信信息
     * 
     * @param userinfo 微信信息
     * @return 结果
     */
    @Override
    public int updateUserinfo(Userinfo userinfo)
    {
        return userinfoMapper.updateUserinfo(userinfo);
    }

    /**
     * 批量删除微信信息
     * 
     * @param openids 需要删除的微信信息主键
     * @return 结果
     */
    @Override
    public int deleteUserinfoByOpenids(String openids)
    {
        return userinfoMapper.deleteUserinfoByOpenids(Convert.toStrArray(openids));
    }

    /**
     * 删除微信信息信息
     * 
     * @param openid 微信信息主键
     * @return 结果
     */
    @Override
    public int deleteUserinfoByOpenid(String openid)
    {
        return userinfoMapper.deleteUserinfoByOpenid(openid);
    }
}
