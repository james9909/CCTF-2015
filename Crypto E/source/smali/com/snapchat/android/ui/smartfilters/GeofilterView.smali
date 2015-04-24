.class public Lcom/snapchat/android/ui/smartfilters/GeofilterView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/ui/SelfScalingImageView;

.field private final b:Lcom/snapchat/android/model/Geofilter;

.field private final c:Lcom/snapchat/android/location/GeofilterImageManager;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/Geofilter;)V
    .locals 3
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 36
    const v1, 0x7f040053

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    const v0, 0x7f0a01eb

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SelfScalingImageView;

    iput-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->a:Lcom/snapchat/android/ui/SelfScalingImageView;

    .line 40
    iput-object p2, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->b:Lcom/snapchat/android/model/Geofilter;

    .line 41
    invoke-static {}, Lcom/snapchat/android/location/GeofilterImageManager;->a()Lcom/snapchat/android/location/GeofilterImageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->c:Lcom/snapchat/android/location/GeofilterImageManager;

    .line 43
    invoke-virtual {p0}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->a()V

    .line 44
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->b:Lcom/snapchat/android/model/Geofilter;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Geofilter;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->c:Lcom/snapchat/android/location/GeofilterImageManager;

    iget-object v1, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->b:Lcom/snapchat/android/model/Geofilter;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/location/GeofilterImageManager;->a(Lcom/snapchat/android/model/Geofilter;)V

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->a:Lcom/snapchat/android/ui/SelfScalingImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SelfScalingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/SnapMediaUtils;->b(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->a:Lcom/snapchat/android/ui/SelfScalingImageView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SelfScalingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->b:Lcom/snapchat/android/model/Geofilter;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Geofilter;->d()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->a:Lcom/snapchat/android/ui/SelfScalingImageView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SelfScalingImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->b:Lcom/snapchat/android/model/Geofilter;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Geofilter;->e()I

    move-result v0

    .line 81
    invoke-virtual {p0}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/util/ViewUtils;->c(Landroid/content/Context;)I

    move-result v1

    .line 82
    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(II)I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->a:Lcom/snapchat/android/ui/SelfScalingImageView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SelfScalingImageView;->setGravity(I)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->setGravity(I)V

    goto :goto_0
.end method

.method public getFilterId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->b:Lcom/snapchat/android/model/Geofilter;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Geofilter;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeofilter()Lcom/snapchat/android/model/Geofilter;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->b:Lcom/snapchat/android/model/Geofilter;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 50
    sub-int v0, p4, p2

    .line 51
    sub-int v1, p5, p3

    .line 54
    iget v2, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->d:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->e:I

    if-eq v1, v2, :cond_1

    .line 55
    :cond_0
    iput v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->d:I

    .line 56
    iput v1, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->e:I

    .line 57
    invoke-virtual {p0}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->a()V

    .line 59
    :cond_1
    return-void
.end method
