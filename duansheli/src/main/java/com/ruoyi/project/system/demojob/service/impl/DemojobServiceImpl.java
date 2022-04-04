package com.ruoyi.project.system.demojob.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.demojob.mapper.DemojobMapper;
import com.ruoyi.project.system.demojob.domain.Demojob;
import com.ruoyi.project.system.demojob.service.IDemojobService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 例子Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-08-11
 */
@Service
public class DemojobServiceImpl implements IDemojobService 
{
    @Autowired
    private DemojobMapper demojobMapper;

    /**
     * 查询例子
     * 
     * @param jobId 例子主键
     * @return 例子
     */
    @Override
    public Demojob selectDemojobByJobId(Long jobId)
    {
        return demojobMapper.selectDemojobByJobId(jobId);
    }

    /**
     * 查询例子列表
     * 
     * @param demojob 例子
     * @return 例子
     */
    @Override
    public List<Demojob> selectDemojobList(Demojob demojob)
    {
        return demojobMapper.selectDemojobList(demojob);
    }

    /**
     * 新增例子
     * 
     * @param demojob 例子
     * @return 结果
     */
    @Override
    public int insertDemojob(Demojob demojob)
    {
        demojob.setCreateTime(DateUtils.getNowDate());
        return demojobMapper.insertDemojob(demojob);
    }

    /**
     * 修改例子
     * 
     * @param demojob 例子
     * @return 结果
     */
    @Override
    public int updateDemojob(Demojob demojob)
    {
        demojob.setUpdateTime(DateUtils.getNowDate());
        return demojobMapper.updateDemojob(demojob);
    }

    /**
     * 批量删除例子
     * 
     * @param jobIds 需要删除的例子主键
     * @return 结果
     */
    @Override
    public int deleteDemojobByJobIds(String jobIds)
    {
        return demojobMapper.deleteDemojobByJobIds(Convert.toStrArray(jobIds));
    }

    /**
     * 删除例子信息
     * 
     * @param jobId 例子主键
     * @return 结果
     */
    @Override
    public int deleteDemojobByJobId(Long jobId)
    {
        return demojobMapper.deleteDemojobByJobId(jobId);
    }
}
