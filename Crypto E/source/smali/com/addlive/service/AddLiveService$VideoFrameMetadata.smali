.class public Lcom/addlive/service/AddLiveService$VideoFrameMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/service/AddLiveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoFrameMetadata"
.end annotation


# instance fields
.field private height:I

.field private info:Landroid/hardware/Camera$CameraInfo;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 1120
    iget v0, p0, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->height:I

    return v0
.end method

.method public getInfo()Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->info:Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1116
    iget v0, p0, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 1108
    iput p1, p0, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->height:I

    .line 1109
    return-void
.end method

.method public setInfo(Landroid/hardware/Camera$CameraInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->info:Landroid/hardware/Camera$CameraInfo;

    .line 1113
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 1104
    iput p1, p0, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->width:I

    .line 1105
    return-void
.end method
