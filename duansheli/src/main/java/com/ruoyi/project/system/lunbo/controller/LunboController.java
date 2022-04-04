package com.ruoyi.project.system.lunbo.controller;

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
import com.ruoyi.project.system.lunbo.domain.Lunbo;
import com.ruoyi.project.system.lunbo.service.ILunboService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 轮播图Controller
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
@Controller
@RequestMapping("/system/lunbo")
public class LunboController extends BaseController
{
    private String prefix = "system/lunbo";

    @Autowired
    private ILunboService lunboService;

    @RequiresPermissions("system:lunbo:view")
    @GetMapping()
    public String lunbo()
    {
        return prefix + "/lunbo";
    }

    /**
     * 查询轮播图列表
     */
    @RequiresPermissions("system:lunbo:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Lunbo lunbo)
    {
        startPage();
        List<Lunbo> list = lunboService.selectLunboList(lunbo);
        return getDataTable(list);
    }

    /**
     * 导出轮播图列表
     */
    @RequiresPermissions("system:lunbo:export")
    @Log(title = "轮播图", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Lunbo lunbo)
    {
        List<Lunbo> list = lunboService.selectLunboList(lunbo);
        ExcelUtil<Lunbo> util = new ExcelUtil<Lunbo>(Lunbo.class);
        return util.exportExcel(list, "轮播图数据");
    }

    /**
     * 新增轮播图
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存轮播图
     */
    @RequiresPermissions("system:lunbo:add")
    @Log(title = "轮播图", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Lunbo lunbo)
    {
        return toAjax(lunboService.insertLunbo(lunbo));
    }

    /**
     * 修改轮播图
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Lunbo lunbo = lunboService.selectLunboById(id);
        mmap.put("lunbo", lunbo);
        return prefix + "/edit";
    }

    /**
     * 修改保存轮播图
     */
    @RequiresPermissions("system:lunbo:edit")
    @Log(title = "轮播图", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Lunbo lunbo)
    {
        return toAjax(lunboService.updateLunbo(lunbo));
    }

    /**
     * 删除轮播图
     */
    @RequiresPermissions("system:lunbo:remove")
    @Log(title = "轮播图", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(lunboService.deleteLunboByIds(ids));
    }
}
