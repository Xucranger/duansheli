package com.ruoyi.project.system.jifenplus.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 积分增加对象 jifenplus
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
public class Jifenplus extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**  */
    private Long id;

    /** openid */
    @Excel(name = "openid")
    private String openid;

    /** 设备id */
    @Excel(name = "设备id")
    private String techid;

    /** 设备蓝牙号 */
    @Excel(name = "设备蓝牙号")
    private String deviceId;

    /** 1为春夏，0为秋冬 */
    @Excel(name = "1为春夏，0为秋冬")
    private Integer kind;

    /** 重量 */
    @Excel(name = "重量")
    private String weight;

    /** 增长积分 */
    @Excel(name = "增长积分")
    private Long jifen;

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
    public void setTechid(String techid)
    {
        this.techid = techid;
    }

    public String getTechid()
    {
        return techid;
    }
    public void setDeviceId(String deviceId)
    {
        this.deviceId = deviceId;
    }

    public String getDeviceId()
    {
        return deviceId;
    }
    public void setKind(Integer kind)
    {
        this.kind = kind;
    }

    public Integer getKind()
    {
        return kind;
    }
    public void setWeight(String weight)
    {
        this.weight = weight;
    }

    public String getWeight()
    {
        return weight;
    }
    public void setJifen(Long jifen)
    {
        this.jifen = jifen;
    }

    public Long getJifen()
    {
        return jifen;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("openid", getOpenid())
            .append("techid", getTechid())
            .append("deviceId", getDeviceId())
            .append("kind", getKind())
            .append("weight", getWeight())
            .append("jifen", getJifen())
            .append("createTime", getCreateTime())
            .toString();
    }
}
