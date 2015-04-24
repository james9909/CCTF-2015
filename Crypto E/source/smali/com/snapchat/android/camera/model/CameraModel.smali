.class public Lcom/snapchat/android/camera/model/CameraModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/camera/model/CameraModel$1;,
        Lcom/snapchat/android/camera/model/CameraModel$CameraType;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lnet/jcip/annotations/NotThreadSafe;
.end annotation


# instance fields
.field protected a:I

.field private b:[Landroid/hardware/Camera$CameraInfo;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Lcom/snapchat/android/util/Resolution;

.field private h:Z

.field private i:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/snapchat/android/camera/CameraUtils;->a()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->b:[Landroid/hardware/Camera$CameraInfo;

    .line 29
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->a:I

    .line 31
    iput v2, p0, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    .line 32
    iput v2, p0, Lcom/snapchat/android/camera/model/CameraModel;->d:I

    .line 33
    iput-boolean v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->e:Z

    .line 39
    iput-boolean v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->j:Z

    .line 40
    iput-boolean v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->k:Z

    .line 49
    return-void
.end method

.method private d(I)V
    .locals 1
    .parameter

    .prologue
    .line 99
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->y:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/snapchat/android/util/PreferenceUtils;->a(Ljava/lang/String;I)V

    .line 100
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    .line 53
    iget v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    iget v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->a:I

    invoke-static {v0, v1}, Lcom/snapchat/android/camera/CameraUtils;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/model/CameraModel;->a(I)V

    .line 54
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    .line 58
    iget v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/model/CameraModel;->d(I)V

    .line 59
    return-void
.end method

.method public a(Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/snapchat/android/camera/model/CameraModel;->i:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    .line 171
    return-void
.end method

.method public a(Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    sget-object v0, Lcom/snapchat/android/camera/model/CameraModel$1;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->b:[Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0}, Lcom/snapchat/android/camera/CameraUtils;->a([Landroid/hardware/Camera$CameraInfo;)I

    move-result v0

    .line 71
    :goto_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/model/CameraModel;->a(I)V

    .line 72
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->b:[Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0}, Lcom/snapchat/android/camera/CameraUtils;->b([Landroid/hardware/Camera$CameraInfo;)I

    move-result v0

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/snapchat/android/util/Resolution;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/snapchat/android/camera/model/CameraModel;->g:Lcom/snapchat/android/util/Resolution;

    .line 154
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/snapchat/android/camera/model/CameraModel;->k:Z

    .line 81
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/snapchat/android/camera/model/CameraModel;->j:Z

    .line 92
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->k:Z

    return v0
.end method

.method public b(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 111
    iget v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->b:[Landroid/hardware/Camera$CameraInfo;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->b:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput p1, p0, Lcom/snapchat/android/camera/model/CameraModel;->d:I

    .line 130
    return-void
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/snapchat/android/camera/model/CameraModel;->e:Z

    .line 142
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->j:Z

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    return v0
.end method

.method public d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/snapchat/android/camera/model/CameraModel;->f:Z

    .line 150
    return-void
.end method

.method public e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/snapchat/android/camera/model/CameraModel;->h:Z

    .line 163
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->d:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/model/CameraModel;->b(I)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->d:I

    .line 123
    iput-boolean v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->h:Z

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->i:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    .line 125
    iput-boolean v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->e:Z

    .line 126
    return-void
.end method

.method public h()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->d:I

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->f:Z

    return v0
.end method

.method public j()Lcom/snapchat/android/util/Resolution;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->g:Lcom/snapchat/android/util/Resolution;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->h:Z

    return v0
.end method

.method public l()Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->i:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    return-object v0
.end method

.method public m()Landroid/hardware/Camera$CameraInfo;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 180
    iget v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/snapchat/android/camera/model/CameraModel;->b:[Landroid/hardware/Camera$CameraInfo;

    iget v1, p0, Lcom/snapchat/android/camera/model/CameraModel;->d:I

    aget-object v0, v0, v1

    .line 183
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
