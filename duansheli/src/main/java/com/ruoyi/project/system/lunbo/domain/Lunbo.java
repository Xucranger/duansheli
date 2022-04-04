package com.ruoyi.project.system.lunbo.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 轮播图对象 lunbo
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
public class Lunbo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long id;

    /** 轮播图 */
    @Excel(name = "轮播图")
    private String pic;

    /** 指向地址 */
    @Excel(name = "指向地址")
    private String nav;

    /** 描述 */
    @Excel(name = "描述")
    private String comm;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setPic(String pic)
    {
        this.pic = pic;
    }

    public String getPic()
    {
        return pic;
    }
    public void setNav(String nav)
    {
        this.nav = nav;
    }

    public String getNav()
    {
        return nav;
    }
    public void setComm(String comm)
    {
        this.comm = comm;
    }

    public String getComm()
    {
        return comm;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("pic", getPic())
            .append("nav", getNav())
            .append("comm", getComm())
            .append("createTime", getCreateTime())
            .toString();
    }
}
