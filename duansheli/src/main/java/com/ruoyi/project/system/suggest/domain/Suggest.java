package com.ruoyi.project.system.suggest.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 用户建议对象 suggest
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
public class Suggest extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** openid */
    @Excel(name = "openid")
    private String openid;

    /** 昵称 */
    @Excel(name = "昵称")
    private String nickname;

    /** 头像 */
    @Excel(name = "头像")
    private String avatar;

    /** 建议 */
    @Excel(name = "建议")
    private String suggest;

    public void setOpenid(String openid)
    {
        this.openid = openid;
    }

    public String getOpenid()
    {
        return openid;
    }
    public void setNickname(String nickname)
    {
        this.nickname = nickname;
    }

    public String getNickname()
    {
        return nickname;
    }
    public void setAvatar(String avatar)
    {
        this.avatar = avatar;
    }

    public String getAvatar()
    {
        return avatar;
    }
    public void setSuggest(String suggest)
    {
        this.suggest = suggest;
    }

    public String getSuggest()
    {
        return suggest;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("openid", getOpenid())
            .append("nickname", getNickname())
            .append("avatar", getAvatar())
            .append("suggest", getSuggest())
            .append("createTime", getCreateTime())
            .toString();
    }
}
