package com.ruoyi.project.system.jifenminus.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 积分减少对象 jifenminus
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
public class Jifenminus extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**  */
    private Long id;

    /** openid */
    @Excel(name = "openid")
    private String openid;

    /** 昵称 */
    @Excel(name = "昵称")
    private String name;

    /** 手机 */
    @Excel(name = "手机")
    private String phone;

    /** 地址 */
    @Excel(name = "地址")
    private String address;

    /** 详细地址 */
    @Excel(name = "详细地址")
    private String addressDetail;

    /** 消费数 */
    @Excel(name = "消费数")
    private Long jifen;

    /** 商品id */
    @Excel(name = "商品id")
    private Long shopid;

    /** 商品数量 */
    @Excel(name = "商品数量")
    private Long shopnum;

    /** 商品名称 */
    @Excel(name = "商品名称")
    private String shopname;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setOpenid(String openid)
    {
        this.openid = openid;
    }

    public String getOpenid()
    {
        return openid;
    }
    public void setName(String name)
    {
        this.name = name;
    }

    public String getName()
    {
        return name;
    }
    public void setPhone(String phone)
    {
        this.phone = phone;
    }

    public String getPhone()
    {
        return phone;
    }
    public void setAddress(String address)
    {
        this.address = address;
    }

    public String getAddress()
    {
        return address;
    }
    public void setAddressDetail(String addressDetail)
    {
        this.addressDetail = addressDetail;
    }

    public String getAddressDetail()
    {
        return addressDetail;
    }
    public void setJifen(Long jifen)
    {
        this.jifen = jifen;
    }

    public Long getJifen()
    {
        return jifen;
    }
    public void setShopid(Long shopid)
    {
        this.shopid = shopid;
    }

    public Long getShopid()
    {
        return shopid;
    }
    public void setShopnum(Long shopnum)
    {
        this.shopnum = shopnum;
    }

    public Long getShopnum()
    {
        return shopnum;
    }
    public void setShopname(String shopname)
    {
        this.shopname = shopname;
    }

    public String getShopname()
    {
        return shopname;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("openid", getOpenid())
            .append("name", getName())
            .append("phone", getPhone())
            .append("address", getAddress())
            .append("addressDetail", getAddressDetail())
            .append("jifen", getJifen())
            .append("shopid", getShopid())
            .append("shopnum", getShopnum())
            .append("shopname", getShopname())
            .append("createTime", getCreateTime())
            .toString();
    }
}
