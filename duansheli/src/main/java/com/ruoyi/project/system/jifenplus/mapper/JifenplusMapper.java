package com.ruoyi.project.system.jifenplus.mapper;

import java.util.List;
import com.ruoyi.project.system.jifenplus.domain.Jifenplus;

/**
 * 积分增加Mapper接口
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
public interface JifenplusMapper 
{
    /**
     * 查询积分增加
     * 
     * @param id 积分增加主键
     * @return 积分增加
     */
    public Jifenplus selectJifenplusById(Long id);

    /**
     * 查询积分增加列表
     * 
     * @param jifenplus 积分增加
     * @return 积分增加集合
     */
    public List<Jifenplus> selectJifenplusList(Jifenplus jifenplus);

    /**
     * 新增积分增加
     * 
     * @param jifenplus 积分增加
     * @return 结果
     */
    public int insertJifenplus(Jifenplus jifenplus);

    /**
     * 修改积分增加
     * 
     * @param jifenplus 积分增加
     * @return 结果
     */
    public int updateJifenplus(Jifenplus jifenplus);

    /**
     * 删除积分增加
     * 
     * @param id 积分增加主键
     * @return 结果
     */
    public int deleteJifenplusById(Long id);

    /**
     * 批量删除积分增加
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteJifenplusByIds(String[] ids);
}
