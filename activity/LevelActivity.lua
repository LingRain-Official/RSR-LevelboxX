require "MainConfig"
require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.content.Intent"
import "android.net.Uri"
import "com.google.android.material.dialog.MaterialAlertDialogBuilder"
this.setContentView(loadlayout("layout.LevelActivity"))
toolbar.navigationIcon = MDC_R.drawable.abc_ic_ab_back_material
toolbar.navigationOnClickListener = function()
  this.finish()
end
local LevelId=...
if LevelId ==1 then
  lvname={
    "顽皮星球",
    "跃动银河",
    "循环节",
    "Game over with the block",
  }
  version={
    "RSR1.3.0",
    "RSR1.3.0",
    "RSR1.3.0",
    "RSR1.3.0",
  }
  author={
    "O_o",
    "O_o",
    "O_o",
    "O_o",
  }
  url={
    "http://lingrain.online/level/RSR1.3.0 顽皮星球 by_Ô_o .rsr",
    "http://lingrain.online/level/RSR1.3.0 跃动银河 by_Ô_o.rsr",
    "http://lingrain.online/level/循环节 RSR1.3.0.rsr",
    "http://lingrain.online/level/Game over with the block RSR1.3.0.rsr",
  }
 elseif LevelId==2 then
end
import "util.m3-import"
import "util.color"
local item2={
  LinearLayout;
  layout_width="fill";
  layout_height="wrap_content";
  {
    MaterialCardView;
    layout_width="match_parent";
    id="下载关卡",
    layout_height="wrap_content";
    layout_marginLeft="10dp";
    StrokeColor=0,
    layout_marginRight="10dp";
    {
      LinearLayout;
      padding="10dp";
      layout_width="match_parent";
      layout_height="wrap_content";
      {
        ImageView;
        layout_gravity="center";
        layout_height="40dp";
src="res/rsr.png",
        layout_width="40dp";
      };
      {
        LinearLayout;
        orientation="vertical";
        layout_height="wrap_content";
        gravity="left|center";
        layout_marginLeft="10dp";
        {
          TextView;
          layout_gravity="left|center";
          text="LevelName";
          textSize="20sp";
          id="level1";
        };
        {
          TextView;
          layout_gravity="left|center";
          text="Author";
          id="author1";
        };
      };
    };
  };
};
local LinearLayoutManager = luajava.bindClass "androidx.recyclerview.widget.LinearLayoutManager"
local LuaCustRecyclerAdapter = luajava.bindClass "com.lua.custrecycleradapter.LuaCustRecyclerAdapter"
local AdapterCreator = luajava.bindClass "com.lua.custrecycleradapter.AdapterCreator"
local LuaCustRecyclerHolder = luajava.bindClass "com.lua.custrecycleradapter.LuaCustRecyclerHolder"
itemdata2={
}
mulu = "/storage/emulated/0/Download/"
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
      local _itemdata = itemdata2[position]
      local id= position + 1
      print(id)
            MaterialAlertDialogBuilder(this)
      .setTitle("确定下载此关卡吗")
      .setMessage("此关卡需要用"..version[id].."来导入游玩，确定跳转浏览器下载此关卡吗")
      .setPositiveButton("下载",{onClick=function(v) local url=url[id]
viewIntent =  Intent("android.intent.action.VIEW",Uri.parse(url))
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
    local text4 = author[index]

    --在这里设置item的数据
    view.level1.setText(text5)
    view.author1.setText("by:"..text4)
  end,
}))

rec2.setAdapter(adp)
.setLayoutManager(
LinearLayoutManager(activity)
)