require "import"
import "util.m3-import"
import "android.os.Build"
return{
  LinearLayoutCompat,
  layout_width="fill",
  layout_height="fill",
  layout_height="match_parent";
  orientation="vertical";
  layout_width="match_parent";
  {
    Toolbar;
    id="appBar",
    layout_width=-1,
    title="代码导航",
  };

  {
    LuaWebView;
    id="WebView",
    layout_height="match_parent";
    layout_width="match_parent";
  };
}