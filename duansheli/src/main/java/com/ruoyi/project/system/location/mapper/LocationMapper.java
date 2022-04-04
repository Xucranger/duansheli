package com.ruoyi.project.system.location.mapper;

import java.util.List;
import com.ruoyi.project.system.location.domain.Location;

/**
 * 地址列表Mapper接口
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
public interface LocationMapper 
{
    /**
     * 查询地址列表
     * 
     * @param locid 地址列表主键
     * @return 地址列表
     */
    public Location selectLocationByLocid(Long locid);

    /**
     * 查询地址列表列表
     * 
     * @param location 地址列表
     * @return 地址列表集合
     */
    public List<Location> selectLocationList(Location location);

    /**
     * 新增地址列表
     * 
     * @param location 地址列表
     * @return 结果
     */
    public int insertLocation(Location location);

    /**
     * 修改地址列表
     * 
     * @param location 地址列表
     * @return 结果
     */
    public int updateLocation(Location location);

    /**
     * 删除地址列表
     * 
     * @param locid 地址列表主键
     * @return 结果
     */
    public int deleteLocationByLocid(Long locid);

    /**
     * 批量删除地址列表
     * 
     * @param locids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteLocationByLocids(String[] locids);
}
