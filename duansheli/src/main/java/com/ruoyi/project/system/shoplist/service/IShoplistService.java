package com.ruoyi.project.system.shoplist.service;

import java.util.List;
import com.ruoyi.project.system.shoplist.domain.Shoplist;

/**
 * 商品列表Service接口
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
public interface IShoplistService 
{
    /**
     * 查询商品列表
     * 
     * @param id 商品列表主键
     * @return 商品列表
     */
    public Shoplist selectShoplistById(Long id);

    /**
     * 查询商品列表列表
     * 
     * @param shoplist 商品列表
     * @return 商品列表集合
     */
    public List<Shoplist> selectShoplistList(Shoplist shoplist);

    /**
     * 新增商品列表
     * 
     * @param shoplist 商品列表
     * @return 结果
     */
    public int insertShoplist(Shoplist shoplist);

    /**
     * 修改商品列表
     * 
     * @param shoplist 商品列表
     * @return 结果
     */
    public int updateShoplist(Shoplist shoplist);

    /**
     * 批量删除商品列表
     * 
     * @param ids 需要删除的商品列表主键集合
     * @return 结果
     */
    public int deleteShoplistByIds(String ids);

    /**
     * 删除商品列表信息
     * 
     * @param id 商品列表主键
     * @return 结果
     */
    public int deleteShoplistById(Long id);
}
