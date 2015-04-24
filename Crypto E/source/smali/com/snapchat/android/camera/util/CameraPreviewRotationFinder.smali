.class public Lcom/snapchat/android/camera/util/CameraPreviewRotationFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 75
    const-string v0, "window"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 76
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 78
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 79
    if-eqz v0, :cond_0

    if-ne v0, v5, :cond_4

    :cond_0
    move v0, v2

    .line 80
    :goto_0
    iget v3, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_5

    move v3, v2

    .line 81
    :goto_1
    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v2, :cond_6

    .line 82
    :goto_2
    if-eqz v0, :cond_1

    if-nez v3, :cond_2

    :cond_1
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    .line 83
    :cond_2
    const/4 v1, 0x3

    .line 85
    :cond_3
    return v1

    :cond_4
    move v0, v1

    .line 79
    goto :goto_0

    :cond_5
    move v3, v1

    .line 80
    goto :goto_1

    :cond_6
    move v2, v1

    .line 81
    goto :goto_2
.end method


# virtual methods
.method a(I)I
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 109
    packed-switch p1, :pswitch_data_0

    .line 119
    :goto_0
    :pswitch_0
    return v0

    .line 113
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 115
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 117
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lcom/snapchat/android/camera/model/CameraModel;)I
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/snapchat/android/camera/util/CameraPreviewRotationFinder;->a()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/camera/util/CameraPreviewRotationFinder;->a(Lcom/snapchat/android/camera/model/CameraModel;I)I

    move-result v0

    return v0
.end method

.method public a(Lcom/snapchat/android/camera/model/CameraModel;I)I
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/snapchat/android/camera/model/CameraModel;->m()Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    .line 48
    const/16 v0, 0x5a

    .line 62
    :goto_0
    return v0

    .line 51
    :cond_0
    invoke-virtual {p0, p2}, Lcom/snapchat/android/camera/util/CameraPreviewRotationFinder;->a(I)I

    move-result v1

    .line 52
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 53
    const-string v2, "CameraPreviewRotationFinder"

    const-string v3, "Camera Orientation [%d] and Display Orientation [%d]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p1}, Lcom/snapchat/android/camera/model/CameraModel;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 59
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    .line 62
    :cond_1
    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0
.end method
