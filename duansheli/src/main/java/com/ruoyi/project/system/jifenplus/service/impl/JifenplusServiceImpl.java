package com.ruoyi.project.system.jifenplus.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.jifenplus.mapper.JifenplusMapper;
import com.ruoyi.project.system.jifenplus.domain.Jifenplus;
import com.ruoyi.project.system.jifenplus.service.IJifenplusService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 积分增加Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
@Service
public class JifenplusServiceImpl implements IJifenplusService 
{
    @Autowired
    private JifenplusMapper jifenplusMapper;

    /**
     * 查询积分增加
     * 
     * @param id 积分增加主键
     * @return 积分增加
     */
    @Override
    public Jifenplus selectJifenplusById(Long id)
    {
        return jifenplusMapper.selectJifenplusById(id);
    }

    /**
     * 查询积分增加列表
     * 
     * @param jifenplus 积分增加
     * @return 积分增加
     */
    @Override
    public List<Jifenplus> selectJifenplusList(Jifenplus jifenplus)
    {
        return jifenplusMapper.selectJifenplusList(jifenplus);
    }

    /**
     * 新增积分增加
     * 
     * @param jifenplus 积分增加
     * @return 结果
     */
    @Override
    public int insertJifenplus(Jifenplus jifenplus)
    {
        jifenplus.setCreateTime(DateUtils.getNowDate());
        return jifenplusMapper.insertJifenplus(jifenplus);
    }

    /**
     * 修改积分增加
     * 
     * @param jifenplus 积分增加
     * @return 结果
     */
    @Override
    public int updateJifenplus(Jifenplus jifenplus)
    {
        return jifenplusMapper.updateJifenplus(jifenplus);
    }

    /**
     * 批量删除积分增加
     * 
     * @param ids 需要删除的积分增加主键
     * @return 结果
     */
    @Override
    public int deleteJifenplusByIds(String ids)
    {
        return jifenplusMapper.deleteJifenplusByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除积分增加信息
     * 
     * @param id 积分增加主键
     * @return 结果
     */
    @Override
    public int deleteJifenplusById(Long id)
    {
        return jifenplusMapper.deleteJifenplusById(id);
    }
}
