package com.ruoyi.project.system.userinfo.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 微信信息对象 userinfo
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
public class Userinfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** openid */
    private String openid;

    /** 昵称 */
    @Excel(name = "昵称")
    private String nickName;

    /** 头像 */
    @Excel(name = "头像")
    private String avatarUrl;

    /** 性别 */
    @Excel(name = "性别")
    private Integer gender;

    /** 积分 */
    @Excel(name = "积分")
    private Long jifen;

    /** 省 */
    @Excel(name = "省")
    private String province;

    /** 城市 */
    @Excel(name = "城市")
    private String city;

    /**  */
    @Excel(name = "")
    private Long userid;

    public void setOpenid(String openid)
    {
        this.openid = openid;
    }

    public String getOpenid()
    {
        return openid;
    }
    public void setNickName(String nickName)
    {
        this.nickName = nickName;
    }

    public String getNickName()
    {
        return nickName;
    }
    public void setAvatarUrl(String avatarUrl)
    {
        this.avatarUrl = avatarUrl;
    }

    public String getAvatarUrl()
    {
        return avatarUrl;
    }
    public void setGender(Integer gender)
    {
        this.gender = gender;
    }

    public Integer getGender()
    {
        return gender;
    }
    public void setJifen(Long jifen)
    {
        this.jifen = jifen;
    }

    public Long getJifen()
    {
        return jifen;
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
    public void setUserid(Long userid)
    {
        this.userid = userid;
    }

    public Long getUserid()
    {
        return userid;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("openid", getOpenid())
            .append("nickName", getNickName())
            .append("avatarUrl", getAvatarUrl())
            .append("gender", getGender())
            .append("jifen", getJifen())
            .append("province", getProvince())
            .append("city", getCity())
            .append("userid", getUserid())
            .append("createTime", getCreateTime())
            .toString();
    }
}
