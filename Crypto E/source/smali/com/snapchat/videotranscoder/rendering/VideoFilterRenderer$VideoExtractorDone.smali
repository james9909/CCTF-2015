.class Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$VideoExtractorDone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoExtractorDone"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;


# direct methods
.method private constructor <init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$VideoExtractorDone;->a:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$VideoExtractorDone;-><init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$VideoExtractorDone;->a:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->c(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z

    .line 297
    return-void
.end method
