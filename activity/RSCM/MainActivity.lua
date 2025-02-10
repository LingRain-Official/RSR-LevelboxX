require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "util.m3-import"
import "MainConfig"
import "android.graphics.drawable.ColorDrawable"
import "android.content.Intent"
import "java.io.File"
import "android.graphics.BitmapFactory"
import "android.provider.MediaStore"
import "android.view.View"
import "android.graphics.drawable.BitmapDrawable"
import "android.graphics.Typeface"
function 字体(路径)
  return Typeface.createFromFile(File(activity.getLuaDir().. "/activity/RSCM/ttf/"..路径..".ttf"))
end

zjm={
  CoordinatorLayout,
  layout_width="fill",
  layout_height="fill",
  id="背景",
  {
    AppBarLayout,
    backgroundColor=0,
    layout_width=-1,
    id="appBar";
     
    transitionName="appBar",
    {
      CollapsingToolbarLayout,
      layout_width=-1,
      layout_height="120dp",
      layout_scrollFlags=3, 
      contentScrim=ColorDrawable(0),
       
      title="RSCM",

      {
        MaterialToolbar,
        id="toolbar",
        layout_width=-1,
        
        layout_height="60dp",
        layout_collapseMode="pin",
      },

    };
  },
{NestedScrollView,
    id="ns",
    fillViewport=true,
    layout_width=-1,
    layout_height=-1,
    layout_behavior="@string/appbar_scrolling_view_behavior",
    fillViewport="true",
    {LinearLayout,
      layout_width="fill",
      layout_height="fill",
      Orientation=1,
gravity="center";
      {
        CardView;
        id="card";
        layout_marginTop="50dp";
        layout_marginBottom="5dp";
        
        layout_height="249dp";
        background="res/muban.png";
        layout_width="300dp";
        {
          ImageView;
          src="activity/RSCM/res/moren.png";
          scaleType="centerCrop";
          id="mr";
          layout_height="match_parent";
          layout_width="154dp";
        };
        {
          TextView;
          layout_height="52dp";
          layout_marginLeft="154dp";
          textColor="0xFFFFFFFF";
          gravity="center";
          id="text";
          text="[UNKNOWN]";
          textSize="20sp";
          layout_width="145dp";
        };
        {
          ImageView;
          layout_height="27dp";
          layout_marginTop="69dp";
          id="dj";
          layout_marginLeft="160dp";
          src="activity/RSCM/res/1.png";
          layout_width="130dp";
        };
        {
          ImageView;
          layout_height="27dp";
          layout_marginTop="110dp";
          src="activity/RSCM/res/nill.png";
          id="hg";
          layout_marginLeft="175dp";
          layout_marginBottom="58dp";
          layout_width="100dp";
        };
        {
          LinearLayout;
          layout_height="30dp";
          layout_marginLeft="205dp";
          layout_marginTop="140dp";
          {
            TextView;
            id="zssl";
            text="1";
            gravity="center";
            textSize="25sp";
          };
          {
            TextView;
            id="zssl1";
            text="/";
            gravity="center";
            textSize="25sp";
          };
          {
            TextView;
            id="zssl3";
            text="1";
            gravity="center";
            textSize="25sp";
          };
        };
        {
          LinearLayout;
          layout_height="27dp";
          gravity="right";
          layout_marginLeft="238dp";
          layout_marginTop="224dp";
          layout_width="60dp";
          {
            TextView;
            layout_height="match_parent";
            textColor="#41A9F0";
            gravity="center";
            id="px1";
            text="1";
            textSize="19sp";
          };
          {
            TextView;
            layout_height="match_parent";
            textColor="#41A9F0";
            gravity="center";
            id="px2";
            text="/";
            textSize="19sp";
          };
          {
            TextView;
            layout_height="match_parent";
            textColor="#41A9F0";
            gravity="center";
            id="px3";
            text="1";
            textSize="19sp";
          };
        };
      };

      {
        TextInputLayout,
        layout_width="fill",
        hint="LevelName",
        layout_marginStart="20dp",
        layout_marginEnd="20dp",

        {
          TextInputEditText,
          id="sr";
          layout_width="fill",
          hint="Level name…";
          layout_height="wrap_content";
          style=MDC_R.style.Widget_Material3_TextInputEditText_OutlinedBox,
        },
      },
      {
        MaterialButton;
        text="确认";
        id="qd";
      };
      {
        TextInputLayout,
        layout_width=-1,
        hint="TextSize",
        layout_marginStart="20dp",
        layout_marginEnd="20dp",

        {
          TextInputEditText,
          id="sp";

          layout_width="match_parent";
          hint="Text size…(sp)";
          layout_height="match_parent";
          style=MDC_R.style.Widget_Material3_TextInputEditText_OutlinedBox,
        },
      },
      {
        MaterialButton;
        text="确认";
        id="qr";
      };
      {
        TextInputLayout,
        layout_width=-1,
        hint="TextColor",
        layout_marginStart="20dp",
        layout_marginEnd="20dp",

        {
          TextInputEditText,
          MaxLines=1,
          id="sp1";

          layout_width="match_parent";
          hint="Text color…";
          layout_height="match_parent";
          style=MDC_R.style.Widget_Material3_TextInputEditText_OutlinedBox,
        },
      },
      {
        MaterialButton;
        text="确认";
        id="qr1";
      };

      {
        MaterialCheckBox;
        text="皇冠";
        id="check";
      };
      {
        TextView;
        text="钻石数量";
        textColor="0xFFFFFFFF";
      };
      {
        LinearLayout;
        gravity="center";
        layout_width="match_parent";
        orientation="vertical";
        layout_height="fill";
        {
          TextInputLayout,
          layout_width=-1,
          hint="钻石数量",
          layout_marginStart="20dp",
          layout_marginEnd="20dp",

          {
            TextInputEditText,
            layout_width=-1,
            singleLine=true,
            id="zs",
            text="1";
            style=MDC_R.style.Widget_Material3_TextInputEditText_OutlinedBox,
          },
        },
        {
          SeekBar;
          id="seekbar";
          layout_width="340dp";
          min="1";
          max="50";
        };
      };
      {
        TextView;
        layout_marginTop="23dp";
        text="星级编辑";
        textColor="#000000";
      };
      {
        LinearLayout;
        gravity="center";
        layout_width="match_parent";
        orientation="horizontal";
        layout_height="fill";
        {
          MaterialButton;
          text="-";
          id="j4";
        };
        {
          MaterialCardView;
         
          layout_width="90dp";
          layout_height="50dp";
          radius="15dp";
          layout_margin="10dp";
          {
            TextView;
            
            text="1";
            id="xj";
            textSize="30sp";
            layout_width="match_parent";
            layout_height="match_parent";
            gravity="center";

          };
        };
        {
          MaterialButton;
          text="+";
          id="j3";
        };
      };
      {
        TextView;
        layout_marginTop="23dp";
        text="封面编辑";
        textColor="#000000";
      };
      {
        MaterialCardView;
        
        layout_width="340dp";
        layout_height="50dp";
        radius="15dp";
        {
          TextView;
          text="选择图片";
          id="fm";
          textColor="0xFF000000";
          layout_width="match_parent";
          layout_height="match_parent";
          gravity="center";
        };
      };
      {
        TextView;
        text="第几关";
        textColor="0xFFFFFFFF";
      };
      {
        LinearLayout;
        gravity="center";
        layout_width="match_parent";
    {
    TextInputLayout,
    layout_width=-1,
    hint="第几关",
    layout_marginStart="20dp",
    layout_marginEnd="20dp",
    
    {
      TextInputEditText,
      layout_width=-1,
      singleLine=true,
      id="e1",
      style=MDC_R.style.Widget_Material3_TextInputEditText_OutlinedBox,
    },
  },
      };
      {
        MaterialButton;
        text="确认";
        id="qr3";
      };
      {
        TextView;
        text="共有几关";
        textColor="0xFFFFFFFF";
      };
      {
        LinearLayout;
        gravity="center";
        layout_width="match_parent";
      {
    TextInputLayout,
    layout_width=-1,
    hint="全部关卡数",
    layout_marginStart="20dp",
    layout_marginEnd="20dp",
    
    {
      TextInputEditText,
      layout_width=-1,
      singleLine=true,
      id="e2",
      style=MDC_R.style.Widget_Material3_TextInputEditText_OutlinedBox,
    },
  },
      };
      {
        MaterialButton;
        text="确认";
        id="qr4";
      };
      {
        TextView;
        layout_width="match_parent";
        text=[==[1.0.3:添加更新日志 将改钻石数量改为拖动条
1.0.2:将修改封面要填路径改为选择图片
1.0.1:将修改封面填充图片为自适应]==];
        textColor="0xFFCECECE";
      };

    };
  };
};
activity.setContentView(loadlayout(zjm))
activity.setRequestedOrientation(1)
sr.singleLine=true
this.getSupportActionBar().hide()
sp1.singleLine=true
sp.singleLine=true
fm.singleLine=true
e1.singleLine=true
e2.singleLine=true
import "android.text.InputType"
import "android.text.method.DigitsKeyListener"
sp.setInputType(InputType.TYPE_CLASS_NUMBER)--设置只可输入数字
import "android.graphics.drawable.BitmapDrawable"
card.setBackground(BitmapDrawable(loadbitmap("res/muban.png")))
function 设置字体(id)
  id.setTypeface(字体("RS"))
end
this.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN | View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR)
a=sr.Text
function qd.onClick()
  if sr.Text=="" then
    text.Text="[UNKNOWN]"
    MD提示("内容不能为空",0xFF2196F3,0xFFFFFFFF,4,10)
   else
    text.Text=sr.Text
  end
end

function qr.onClick()
  text1 = sp.Text
  print(text1)
  if text1 == "" then
    text.setTextSize(20)
    MD提示("内容不能为空",0xFF2196F3,0xFFFFFFFF,4,10)
   else
    text.setTextSize(tonumber(text1))

  end
end
function qr1.onClick()
  text2 = sp1.Text
  print(text2)
  if text2 == "" then
    MD提示("内容不能为空",0xFF2196F3,0xFFFFFFFF,4,10)
   else
    text.setTextColor(tonumber(text2))

  end
end
import "android.graphics.drawable.BitmapDrawable"
function check.onClick
  if check.isChecked() then--如果复选框被选中

    print("true")--被选中事件
    hg.setBackground(BitmapDrawable(loadbitmap("./res/crown.png")))
   else

    print("false")--未选中事件
    hg.setBackground(BitmapDrawable(loadbitmap("./res/nill.png")))
  end
end
--绑定监听
seekbar.setOnSeekBarChangeListener{
  onStartTrackingTouch=function()
    --开始拖动
  end,
  onStopTrackingTouch=function()
    --停止拖动
  end,
  onProgressChanged=function(a,b)
    --状态改变
    zssl.setText(tostring(b))
    zs.setText(tostring(b))
    zssl3.setText(tostring(b))
end}
m=1
function j3.onClick
  if m==6 then
   else
    m=m+1
    xj.Text=tostring(m)
    print (m)
    if m==1 then
      dj.setBackground(BitmapDrawable(loadbitmap("activity/RSCM/res/1.png")))
    end
    if m==2 then
      dj.setBackground(BitmapDrawable(loadbitmap("activity/RSCM/res/2.png")))
    end
    if m==3 then
      dj.setBackground(BitmapDrawable(loadbitmap("activity/RSCM/res/3.png")))
    end
    if m==4 then
      dj.setBackground(BitmapDrawable(loadbitmap("activity/RSCM/res/4.png")))
    end
    if m==5 then
      dj.setBackground(BitmapDrawable(loadbitmap("activity/RSCM/res/5.png")))
    end
    if m==6 then
      dj.setBackground(BitmapDrawable(loadbitmap("activity/RSCM/res/6.png")))
    end
  end
end
function j4.onClick
  if m==1 then
   else
    m=m-1
    xj.Text=tostring(m)
    print (m)
    if m==1 then
      dj.setBackground(BitmapDrawable(loadbitmap("./res/1.png")))
    end
    if m==2 then
      dj.setBackground(BitmapDrawable(loadbitmap("./res/2.png")))
    end
    if m==3 then
      dj.setBackground(BitmapDrawable(loadbitmap("./res/3.png")))
    end
    if m==4 then
      dj.setBackground(BitmapDrawable(loadbitmap("./res/4.png")))
    end
    if m==5 then
      dj.setBackground(BitmapDrawable(loadbitmap("./res/5.png")))
    end
    if m==6 then
      dj.setBackground(BitmapDrawable(loadbitmap("./res/6.png")))
    end
  end
end
function fm.onClick
  import "android.content.Intent"
  local intent= Intent(Intent.ACTION_PICK)
  intent.setType("image/*")
  this.startActivityForResult(intent, 1)
  -------

  --回调
  function onActivityResult(requestCode,resultCode,intent)
    if intent then
      local cursor =this.getContentResolver ().query(intent.getData(), nil, nil, nil, nil)
      cursor.moveToFirst()
      import "android.provider.MediaStore"
      local idx = cursor.getColumnIndex(MediaStore.Images.ImageColumns.DATA)
      fileSrc = cursor.getString(idx)
      bit=nil
      --fileSrc回调路径路径
      import "android.graphics.BitmapFactory"
      bit =BitmapFactory.decodeFile(fileSrc)
      --  iv.setImageBitmap(bit)
      mr.setImageBitmap(loadbitmap(fileSrc))
    end
  end--nirenr
end
px=1
function qr3.onClick
  if e1=="" then
   else
    px=e1.Text
    px1.Text=px
  end
end
function qr4.onClick
  if e2=="" then
   else
    px=e2.Text
    px3.Text=px
  end
end

text.setTypeface(字体("RS"))
zssl.setTypeface(字体("RS"))
zssl1.setTypeface(字体("RS"))
zssl3.setTypeface(字体("RS"))
px1.setTypeface(字体("RS"))
px2.setTypeface(字体("RS"))
px3.setTypeface(字体("RS"))
local MDC_R = luajava.bindClass "com.google.android.material.R"

toolbar.navigationIcon = MDC_R.drawable.abc_ic_ab_back_material
toolbar.navigationOnClickListener = function()
  this.finish()
end