package com.ruoyi.project.system.location.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.system.location.domain.Location;
import com.ruoyi.project.system.location.service.ILocationService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 地址列表Controller
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
@Controller
@RequestMapping("/system/location")
public class LocationController extends BaseController
{
    private String prefix = "system/location";

    @Autowired
    private ILocationService locationService;

    @RequiresPermissions("system:location:view")
    @GetMapping()
    public String location()
    {
        return prefix + "/location";
    }

    /**
     * 查询地址列表列表
     */
    @RequiresPermissions("system:location:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Location location)
    {
        startPage();
        List<Location> list = locationService.selectLocationList(location);
        return getDataTable(list);
    }

    /**
     * 导出地址列表列表
     */
    @RequiresPermissions("system:location:export")
    @Log(title = "地址列表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Location location)
    {
        List<Location> list = locationService.selectLocationList(location);
        ExcelUtil<Location> util = new ExcelUtil<Location>(Location.class);
        return util.exportExcel(list, "地址列表数据");
    }

    /**
     * 新增地址列表
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存地址列表
     */
    @RequiresPermissions("system:location:add")
    @Log(title = "地址列表", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Location location)
    {
        return toAjax(locationService.insertLocation(location));
    }

    /**
     * 修改地址列表
     */
    @GetMapping("/edit/{locid}")
    public String edit(@PathVariable("locid") Long locid, ModelMap mmap)
    {
        Location location = locationService.selectLocationByLocid(locid);
        mmap.put("location", location);
        return prefix + "/edit";
    }

    /**
     * 修改保存地址列表
     */
    @RequiresPermissions("system:location:edit")
    @Log(title = "地址列表", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Location location)
    {
        return toAjax(locationService.updateLocation(location));
    }

    /**
     * 删除地址列表
     */
    @RequiresPermissions("system:location:remove")
    @Log(title = "地址列表", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(locationService.deleteLocationByLocids(ids));
    }
}
