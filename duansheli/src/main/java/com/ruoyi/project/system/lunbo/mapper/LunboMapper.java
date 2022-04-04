package com.ruoyi.project.system.lunbo.mapper;

import java.util.List;
import com.ruoyi.project.system.lunbo.domain.Lunbo;

/**
 * 轮播图Mapper接口
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
public interface LunboMapper 
{
    /**
     * 查询轮播图
     * 
     * @param id 轮播图主键
     * @return 轮播图
     */
    public Lunbo selectLunboById(Long id);

    /**
     * 查询轮播图列表
     * 
     * @param lunbo 轮播图
     * @return 轮播图集合
     */
    public List<Lunbo> selectLunboList(Lunbo lunbo);

    /**
     * 新增轮播图
     * 
     * @param lunbo 轮播图
     * @return 结果
     */
    public int insertLunbo(Lunbo lunbo);

    /**
     * 修改轮播图
     * 
     * @param lunbo 轮播图
     * @return 结果
     */
    public int updateLunbo(Lunbo lunbo);

    /**
     * 删除轮播图
     * 
     * @param id 轮播图主键
     * @return 结果
     */
    public int deleteLunboById(Long id);

    /**
     * 批量删除轮播图
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteLunboByIds(String[] ids);
}
