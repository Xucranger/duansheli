package com.ruoyi.project.system.lunbo.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.lunbo.mapper.LunboMapper;
import com.ruoyi.project.system.lunbo.domain.Lunbo;
import com.ruoyi.project.system.lunbo.service.ILunboService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 轮播图Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
@Service
public class LunboServiceImpl implements ILunboService 
{
    @Autowired
    private LunboMapper lunboMapper;

    /**
     * 查询轮播图
     * 
     * @param id 轮播图主键
     * @return 轮播图
     */
    @Override
    public Lunbo selectLunboById(Long id)
    {
        return lunboMapper.selectLunboById(id);
    }

    /**
     * 查询轮播图列表
     * 
     * @param lunbo 轮播图
     * @return 轮播图
     */
    @Override
    public List<Lunbo> selectLunboList(Lunbo lunbo)
    {
        return lunboMapper.selectLunboList(lunbo);
    }

    /**
     * 新增轮播图
     * 
     * @param lunbo 轮播图
     * @return 结果
     */
    @Override
    public int insertLunbo(Lunbo lunbo)
    {
        lunbo.setCreateTime(DateUtils.getNowDate());
        return lunboMapper.insertLunbo(lunbo);
    }

    /**
     * 修改轮播图
     * 
     * @param lunbo 轮播图
     * @return 结果
     */
    @Override
    public int updateLunbo(Lunbo lunbo)
    {
        return lunboMapper.updateLunbo(lunbo);
    }

    /**
     * 批量删除轮播图
     * 
     * @param ids 需要删除的轮播图主键
     * @return 结果
     */
    @Override
    public int deleteLunboByIds(String ids)
    {
        return lunboMapper.deleteLunboByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除轮播图信息
     * 
     * @param id 轮播图主键
     * @return 结果
     */
    @Override
    public int deleteLunboById(Long id)
    {
        return lunboMapper.deleteLunboById(id);
    }
}
