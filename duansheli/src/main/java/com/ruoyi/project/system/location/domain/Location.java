package com.ruoyi.project.system.location.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 地址列表对象 location
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
public class Location extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**  */
    private Long locid;

    /** openid */
    @Excel(name = "openid")
    private String openid;

    /** 收货人 */
    @Excel(name = "收货人")
    private String name;

    /** 电话 */
    @Excel(name = "电话")
    private String phone;

    /** 详细地址 */
    @Excel(name = "详细地址")
    private String addressDetail;

    /** 地址 */
    @Excel(name = "地址")
    private String address;

    /** 默认，1正确 */
    @Excel(name = "默认，1正确")
    private Integer isDefault;

    /** 经度 */
    @Excel(name = "经度")
    private String latitude;

    /** 纬度 */
    @Excel(name = "纬度")
    private String longitude;

    /** 省份 */
    @Excel(name = "省份")
    private String province;

    /** 城市 */
    @Excel(name = "城市")
    private String city;

    /** 街道 */
    @Excel(name = "街道")
    private String district;

    public void setLocid(Long locid)
    {
        this.locid = locid;
    }

    public Long getLocid()
    {
        return locid;
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
    public void setAddressDetail(String addressDetail)
    {
        this.addressDetail = addressDetail;
    }

    public String getAddressDetail()
    {
        return addressDetail;
    }
    public void setAddress(String address)
    {
        this.address = address;
    }

    public String getAddress()
    {
        return address;
    }
    public void setIsDefault(Integer isDefault)
    {
        this.isDefault = isDefault;
    }

    public Integer getIsDefault()
    {
        return isDefault;
    }
    public void setLatitude(String latitude)
    {
        this.latitude = latitude;
    }

    public String getLatitude()
    {
        return latitude;
    }
    public void setLongitude(String longitude)
    {
        this.longitude = longitude;
    }

    public String getLongitude()
    {
        return longitude;
    }
    public void setProvince(String province)
    {
        this.province = province;
    }

    public String getProvince()
    {
        return province;
    }
    public void setCity(String city)
    {
        this.city = city;
    }

    public String getCity()
    {
        return city;
    }
    public void setDistrict(String district)
    {
        this.district = district;
    }

    public String getDistrict()
    {
        return district;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("locid", getLocid())
            .append("openid", getOpenid())
            .append("name", getName())
            .append("phone", getPhone())
            .append("addressDetail", getAddressDetail())
            .append("address", getAddress())
            .append("isDefault", getIsDefault())
            .append("latitude", getLatitude())
            .append("longitude", getLongitude())
            .append("province", getProvince())
            .append("city", getCity())
            .append("district", getDistrict())
            .toString();
    }
}
