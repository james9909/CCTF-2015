.class Lcom/snapchat/videotranscoder/pipeline/Transcoder$AudioProviderDone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/videotranscoder/pipeline/Transcoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioProviderDone"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/videotranscoder/pipeline/Transcoder;


# direct methods
.method private constructor <init>(Lcom/snapchat/videotranscoder/pipeline/Transcoder;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder$AudioProviderDone;->a:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/videotranscoder/pipeline/Transcoder;Lcom/snapchat/videotranscoder/pipeline/Transcoder$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/pipeline/Transcoder$AudioProviderDone;-><init>(Lcom/snapchat/videotranscoder/pipeline/Transcoder;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder$AudioProviderDone;->a:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->a(Lcom/snapchat/videotranscoder/pipeline/Transcoder;Z)Z

    .line 194
    return-void
.end method
