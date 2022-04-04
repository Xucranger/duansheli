package com.ruoyi.project.system.shoplist.controller;

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
import com.ruoyi.project.system.shoplist.domain.Shoplist;
import com.ruoyi.project.system.shoplist.service.IShoplistService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 商品列表Controller
 * 
 * @author ruoyi
 * @date 2021-10-04
 */
@Controller
@RequestMapping("/system/shoplist")
public class ShoplistController extends BaseController
{
    private String prefix = "system/shoplist";

    @Autowired
    private IShoplistService shoplistService;

    @RequiresPermissions("system:shoplist:view")
    @GetMapping()
    public String shoplist()
    {
        return prefix + "/shoplist";
    }

    /**
     * 查询商品列表列表
     */
    @RequiresPermissions("system:shoplist:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Shoplist shoplist)
    {
        startPage();
        List<Shoplist> list = shoplistService.selectShoplistList(shoplist);
        return getDataTable(list);
    }

    /**
     * 导出商品列表列表
     */
    @RequiresPermissions("system:shoplist:export")
    @Log(title = "商品列表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(Shoplist shoplist)
    {
        List<Shoplist> list = shoplistService.selectShoplistList(shoplist);
        ExcelUtil<Shoplist> util = new ExcelUtil<Shoplist>(Shoplist.class);
        return util.exportExcel(list, "商品列表数据");
    }

    /**
     * 新增商品列表
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存商品列表
     */
    @RequiresPermissions("system:shoplist:add")
    @Log(title = "商品列表", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(Shoplist shoplist)
    {
        return toAjax(shoplistService.insertShoplist(shoplist));
    }

    /**
     * 修改商品列表
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        Shoplist shoplist = shoplistService.selectShoplistById(id);
        mmap.put("shoplist", shoplist);
        return prefix + "/edit";
    }

    /**
     * 修改保存商品列表
     */
    @RequiresPermissions("system:shoplist:edit")
    @Log(title = "商品列表", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(Shoplist shoplist)
    {
        return toAjax(shoplistService.updateShoplist(shoplist));
    }

    /**
     * 删除商品列表
     */
    @RequiresPermissions("system:shoplist:remove")
    @Log(title = "商品列表", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(shoplistService.deleteShoplistByIds(ids));
    }
}
