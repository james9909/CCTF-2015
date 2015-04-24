.class public Lcom/snapchat/android/ui/smartfilters/SpeedometerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static a:F


# instance fields
.field private final b:Landroid/content/SharedPreferences;

.field private c:Z

.field private d:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const v0, 0x461c3f9a

    sput v0, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->a:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 41
    const v1, 0x7f040087

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->b:Landroid/content/SharedPreferences;

    .line 44
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->ae:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/util/LocalizationUtils;->a()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->c:Z

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->setSpeed(F)V

    .line 49
    return-void
.end method

.method private static a(I)I
    .locals 3
    .parameter

    .prologue
    .line 180
    rem-int/lit8 v0, p0, 0xa

    packed-switch v0, :pswitch_data_0

    .line 202
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid input: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :pswitch_0
    const v0, 0x7f0201ce

    .line 200
    :goto_0
    return v0

    .line 184
    :pswitch_1
    const v0, 0x7f0201cf

    goto :goto_0

    .line 186
    :pswitch_2
    const v0, 0x7f0201d0

    goto :goto_0

    .line 188
    :pswitch_3
    const v0, 0x7f0201d1

    goto :goto_0

    .line 190
    :pswitch_4
    const v0, 0x7f0201d2

    goto :goto_0

    .line 192
    :pswitch_5
    const v0, 0x7f0201d3

    goto :goto_0

    .line 194
    :pswitch_6
    const v0, 0x7f0201d4

    goto :goto_0

    .line 196
    :pswitch_7
    const v0, 0x7f0201d5

    goto :goto_0

    .line 198
    :pswitch_8
    const v0, 0x7f0201d6

    goto :goto_0

    .line 200
    :pswitch_9
    const v0, 0x7f0201d7

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private setSpeed(F)V
    .locals 9
    .parameter

    .prologue
    const/high16 v6, 0x4120

    const/4 v3, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 106
    iget-boolean v0, p0, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->c:Z

    if-eqz v0, :cond_2

    .line 107
    float-to-double v0, p1

    const-wide v4, 0x4001e5604189374cL

    mul-double/2addr v0, v4

    double-to-float v0, v0

    .line 112
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    cmpg-float v1, v0, v3

    if-ltz v1, :cond_0

    sget v1, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->a:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_8

    .line 113
    :cond_0
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "SpeedometerView: Invalid speed"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "speed"

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    move v2, v3

    .line 118
    :goto_1
    const v0, 0x7f0a02e2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 119
    const v1, 0x7f0a02e3

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 120
    const/high16 v4, 0x447a

    div-float v4, v2, v4

    float-to-int v4, v4

    .line 121
    if-nez v4, :cond_3

    .line 122
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    :goto_2
    const v0, 0x7f0a02e4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 132
    const/high16 v1, 0x42c8

    div-float v1, v2, v1

    float-to-int v1, v1

    rem-int/lit8 v5, v1, 0xa

    .line 133
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    .line 134
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    :goto_3
    const v0, 0x7f0a02e5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 142
    div-float v1, v2, v6

    float-to-int v1, v1

    rem-int/lit8 v1, v1, 0xa

    .line 143
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-nez v1, :cond_5

    .line 144
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    :goto_4
    const v0, 0x7f0a02e6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 152
    float-to-int v1, v2

    rem-int/lit8 v1, v1, 0xa

    .line 153
    invoke-static {v1}, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    const v0, 0x7f0a02e8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 157
    const v1, 0x7f0a02e7

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 158
    mul-float/2addr v6, v2

    float-to-int v6, v6

    rem-int/lit8 v6, v6, 0xa

    .line 159
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6

    .line 162
    :cond_1
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    :goto_5
    const v0, 0x7f0a02e9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 172
    iget-boolean v1, p0, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->c:Z

    if-eqz v1, :cond_7

    .line 173
    const v1, 0x7f0201da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    :goto_6
    return-void

    .line 109
    :cond_2
    float-to-double v0, p1

    const-wide v4, 0x400ccccccccccccdL

    mul-double/2addr v0, v4

    double-to-float v0, v0

    goto/16 :goto_0

    .line 125
    :cond_3
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    invoke-static {v4}, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->a(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 136
    :cond_4
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    invoke-static {v5}, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 146
    :cond_5
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    invoke-static {v1}, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 165
    :cond_6
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    invoke-static {v6}, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 175
    :cond_7
    const v1, 0x7f0201d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_8
    move v2, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 85
    const v0, 0x7f0a02e1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 86
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    .line 89
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
    .line 53
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 54
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 60
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public onSpeedUpdatedEvent(Lcom/snapchat/android/util/eventbus/SpeedUpdatedEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 80
    iget v0, p1, Lcom/snapchat/android/util/eventbus/SpeedUpdatedEvent;->a:F

    iput v0, p0, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->d:F

    .line 81
    iget v0, p0, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->d:F

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->setSpeed(F)V

    .line 82
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 94
    iget-boolean v0, p0, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->c:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->c:Z

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->ae:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->c:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    iget v0, p0, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->d:F

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->setSpeed(F)V

    .line 99
    return v1

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
