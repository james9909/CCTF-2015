.class Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioExtractorDone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/videotranscoder/audio/AudioProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioExtractorDone"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/videotranscoder/audio/AudioProvider;


# direct methods
.method private constructor <init>(Lcom/snapchat/videotranscoder/audio/AudioProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioExtractorDone;->a:Lcom/snapchat/videotranscoder/audio/AudioProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/videotranscoder/audio/AudioProvider;Lcom/snapchat/videotranscoder/audio/AudioProvider$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioExtractorDone;-><init>(Lcom/snapchat/videotranscoder/audio/AudioProvider;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioExtractorDone;->a:Lcom/snapchat/videotranscoder/audio/AudioProvider;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/audio/AudioProvider;->a(Lcom/snapchat/videotranscoder/audio/AudioProvider;Z)Z

    .line 97
    return-void
.end method
