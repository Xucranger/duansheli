package com.ruoyi.project.system.jifenplus.controller;

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
import com.ruoyi.project.system.jifenplus.domain.Jifenplus;
import com.ruoyi.project.system.jifenplus.service.IJifenplusService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 积分增加Controller
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
@Controller
@RequestMapping("/system/jifenplus")
public class JifenplusController extends BaseController
{
    private String prefix = "system/jifenplus";

    @Autowired
    private IJifenplusService jifenplusService;

    @RequiresPermissions("system:jifenplus:view")
    @GetMapping()
    public String jifenplus()
    {
        return prefix + "/jifenplus";
    }

    /**
     * 查询积分增加列表
     */
    @RequiresPermissions("system:jifenplus:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Jifenplus jifenplus)
    {
        startPage();
        List<Jifenplus> list = jifenplusService.selectJifenplusList(jifenplus);
        return getDataTable(list);
    }

    /**
     * 导出积分增加列表
     */
    @RequiresPermissions("system:jifenplus:export")
    @Log(title = "积分增加", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Jifenplus jifenplus)
    {
        List<Jifenplus> list = jifenplusService.selectJifenplusList(jifenplus);
        ExcelUtil<Jifenplus> util = new ExcelUtil<Jifenplus>(Jifenplus.class);
        return util.exportExcel(list, "积分增加数据");
    }

    /**
     * 新增积分增加
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存积分增加
     */
    @RequiresPermissions("system:jifenplus:add")
    @Log(title = "积分增加", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Jifenplus jifenplus)
    {
        return toAjax(jifenplusService.insertJifenplus(jifenplus));
    }

    /**
     * 修改积分增加
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Jifenplus jifenplus = jifenplusService.selectJifenplusById(id);
        mmap.put("jifenplus", jifenplus);
        return prefix + "/edit";
    }

    /**
     * 修改保存积分增加
     */
    @RequiresPermissions("system:jifenplus:edit")
    @Log(title = "积分增加", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Jifenplus jifenplus)
    {
        return toAjax(jifenplusService.updateJifenplus(jifenplus));
    }

    /**
     * 删除积分增加
     */
    @RequiresPermissions("system:jifenplus:remove")
    @Log(title = "积分增加", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(jifenplusService.deleteJifenplusByIds(ids));
    }
}
