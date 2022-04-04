package com.ruoyi.project.system.location.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.location.mapper.LocationMapper;
import com.ruoyi.project.system.location.domain.Location;
import com.ruoyi.project.system.location.service.ILocationService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 地址列表Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
@Service
public class LocationServiceImpl implements ILocationService 
{
    @Autowired
    private LocationMapper locationMapper;

    /**
     * 查询地址列表
     * 
     * @param locid 地址列表主键
     * @return 地址列表
     */
    @Override
    public Location selectLocationByLocid(Long locid)
    {
        return locationMapper.selectLocationByLocid(locid);
    }

    /**
     * 查询地址列表列表
     * 
     * @param location 地址列表
     * @return 地址列表
     */
    @Override
    public List<Location> selectLocationList(Location location)
    {
        return locationMapper.selectLocationList(location);
    }

    /**
     * 新增地址列表
     * 
     * @param location 地址列表
     * @return 结果
     */
    @Override
    public int insertLocation(Location location)
    {
        return locationMapper.insertLocation(location);
    }

    /**
     * 修改地址列表
     * 
     * @param location 地址列表
     * @return 结果
     */
    @Override
    public int updateLocation(Location location)
    {
        return locationMapper.updateLocation(location);
    }

    /**
     * 批量删除地址列表
     * 
     * @param locids 需要删除的地址列表主键
     * @return 结果
     */
    @Override
    public int deleteLocationByLocids(String locids)
    {
        return locationMapper.deleteLocationByLocids(Convert.toStrArray(locids));
    }

    /**
     * 删除地址列表信息
     * 
     * @param locid 地址列表主键
     * @return 结果
     */
    @Override
    public int deleteLocationByLocid(Long locid)
    {
        return locationMapper.deleteLocationByLocid(locid);
    }
}
