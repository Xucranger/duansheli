package com.ruoyi.project.system.demojob.mapper;

import java.util.List;
import com.ruoyi.project.system.demojob.domain.Demojob;

/**
 * 例子Mapper接口
 * 
 * @author ruoyi
 * @date 2021-08-11
 */
public interface DemojobMapper 
{
    /**
     * 查询例子
     * 
     * @param jobId 例子主键
     * @return 例子
     */
    public Demojob selectDemojobByJobId(Long jobId);

    /**
     * 查询例子列表
     * 
     * @param demojob 例子
     * @return 例子集合
     */
    public List<Demojob> selectDemojobList(Demojob demojob);

    /**
     * 新增例子
     * 
     * @param demojob 例子
     * @return 结果
     */
    public int insertDemojob(Demojob demojob);

    /**
     * 修改例子
     * 
     * @param demojob 例子
     * @return 结果
     */
    public int updateDemojob(Demojob demojob);

    /**
     * 删除例子
     * 
     * @param jobId 例子主键
     * @return 结果
     */
    public int deleteDemojobByJobId(Long jobId);

    /**
     * 批量删除例子
     * 
     * @param jobIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDemojobByJobIds(String[] jobIds);
}
