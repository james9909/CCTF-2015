.class public Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/snapchat/videotranscoder/task/MediaSource;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

.field private final d:Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

.field private final e:Z


# direct methods
.method public constructor <init>([Lcom/snapchat/videotranscoder/task/MediaSource;Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Z)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->a:[Lcom/snapchat/videotranscoder/task/MediaSource;

    .line 36
    iput-object p2, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->b:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->c:Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    .line 38
    iput-object p4, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->d:Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    .line 39
    iput-boolean p5, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->e:Z

    .line 41
    array-length v0, p1

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "No media sources to transcode."

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public a()[Lcom/snapchat/videotranscoder/task/MediaSource;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->a:[Lcom/snapchat/videotranscoder/task/MediaSource;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->c:Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    return-object v0
.end method

.method public d()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->d:Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->e:Z

    return v0
.end method
