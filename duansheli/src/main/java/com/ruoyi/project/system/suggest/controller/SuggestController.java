package com.ruoyi.project.system.suggest.controller;

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
import com.ruoyi.project.system.suggest.domain.Suggest;
import com.ruoyi.project.system.suggest.service.ISuggestService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 用户建议Controller
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
@Controller
@RequestMapping("/system/suggest")
public class SuggestController extends BaseController
{
    private String prefix = "system/suggest";

    @Autowired
    private ISuggestService suggestService;

    @RequiresPermissions("system:suggest:view")
    @GetMapping()
    public String suggest()
    {
        return prefix + "/suggest";
    }

    /**
     * 查询用户建议列表
     */
    @RequiresPermissions("system:suggest:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Suggest suggest)
    {
        startPage();
        List<Suggest> list = suggestService.selectSuggestList(suggest);
        return getDataTable(list);
    }

    /**
     * 导出用户建议列表
     */
    @RequiresPermissions("system:suggest:export")
    @Log(title = "用户建议", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Suggest suggest)
    {
        List<Suggest> list = suggestService.selectSuggestList(suggest);
        ExcelUtil<Suggest> util = new ExcelUtil<Suggest>(Suggest.class);
        return util.exportExcel(list, "用户建议数据");
    }

    /**
     * 新增用户建议
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存用户建议
     */
    @RequiresPermissions("system:suggest:add")
    @Log(title = "用户建议", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Suggest suggest)
    {
        return toAjax(suggestService.insertSuggest(suggest));
    }

    /**
     * 修改用户建议
     */
    @GetMapping("/edit/{openid}")
    public String edit(@PathVariable("openid") String openid, ModelMap mmap)
    {
        Suggest suggest = suggestService.selectSuggestByOpenid(openid);
        mmap.put("suggest", suggest);
        return prefix + "/edit";
    }

    /**
     * 修改保存用户建议
     */
    @RequiresPermissions("system:suggest:edit")
    @Log(title = "用户建议", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Suggest suggest)
    {
        return toAjax(suggestService.updateSuggest(suggest));
    }

    /**
     * 删除用户建议
     */
    @RequiresPermissions("system:suggest:remove")
    @Log(title = "用户建议", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(suggestService.deleteSuggestByOpenids(ids));
    }
}
