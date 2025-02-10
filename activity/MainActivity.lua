require "import"
import "MainConfig"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "util.okhttp"
import "java.io.File"
import "cjson"
import "android.content.Intent"
import "android.net.Uri"
import "com.google.android.material.dialog.MaterialAlertDialogBuilder"
import "android.graphics.BitmapFactory"
import "android.content.Intent"
import "http"
import "util.color"
import "layout.item2"
import "layout.item3"
import "android.content.res.ColorStateList"
import "com.bumptech.glide.*"
import "com.bumptech.glide.load.engine.DiskCacheStrategy"
activity.setContentView(loadlayout("layout.MainActivity"))
local FileDrawable = require "util.FileDrawable"
local bottombarData = {
  [0] = {
    title = "Home",
    icon = FileDrawable("res/home.png"),
    checkedIcon = FileDrawable("res/home.png"),
  },
  [1] = {
    title = "Music",
    icon = FileDrawable("res/files2.png"),
    checkedIcon = FileDrawable("res/files2.png"),
  },
  [2] = {
    title = "More",
    icon = FileDrawable("res/Tools.png"),
    checkedIcon = FileDrawable("res/Tools.png"),
  },
}
底栏.setLabelVisibilityMode(0)

local bottombarChecked = 0
底栏.menu.add(0, 0, 0, "Home").setIcon(bottombarData[0].checkedIcon)
底栏.menu.add(0, 1, 1, "Level").setIcon(bottombarData[1].icon)
底栏.menu.add(0, 2, 2, "Tools").setIcon(bottombarData[2].icon)


底栏.setOnNavigationItemSelectedListener(BottomNavigationView.OnNavigationItemSelectedListener{
  onNavigationItemSelected=function(item)
    pager.setCurrentItem(item.getItemId())
    return true
  end
})
function checked(vv,num)--底栏项目选中事件
  vv.getMenu().getItem(num).setChecked(true)
end
pager.setOnPageChangeListener(ViewPager.OnPageChangeListener{
  onPageSelected=function(num)
    checked(底栏,num)--选中底栏项
  end
})
ovo.onClick=function()
  activity.newActivity("activity/LevelActivity",{1})
end
local LinearLayoutManager = luajava.bindClass "androidx.recyclerview.widget.LinearLayoutManager"
local LuaCustRecyclerAdapter = luajava.bindClass "com.lua.custrecycleradapter.LuaCustRecyclerAdapter"
local AdapterCreator = luajava.bindClass "com.lua.custrecycleradapter.AdapterCreator"
local LuaCustRecyclerHolder = luajava.bindClass "com.lua.custrecycleradapter.LuaCustRecyclerHolder"
itemdata2={
}
mulu = "/storage/emulated/0/Download/"
import "data.level"
adp = LuaCustRecyclerAdapter(AdapterCreator({
  getItemCount=function()
    return #lvname --item数量
  end,
  onCreateViewHolder=function(parent,viewType) local views = {} --控件存在这里面
    local holder = LuaCustRecyclerHolder(loadlayout(item2, views))
    holder.view.setTag(views)
    views.下载关卡.onClick=function()
      local position = holder.getAdapterPosition()
      --一般通过索引找到数据
      local _itemdata2 = itemdata2[position]
      local id= position + 1
      MaterialAlertDialogBuilder(activity)
      .setTitle(lvname[id])
      .setMessage("此关卡需要用"..lvv[id].."来导入游玩，确定跳转浏览器下载此关卡吗")
      .setPositiveButton("下载",{onClick=function(v) local url=urltable[id]
          viewIntent = Intent("android.intent.action.VIEW",Uri.parse(url))
          activity.startActivity(viewIntent)
      end})
      .setNegativeButton("取消",nil)
      .show()

    end
    return holder
  end,
  onBindViewHolder=function(holder,position) --position:item的位置
    local view = holder.view.getTag() --控件存在这里面
    local index = position + 1
    local text5 = lvname[index]
    local text4 = author1[index]

    --在这里设置item的数据
    view.level1.setText(text5)
    view.author1.setText("by:"..text4)
  end,
}))
rec2.setAdapter(adp)
.setLayoutManager(
LinearLayoutManager(activity)
)
import "androidx.recyclerview.widget.StaggeredGridLayoutManager"
rec2.layoutManager=StaggeredGridLayoutManager(2,StaggeredGridLayoutManager.VERTICAL)--3为网格行数,可换HORIZONTAL
--[==[import "androidx.recyclerview.widget.GridLayoutManager"
rec2.layoutManager=GridLayoutManager(activity,2)--3为网格行数
rec2.layoutManager.setOrientation(1)--0是横向，1是竖向
]==]
--网格列表视图
itemdata={}
import "data.Tools"
adp2 = LuaCustRecyclerAdapter(AdapterCreator({
  getItemCount=function()
    return #ToolName --item数量
  end,
  onCreateViewHolder=function(parent,viewType) local views = {} --控件存在这里面
    local holder = LuaCustRecyclerHolder(loadlayout(item3, views))
    holder.view.setTag(views)
    views.Tools.onClick=function()
      local position = holder.getAdapterPosition()
      local _itemdata = itemdata[position]
      local id= position + 1
      if id==6 then
        activity.newActivity("activity/RSCM/MainActivity")
       else
        local url=ToolURL[id]
        viewIntent = Intent("android.intent.action.VIEW",Uri.parse(url))
        activity.startActivity(viewIntent)
      end
    end
    return holder
  end,
  onBindViewHolder=function(holder,position) --position:item的位置
    local view = holder.view.getTag() --控件存在这里面
    local index = position + 1
    local Tool_Name = ToolName[index]
    local icon1 = ToolImage[index]
    local Tool_Text=ToolText[index]
    --在这里设置item的数据
    view.ToolsImage.setImageBitmap(loadbitmap(icon1))
    view.ToolsName.setText(Tool_Name)
    view.ToolsText.setText(Tool_Text)
  end,
}))

rec.setAdapter(adp2)
.setLayoutManager(
LinearLayoutManager(activity)
)
local PopupMenu = luajava.bindClass "androidx.appcompat.widget.PopupMenu"
toolbar.navigationIcon = MDC_R.drawable.abc_ic_menu_overflow_material
toolbar.navigationOnClickListener = function()
  pop=PopupMenu(activity,toolbar)
  menu=pop.Menu
  menu.add("关于应用").onMenuItemClick=function(v)
    MaterialAlertDialogBuilder(this)
    .setTitle("RSR Levelbox")
    .setMessage([==[RSR LevelboxX v1.3，基于LingRain制作
by：LingRain Studio2025
AndroLua Script by : cmouren191
大牛技术支持: (就是一个空格)
特别贡献：RS-爱玩游戏的薯条 -RSCM作者
屑球 -图标绘制
解决bug很简单，直接解决提出bug的人
从1.3版本开始，RSR Levelbox与其他零雨旗下应用不再强制用户登录来使用应用

感谢你们的一路支持，这可能是RLB的最后一个版本了，早在2017年我就接触了RS，对于RS和自制圈我是发自内心的热爱，这款应用走到现在离不开大家的支持与我内心的热爱，可惜现在的RS与自制圈完全变了样，令我完全失望，这是我放弃继续开发RLB的原因

应用不再对安装包编译加密Lua，可以直接提取出源码，使用LuaAppX与OpenLuaX编辑器均可运行，开源是为了公开给大家学习，如果愿意你也可以继续帮我更新RLB]==])
    .show()
  end
  menu.add("加群").onMenuItemClick=function(v)
    url="mqqapi://card/show_pslcard?src_type=internal&version=1&uin=621123405&card_type=group&source=qrcode"
    activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
  end
  menu.add("投稿关卡").onMenuItemClick=function(v)
    function 发送邮件(邮箱,标题,内容)
      import "android.content.Intent"
      i = Intent(Intent.ACTION_SEND)
      i.setType("message/rfc822")
      i.putExtra(Intent.EXTRA_EMAIL,{邮箱})
      i.putExtra(Intent.EXTRA_SUBJECT,标题)
      i.putExtra(Intent.EXTRA_TEXT,内容)
      activity.startActivity(Intent.createChooser(i,"选择邮箱"))
    end
    --调用方法
    发送邮件("1422561304@qq.com","投稿关卡","必须标注作者、关卡编辑器版本并附上关卡文件")
  end
  menu.add("官网").onMenuItemClick=function(v)
    local url="http://lingrain.online"
    viewIntent = Intent("android.intent.action.VIEW",Uri.parse(url))
    activity.startActivity(viewIntent)
  end
  menu.add("代码导航").onMenuItemClick=function(v)
    activity.newActivity("activity/NavigationActivity")
  end
  pop.show()
end

