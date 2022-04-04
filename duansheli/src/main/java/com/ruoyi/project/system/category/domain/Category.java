package com.ruoyi.project.system.category.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 商品分类对象 category
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
public class Category extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long id;

    /** 分类Id */
    @Excel(name = "分类Id")
    private String category;

    /** 分类名字 */
    @Excel(name = "分类名字")
    private String catename;

    /** 描述 */
    @Excel(name = "描述")
    private String miaoshu;

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
    public void setCatename(String catename)
    {
        this.catename = catename;
    }

    public String getCatename()
    {
        return catename;
    }
    public void setMiaoshu(String miaoshu)
    {
        this.miaoshu = miaoshu;
    }

    public String getMiaoshu()
    {
        return miaoshu;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("category", getCategory())
            .append("catename", getCatename())
            .append("miaoshu", getMiaoshu())
            .append("createTime", getCreateTime())
            .toString();
    }
}
