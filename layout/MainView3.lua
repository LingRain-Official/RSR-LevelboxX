
import "util.m3-import"
import "util.color"
return{
  CoordinatorLayout,
  layout_width="fill",
  layout_height="fill",

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
      title="Tools",

      {
        MaterialToolbar,
        -- id="toolbar",
        layout_width=-1,
        layout_height="60dp",
        --layout_collapseMode="pin",
      },
    }
  };
  {
    NestedScrollView,
    w=-1,
    h=-1,
    layout_behavior="@string/appbar_scrolling_view_behavior",
    fillViewport=true,
    {
      LinearLayoutCompat,
      w=-1,
      h=-1,
      --[[{
        ListView,
        id="listView",
        w=-1,
      },]]
      {
        RecyclerView,
        w=-1,
        id="rec",
      },
    },
  },
}