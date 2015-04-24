.class Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;


# direct methods
.method constructor <init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->a:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->a:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->c(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->a:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->c(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->e()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->a:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->e(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->a:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->e(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->e()V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->a:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->h(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->a:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-static {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->h(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->c()V

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->a:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->a(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z

    .line 235
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->a:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->b(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z

    .line 236
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->a:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->c(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z

    .line 237
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->a:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->d(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z

    .line 238
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;->a:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->e(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z

    .line 239
    return-void
.end method
