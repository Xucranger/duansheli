package com.ruoyi.project.system.jifenminus.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.jifenminus.mapper.JifenminusMapper;
import com.ruoyi.project.system.jifenminus.domain.Jifenminus;
import com.ruoyi.project.system.jifenminus.service.IJifenminusService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 积分减少Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
@Service
public class JifenminusServiceImpl implements IJifenminusService 
{
    @Autowired
    private JifenminusMapper jifenminusMapper;

    /**
     * 查询积分减少
     * 
     * @param id 积分减少主键
     * @return 积分减少
     */
    @Override
    public Jifenminus selectJifenminusById(Long id)
    {
        return jifenminusMapper.selectJifenminusById(id);
    }

    /**
     * 查询积分减少列表
     * 
     * @param jifenminus 积分减少
     * @return 积分减少
     */
    @Override
    public List<Jifenminus> selectJifenminusList(Jifenminus jifenminus)
    {
        return jifenminusMapper.selectJifenminusList(jifenminus);
    }

    /**
     * 新增积分减少
     * 
     * @param jifenminus 积分减少
     * @return 结果
     */
    @Override
    public int insertJifenminus(Jifenminus jifenminus)
    {
        jifenminus.setCreateTime(DateUtils.getNowDate());
        return jifenminusMapper.insertJifenminus(jifenminus);
    }

    /**
     * 修改积分减少
     * 
     * @param jifenminus 积分减少
     * @return 结果
     */
    @Override
    public int updateJifenminus(Jifenminus jifenminus)
    {
        return jifenminusMapper.updateJifenminus(jifenminus);
    }

    /**
     * 批量删除积分减少
     * 
     * @param ids 需要删除的积分减少主键
     * @return 结果
     */
    @Override
    public int deleteJifenminusByIds(String ids)
    {
        return jifenminusMapper.deleteJifenminusByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除积分减少信息
     * 
     * @param id 积分减少主键
     * @return 结果
     */
    @Override
    public int deleteJifenminusById(Long id)
    {
        return jifenminusMapper.deleteJifenminusById(id);
    }
}
