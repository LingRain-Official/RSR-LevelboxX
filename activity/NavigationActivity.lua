require "MainConfig"
require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.content.Intent"
import "android.net.Uri"
this.setContentView(loadlayout("layout.NavigationActivity"))
appBar.navigationIcon = MDC_R.drawable.abc_ic_ab_back_material
appBar.navigationOnClickListener = function()
  this.finish()
end
WebView.loadUrl(activity.getLuaDir().."/navigation.html")