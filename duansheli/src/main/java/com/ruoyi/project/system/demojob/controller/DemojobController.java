package com.ruoyi.project.system.demojob.controller;

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
import com.ruoyi.project.system.demojob.domain.Demojob;
import com.ruoyi.project.system.demojob.service.IDemojobService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 例子Controller
 * 
 * @author ruoyi
 * @date 2021-08-11
 */
@Controller
@RequestMapping("/system/demojob")
public class DemojobController extends BaseController
{
    private String prefix = "system/demojob";

    @Autowired
    private IDemojobService demojobService;

    @RequiresPermissions("system:demojob:view")
    @GetMapping()
    public String demojob()
    {
        return prefix + "/demojob";
    }

    /**
     * 查询例子列表
     */
    @RequiresPermissions("system:demojob:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Demojob demojob)
    {
        startPage();
        List<Demojob> list = demojobService.selectDemojobList(demojob);
        return getDataTable(list);
    }

    /**
     * 导出例子列表
     */
    @RequiresPermissions("system:demojob:export")
    @Log(title = "例子", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Demojob demojob)
    {
        List<Demojob> list = demojobService.selectDemojobList(demojob);
        ExcelUtil<Demojob> util = new ExcelUtil<Demojob>(Demojob.class);
        return util.exportExcel(list, "例子数据");
    }

    /**
     * 新增例子
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存例子
     */
    @RequiresPermissions("system:demojob:add")
    @Log(title = "例子", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Demojob demojob)
    {
        return toAjax(demojobService.insertDemojob(demojob));
    }

    /**
     * 修改例子
     */
    @GetMapping("/edit/{jobId}")
    public String edit(@PathVariable("jobId") Long jobId, ModelMap mmap)
    {
        Demojob demojob = demojobService.selectDemojobByJobId(jobId);
        mmap.put("demojob", demojob);
        return prefix + "/edit";
    }

    /**
     * 修改保存例子
     */
    @RequiresPermissions("system:demojob:edit")
    @Log(title = "例子", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Demojob demojob)
    {
        return toAjax(demojobService.updateDemojob(demojob));
    }

    /**
     * 删除例子
     */
    @RequiresPermissions("system:demojob:remove")
    @Log(title = "例子", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(demojobService.deleteDemojobByJobIds(ids));
    }
}
