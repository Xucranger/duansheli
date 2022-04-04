package com.ruoyi.project.system.userinfo.controller;

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
import com.ruoyi.project.system.userinfo.domain.Userinfo;
import com.ruoyi.project.system.userinfo.service.IUserinfoService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 微信信息Controller
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
@Controller
@RequestMapping("/system/userinfo")
public class UserinfoController extends BaseController
{
    private String prefix = "system/userinfo";

    @Autowired
    private IUserinfoService userinfoService;

    @RequiresPermissions("system:userinfo:view")
    @GetMapping()
    public String userinfo()
    {
        return prefix + "/userinfo";
    }

    /**
     * 查询微信信息列表
     */
    @RequiresPermissions("system:userinfo:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Userinfo userinfo)
    {
        startPage();
        List<Userinfo> list = userinfoService.selectUserinfoList(userinfo);
        return getDataTable(list);
    }

    /**
     * 导出微信信息列表
     */
    @RequiresPermissions("system:userinfo:export")
    @Log(title = "微信信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Userinfo userinfo)
    {
        List<Userinfo> list = userinfoService.selectUserinfoList(userinfo);
        ExcelUtil<Userinfo> util = new ExcelUtil<Userinfo>(Userinfo.class);
        return util.exportExcel(list, "微信信息数据");
    }

    /**
     * 新增微信信息
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存微信信息
     */
    @RequiresPermissions("system:userinfo:add")
    @Log(title = "微信信息", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Userinfo userinfo)
    {
        return toAjax(userinfoService.insertUserinfo(userinfo));
    }

    /**
     * 修改微信信息
     */
    @GetMapping("/edit/{openid}")
    public String edit(@PathVariable("openid") String openid, ModelMap mmap)
    {
        Userinfo userinfo = userinfoService.selectUserinfoByOpenid(openid);
        mmap.put("userinfo", userinfo);
        return prefix + "/edit";
    }

    /**
     * 修改保存微信信息
     */
    @RequiresPermissions("system:userinfo:edit")
    @Log(title = "微信信息", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Userinfo userinfo)
    {
        return toAjax(userinfoService.updateUserinfo(userinfo));
    }

    /**
     * 删除微信信息
     */
    @RequiresPermissions("system:userinfo:remove")
    @Log(title = "微信信息", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(userinfoService.deleteUserinfoByOpenids(ids));
    }
}
