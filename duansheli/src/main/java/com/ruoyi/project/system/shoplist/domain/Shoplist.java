package com.ruoyi.project.system.shoplist.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 商品列表对象 shoplist
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
public class Shoplist extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long id;

    /** 分类Id */
    @Excel(name = "分类Id")
    private String category;

    /** 名字 */
    @Excel(name = "名字")
    private String shopname;

    /** 描述 */
    @Excel(name = "描述")
    private String miaoshu;

    /** 图片 */
    @Excel(name = "图片")
    private String picture;

    /** 库存 */
    @Excel(name = "库存")
    private String kucun;

    /** 价格 */
    @Excel(name = "价格")
    private String price;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setCategory(String category)
    {
        this.category = category;
    }

    public String getCategory()
    {
        return category;
    }
    public void setShopname(String shopname)
    {
        this.shopname = shopname;
    }

    public String getShopname()
    {
        return shopname;
    }
    public void setMiaoshu(String miaoshu)
    {
        this.miaoshu = miaoshu;
    }

    public String getMiaoshu()
    {
        return miaoshu;
    }
    public void setPicture(String picture)
    {
        this.picture = picture;
    }

    public String getPicture()
    {
        return picture;
    }
    public void setKucun(String kucun)
    {
        this.kucun = kucun;
    }

    public String getKucun()
    {
        return kucun;
    }
    public void setPrice(String price)
    {
        this.price = price;
    }

    public String getPrice()
    {
        return price;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("category", getCategory())
            .append("shopname", getShopname())
            .append("miaoshu", getMiaoshu())
            .append("picture", getPicture())
            .append("kucun", getKucun())
            .append("price", getPrice())
            .append("createTime", getCreateTime())
            .toString();
    }
}
