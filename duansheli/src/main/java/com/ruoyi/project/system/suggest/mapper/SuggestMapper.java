package com.ruoyi.project.system.suggest.mapper;

import java.util.List;
import com.ruoyi.project.system.suggest.domain.Suggest;

/**
 * 用户建议Mapper接口
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
public interface SuggestMapper 
{
    /**
     * 查询用户建议
     * 
     * @param openid 用户建议主键
     * @return 用户建议
     */
    public Suggest selectSuggestByOpenid(String openid);

    /**
     * 查询用户建议列表
     * 
     * @param suggest 用户建议
     * @return 用户建议集合
     */
    public List<Suggest> selectSuggestList(Suggest suggest);

    /**
     * 新增用户建议
     * 
     * @param suggest 用户建议
     * @return 结果
     */
    public int insertSuggest(Suggest suggest);

    /**
     * 修改用户建议
     * 
     * @param suggest 用户建议
     * @return 结果
     */
    public int updateSuggest(Suggest suggest);

    /**
     * 删除用户建议
     * 
     * @param openid 用户建议主键
     * @return 结果
     */
    public int deleteSuggestByOpenid(String openid);

    /**
     * 批量删除用户建议
     * 
     * @param openids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSuggestByOpenids(String[] openids);
}
