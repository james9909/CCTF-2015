.class public Lcom/snapchat/android/ui/smartfilters/WeatherView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 37
    const v1, 0x7f040094

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/smartfilters/WeatherView;->a:Landroid/content/SharedPreferences;

    .line 40
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/WeatherView;->a:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->ad:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/util/LocalizationUtils;->a()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/smartfilters/WeatherView;->b:Z

    .line 43
    invoke-direct {p0}, Lcom/snapchat/android/ui/smartfilters/WeatherView;->a()V

    .line 44
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 82
    const v0, 0x7f0a0323

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/smartfilters/WeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    const v1, 0x7f0a0324

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/smartfilters/WeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    invoke-static {}, Lcom/snapchat/android/location/GeofilterManager;->a()Lcom/snapchat/android/location/GeofilterManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/location/GeofilterManager;->d()Lcom/snapchat/android/model/WeatherData;

    move-result-object v2

    .line 86
    if-nez v2, :cond_0

    .line 87
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "Weather not loaded"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 105
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-boolean v3, p0, Lcom/snapchat/android/ui/smartfilters/WeatherView;->b:Z

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v2}, Lcom/snapchat/android/model/WeatherData;->b()Ljava/lang/String;

    move-result-object v3

    .line 95
    const v2, 0x7f0c00bd

    .line 100
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 103
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v2}, Lcom/snapchat/android/model/WeatherData;->a()Ljava/lang/String;

    move-result-object v3

    .line 98
    const v2, 0x7f0c00bc

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 64
    const v0, 0x7f0a0322

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/smartfilters/WeatherView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 65
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 49
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 55
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    .line 73
    iget-boolean v0, p0, Lcom/snapchat/android/ui/smartfilters/WeatherView;->b:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/ui/smartfilters/WeatherView;->b:Z

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/WeatherView;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->ad:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/snapchat/android/ui/smartfilters/WeatherView;->b:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    invoke-direct {p0}, Lcom/snapchat/android/ui/smartfilters/WeatherView;->a()V

    .line 78
    return v1

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWeatherUpdatedEvent(Lcom/snapchat/android/util/eventbus/WeatherUpdatedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/snapchat/android/ui/smartfilters/WeatherView;->a()V

    .line 61
    return-void
.end method
