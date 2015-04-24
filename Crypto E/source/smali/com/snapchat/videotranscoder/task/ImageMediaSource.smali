.class public Lcom/snapchat/videotranscoder/task/ImageMediaSource;
.super Lcom/snapchat/videotranscoder/task/MediaSource;
.source "SourceFile"


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/task/MediaSource;-><init>(Ljava/lang/String;)V

    .line 24
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->a(Z)V

    .line 25
    const-string v0, "ImageMediaSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display Time (ms): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iput-wide p2, p0, Lcom/snapchat/videotranscoder/task/ImageMediaSource;->a:J

    .line 27
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/task/ImageMediaSource;->a:J

    return-wide v0
.end method
