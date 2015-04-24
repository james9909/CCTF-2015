.class public Lcom/snapchat/android/api/ScreenParameterProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/snapchat/android/api/ScreenParameterProvider; = null

.field private static final TAG:Ljava/lang/String; = "ScreenParameterProvider"


# instance fields
.field private mMaxVideoHeight:I

.field private mMaxVideoWidth:I

.field private mResolution:Lcom/snapchat/android/util/Resolution;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/snapchat/android/api/ScreenParameterProvider;

    invoke-direct {v0}, Lcom/snapchat/android/api/ScreenParameterProvider;-><init>()V

    sput-object v0, Lcom/snapchat/android/api/ScreenParameterProvider;->INSTANCE:Lcom/snapchat/android/api/ScreenParameterProvider;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/snapchat/android/util/Resolution;

    invoke-direct {v0, v1, v1}, Lcom/snapchat/android/util/Resolution;-><init>(II)V

    iput-object v0, p0, Lcom/snapchat/android/api/ScreenParameterProvider;->mResolution:Lcom/snapchat/android/util/Resolution;

    .line 33
    return-void
.end method

.method public static a()Lcom/snapchat/android/api/ScreenParameterProvider;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/snapchat/android/api/ScreenParameterProvider;->INSTANCE:Lcom/snapchat/android/api/ScreenParameterProvider;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const v0, 0x7fffffff

    .line 65
    invoke-virtual {p0}, Lcom/snapchat/android/api/ScreenParameterProvider;->e()Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 66
    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/ScreenParameterProvider;->b(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 70
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v2, v3, :cond_0

    .line 71
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 72
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move v3, v2

    move v2, v1

    .line 80
    :goto_0
    if-eqz v4, :cond_2

    .line 81
    iget v0, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v1, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-le v0, v1, :cond_1

    .line 82
    iget v1, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 83
    iget v0, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 93
    :goto_1
    new-instance v4, Lcom/snapchat/android/util/Resolution;

    invoke-direct {v4, v2, v3}, Lcom/snapchat/android/util/Resolution;-><init>(II)V

    iput-object v4, p0, Lcom/snapchat/android/api/ScreenParameterProvider;->mResolution:Lcom/snapchat/android/util/Resolution;

    .line 94
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/api/ScreenParameterProvider;->mMaxVideoHeight:I

    .line 95
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/api/ScreenParameterProvider;->mMaxVideoWidth:I

    .line 97
    const-string v0, "ScreenParameterProvider"

    const-string v1, "Computed screen parameter values: height=%d, width=%d, maxVideoHeight=%d, maxVideoWidth=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/api/ScreenParameterProvider;->mResolution:Lcom/snapchat/android/util/Resolution;

    invoke-virtual {v4}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/snapchat/android/api/ScreenParameterProvider;->mResolution:Lcom/snapchat/android/util/Resolution;

    invoke-virtual {v4}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/snapchat/android/api/ScreenParameterProvider;->mMaxVideoHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/snapchat/android/api/ScreenParameterProvider;->mMaxVideoWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    return-void

    .line 74
    :cond_0
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 75
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 85
    :cond_1
    iget v1, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 86
    iget v0, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    goto :goto_1

    :cond_2
    move v1, v0

    .line 90
    goto :goto_1
.end method

.method public b(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 1
    .parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/snapchat/android/util/Resolution;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/api/ScreenParameterProvider;->mResolution:Lcom/snapchat/android/util/Resolution;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/snapchat/android/api/ScreenParameterProvider;->mMaxVideoHeight:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/snapchat/android/api/ScreenParameterProvider;->mMaxVideoWidth:I

    return v0
.end method

.method protected e()Landroid/media/CamcorderProfile;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-static {v2}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {v2}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-static {v1}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
