package com.ruoyi.project.system.jifenminus.controller;

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
import com.ruoyi.project.system.jifenminus.domain.Jifenminus;
import com.ruoyi.project.system.jifenminus.service.IJifenminusService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 积分减少Controller
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
@Controller
@RequestMapping("/system/jifenminus")
public class JifenminusController extends BaseController
{
    private String prefix = "system/jifenminus";

    @Autowired
    private IJifenminusService jifenminusService;

    @RequiresPermissions("system:jifenminus:view")
    @GetMapping()
    public String jifenminus()
    {
        return prefix + "/jifenminus";
    }

    /**
     * 查询积分减少列表
     */
    @RequiresPermissions("system:jifenminus:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Jifenminus jifenminus)
    {
        startPage();
        List<Jifenminus> list = jifenminusService.selectJifenminusList(jifenminus);
        return getDataTable(list);
    }

    /**
     * 导出积分减少列表
     */
    @RequiresPermissions("system:jifenminus:export")
    @Log(title = "积分减少", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Jifenminus jifenminus)
    {
        List<Jifenminus> list = jifenminusService.selectJifenminusList(jifenminus);
        ExcelUtil<Jifenminus> util = new ExcelUtil<Jifenminus>(Jifenminus.class);
        return util.exportExcel(list, "积分减少数据");
    }

    /**
     * 新增积分减少
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存积分减少
     */
    @RequiresPermissions("system:jifenminus:add")
    @Log(title = "积分减少", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Jifenminus jifenminus)
    {
        return toAjax(jifenminusService.insertJifenminus(jifenminus));
    }

    /**
     * 修改积分减少
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Jifenminus jifenminus = jifenminusService.selectJifenminusById(id);
        mmap.put("jifenminus", jifenminus);
        return prefix + "/edit";
    }

    /**
     * 修改保存积分减少
     */
    @RequiresPermissions("system:jifenminus:edit")
    @Log(title = "积分减少", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Jifenminus jifenminus)
    {
        return toAjax(jifenminusService.updateJifenminus(jifenminus));
    }

    /**
     * 删除积分减少
     */
    @RequiresPermissions("system:jifenminus:remove")
    @Log(title = "积分减少", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(jifenminusService.deleteJifenminusByIds(ids));
    }
}
