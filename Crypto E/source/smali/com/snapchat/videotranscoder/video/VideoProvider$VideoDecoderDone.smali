.class Lcom/snapchat/videotranscoder/video/VideoProvider$VideoDecoderDone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/videotranscoder/video/VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoDecoderDone"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/videotranscoder/video/VideoProvider;


# direct methods
.method private constructor <init>(Lcom/snapchat/videotranscoder/video/VideoProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/snapchat/videotranscoder/video/VideoProvider$VideoDecoderDone;->a:Lcom/snapchat/videotranscoder/video/VideoProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/videotranscoder/video/VideoProvider;Lcom/snapchat/videotranscoder/video/VideoProvider$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/video/VideoProvider$VideoDecoderDone;-><init>(Lcom/snapchat/videotranscoder/video/VideoProvider;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider$VideoDecoderDone;->a:Lcom/snapchat/videotranscoder/video/VideoProvider;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/video/VideoProvider;->b(Lcom/snapchat/videotranscoder/video/VideoProvider;Z)Z

    .line 107
    return-void
.end method
