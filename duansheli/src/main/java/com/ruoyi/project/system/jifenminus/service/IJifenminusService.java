package com.ruoyi.project.system.jifenminus.service;

import java.util.List;
import com.ruoyi.project.system.jifenminus.domain.Jifenminus;

/**
 * 积分减少Service接口
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
public interface IJifenminusService 
{
    /**
     * 查询积分减少
     * 
     * @param id 积分减少主键
     * @return 积分减少
     */
    public Jifenminus selectJifenminusById(Long id);

    /**
     * 查询积分减少列表
     * 
     * @param jifenminus 积分减少
     * @return 积分减少集合
     */
    public List<Jifenminus> selectJifenminusList(Jifenminus jifenminus);

    /**
     * 新增积分减少
     * 
     * @param jifenminus 积分减少
     * @return 结果
     */
    public int insertJifenminus(Jifenminus jifenminus);

    /**
     * 修改积分减少
     * 
     * @param jifenminus 积分减少
     * @return 结果
     */
    public int updateJifenminus(Jifenminus jifenminus);

    /**
     * 批量删除积分减少
     * 
     * @param ids 需要删除的积分减少主键集合
     * @return 结果
     */
    public int deleteJifenminusByIds(String ids);

    /**
     * 删除积分减少信息
     * 
     * @param id 积分减少主键
     * @return 结果
     */
    public int deleteJifenminusById(Long id);
}
