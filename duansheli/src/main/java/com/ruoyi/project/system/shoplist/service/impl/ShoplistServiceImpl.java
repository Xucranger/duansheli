package com.ruoyi.project.system.shoplist.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.shoplist.mapper.ShoplistMapper;
import com.ruoyi.project.system.shoplist.domain.Shoplist;
import com.ruoyi.project.system.shoplist.service.IShoplistService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 商品列表Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
@Service
public class ShoplistServiceImpl implements IShoplistService 
{
    @Autowired
    private ShoplistMapper shoplistMapper;

    /**
     * 查询商品列表
     * 
     * @param id 商品列表主键
     * @return 商品列表
     */
    @Override
    public Shoplist selectShoplistById(Long id)
    {
        return shoplistMapper.selectShoplistById(id);
    }

    /**
     * 查询商品列表列表
     * 
     * @param shoplist 商品列表
     * @return 商品列表
     */
    @Override
    public List<Shoplist> selectShoplistList(Shoplist shoplist)
    {
        return shoplistMapper.selectShoplistList(shoplist);
    }

    /**
     * 新增商品列表
     * 
     * @param shoplist 商品列表
     * @return 结果
     */
    @Override
    public int insertShoplist(Shoplist shoplist)
    {
        shoplist.setCreateTime(DateUtils.getNowDate());
        return shoplistMapper.insertShoplist(shoplist);
    }

    /**
     * 修改商品列表
     * 
     * @param shoplist 商品列表
     * @return 结果
     */
    @Override
    public int updateShoplist(Shoplist shoplist)
    {
        return shoplistMapper.updateShoplist(shoplist);
    }

    /**
     * 批量删除商品列表
     * 
     * @param ids 需要删除的商品列表主键
     * @return 结果
     */
    @Override
    public int deleteShoplistByIds(String ids)
    {
        return shoplistMapper.deleteShoplistByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除商品列表信息
     * 
     * @param id 商品列表主键
     * @return 结果
     */
    @Override
    public int deleteShoplistById(Long id)
    {
        return shoplistMapper.deleteShoplistById(id);
    }
}
