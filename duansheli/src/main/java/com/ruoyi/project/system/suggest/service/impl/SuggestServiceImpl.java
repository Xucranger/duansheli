package com.ruoyi.project.system.suggest.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.suggest.mapper.SuggestMapper;
import com.ruoyi.project.system.suggest.domain.Suggest;
import com.ruoyi.project.system.suggest.service.ISuggestService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 用户建议Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
@Service
public class SuggestServiceImpl implements ISuggestService 
{
    @Autowired
    private SuggestMapper suggestMapper;

    /**
     * 查询用户建议
     * 
     * @param openid 用户建议主键
     * @return 用户建议
     */
    @Override
    public Suggest selectSuggestByOpenid(String openid)
    {
        return suggestMapper.selectSuggestByOpenid(openid);
    }

    /**
     * 查询用户建议列表
     * 
     * @param suggest 用户建议
     * @return 用户建议
     */
    @Override
    public List<Suggest> selectSuggestList(Suggest suggest)
    {
        return suggestMapper.selectSuggestList(suggest);
    }

    /**
     * 新增用户建议
     * 
     * @param suggest 用户建议
     * @return 结果
     */
    @Override
    public int insertSuggest(Suggest suggest)
    {
        suggest.setCreateTime(DateUtils.getNowDate());
        return suggestMapper.insertSuggest(suggest);
    }

    /**
     * 修改用户建议
     * 
     * @param suggest 用户建议
     * @return 结果
     */
    @Override
    public int updateSuggest(Suggest suggest)
    {
        return suggestMapper.updateSuggest(suggest);
    }

    /**
     * 批量删除用户建议
     * 
     * @param openids 需要删除的用户建议主键
     * @return 结果
     */
    @Override
    public int deleteSuggestByOpenids(String openids)
    {
        return suggestMapper.deleteSuggestByOpenids(Convert.toStrArray(openids));
    }

    /**
     * 删除用户建议信息
     * 
     * @param openid 用户建议主键
     * @return 结果
     */
    @Override
    public int deleteSuggestByOpenid(String openid)
    {
        return suggestMapper.deleteSuggestByOpenid(openid);
    }
}
