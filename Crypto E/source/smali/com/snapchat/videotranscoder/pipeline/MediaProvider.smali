.class public abstract Lcom/snapchat/videotranscoder/pipeline/MediaProvider;
.super Lcom/snapchat/videotranscoder/pipeline/Stage;
.source "SourceFile"


# instance fields
.field public a:Lcom/snapchat/videotranscoder/pipeline/Encoder;


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 22
    invoke-direct {p0, p2}, Lcom/snapchat/videotranscoder/pipeline/Stage;-><init>(Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 23
    iput-object p1, p0, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;->a:Lcom/snapchat/videotranscoder/pipeline/Encoder;

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;->a:Lcom/snapchat/videotranscoder/pipeline/Encoder;

    .line 31
    return-void
.end method

.method public abstract b()I
.end method
