import "util.m3-import"
import "util.color"
return{
  CoordinatorLayout,
  layout_width=-1,
  layout_height=-1,
  {
    AppBarLayout,
    backgroundColor=0,
    layout_width=-1,
    id="appBar", 
    transitionName="appBar",
    {
      CollapsingToolbarLayout,
      layout_width=-1,
      layout_height="120dp",
      layout_scrollFlags=3,
      contentScrim=ColorDrawable(0),
      title="RSR LevelboxX",
      {
        MaterialToolbar,
        id="toolbar",
        layout_width=-1,
        layout_height="60dp",
        layout_collapseMode="pin",
      },
    },
  },
  {NestedScrollView,
    id="ns",
    layout_width="fill",
    layout_height="fill",
    layout_behavior="@string/appbar_scrolling_view_behavior",
    fillViewport=true,
    {LinearLayout,
      layout_width="fill",
      layout_height="fill",
      Orientation=1,
      padding="10dp";
      {
        MaterialCardView;
        layout_width="match_parent";
        layout_height="180dp";
        radius="15dp";
        StrokeColor=colorSecondary,
        
        cardElevation="0",
        
        {
          ImageView;
          layout_width="fill";
          layout_height="fill";
          src="res/MainImage.jpg";
          scaleType="centerCrop";

        };
      };
      {
        MaterialCardView;
        layout_width="match_parent";
        layout_marginTop="10dp";
        id="userdata";
        StrokeColor=colorPrimaryContainer,
        {
          LinearLayout;
          layout_width="match_parent";
          padding="15dp";
          layout_height="wrap_content";
          {
            LinearLayout;
            layout_height="wrap_content";
            layout_width="match_parent";
            gravity="center";
            {
              FrameLayout;
              layout_height="50dp";
              layout_width="50dp";
              {
                MaterialCardView;
                layout_width="50dp";
                radius="80";
                layout_height="50dp";

                {
                  ImageView;
                  layout_width="match_parent";
                  layout_gravity="center";
                  layout_height="match_parent";
                  id="head";
                  scaleType="centerCrop";
                };

              };
              {
                ImageView;
                layout_height="20dp";
                layout_width="20dp";
                ColorFilter=colorPrimaryContainer,
                layout_gravity="bottom|right";
                src="res/camera.png",
              };
            };
            {
              LinearLayout;
              layout_height="wrap_content";
              layout_width="match_parent";
              orientation="vertical";
              layout_marginLeft="10dp";
              layout_marginRight="10dp";
              {
                TextView;
                TextSize="10sp";
                id="游客";
                TextColor=colorOnBackground;
                text="游客";
              };
              {
                TextView;
                TextSize="5sp";
                TextColor=colorOnBackground;
                id="email";
                text="e-mail";
              };
            };
          };
        };
      };
  {
    MaterialCardView;
    layout_marginTop="10dp";
    layout_width="match_parent";
    id="ovo";
    StrokeColor=colorPrimaryContainer,
    {
      LinearLayout;
      padding="15dp";
      layout_width="match_parent";
      layout_height="wrap_content";
      {
        LinearLayout;
        gravity="center";
        layout_width="match_parent";
        layout_height="wrap_content";
        {
          FrameLayout;
          layout_width="50dp";
          layout_height="50dp";
          {
            MaterialCardView;
            layout_height="50dp";
            layout_width="50dp";
            radius="80";
            {
              ImageView;
              src="res/O_o.jpg",
              scaleType="centerCrop";
              layout_height="match_parent";
              layout_gravity="center";
              layout_width="match_parent";
            };
          };
        };
        {
          LinearLayout;
          layout_height="wrap_content";
          layout_marginRight="10dp";
          layout_marginLeft="10dp";
          layout_width="match_parent";
          orientation="vertical";
          {
            TextView;
            text="O_o";
            textSize="25sp";
          };
                  {
            TextView;
            text="关卡集";
            textSize="13sp";
          };
        };
      };
    };
  };
      {View,
        layout_height="128dp",
      };
    };

  };
};