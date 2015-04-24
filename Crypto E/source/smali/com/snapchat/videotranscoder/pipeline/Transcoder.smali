.class public abstract Lcom/snapchat/videotranscoder/pipeline/Transcoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/videotranscoder/pipeline/Transcoder$1;,
        Lcom/snapchat/videotranscoder/pipeline/Transcoder$VideoEncoderDone;,
        Lcom/snapchat/videotranscoder/pipeline/Transcoder$AudioEncoderDone;,
        Lcom/snapchat/videotranscoder/pipeline/Transcoder$VideoProviderDone;,
        Lcom/snapchat/videotranscoder/pipeline/Transcoder$AudioProviderDone;
    }
.end annotation


# instance fields
.field private a:Lcom/snapchat/videotranscoder/pipeline/Mixer;

.field private b:Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

.field private c:Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

.field private d:Lcom/snapchat/videotranscoder/video/VideoEncoder;

.field private e:Lcom/snapchat/videotranscoder/audio/AudioEncoder;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private volatile j:Z

.field private k:I


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;)V
    .locals 5
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

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->f:Z

    .line 31
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->g:Z

    .line 33
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->h:Z

    .line 34
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->i:Z

    .line 36
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->j:Z

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->k:I

    .line 52
    iput-object p1, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->a:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    .line 55
    new-instance v0, Lcom/snapchat/videotranscoder/utils/Utils;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/Utils;-><init>()V

    const-string v1, "Transcoder"

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/utils/Utils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "There is no looper thread"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "Transcoder"

    const-string v1, "Setting up video components of the transcoder."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Lcom/snapchat/videotranscoder/video/VideoEncoder;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->a:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    new-instance v2, Lcom/snapchat/videotranscoder/pipeline/Transcoder$VideoEncoderDone;

    invoke-direct {v2, p0, v3}, Lcom/snapchat/videotranscoder/pipeline/Transcoder$VideoEncoderDone;-><init>(Lcom/snapchat/videotranscoder/pipeline/Transcoder;Lcom/snapchat/videotranscoder/pipeline/Transcoder$1;)V

    invoke-direct {v0, v1, v2, p2}, Lcom/snapchat/videotranscoder/video/VideoEncoder;-><init>(Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->d:Lcom/snapchat/videotranscoder/video/VideoEncoder;

    .line 62
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->d:Lcom/snapchat/videotranscoder/video/VideoEncoder;

    new-instance v1, Lcom/snapchat/videotranscoder/pipeline/Transcoder$VideoProviderDone;

    invoke-direct {v1, p0, v3}, Lcom/snapchat/videotranscoder/pipeline/Transcoder$VideoProviderDone;-><init>(Lcom/snapchat/videotranscoder/pipeline/Transcoder;Lcom/snapchat/videotranscoder/pipeline/Transcoder$1;)V

    invoke-virtual {p0, v0, p2, v1}, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->a(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->b:Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

    .line 70
    :goto_0
    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    const-string v0, "Transcoder"

    const-string v1, "Setting up audio components of the transcoder."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Lcom/snapchat/videotranscoder/audio/AudioEncoder;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->a:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    new-instance v2, Lcom/snapchat/videotranscoder/pipeline/Transcoder$AudioEncoderDone;

    invoke-direct {v2, p0, v3}, Lcom/snapchat/videotranscoder/pipeline/Transcoder$AudioEncoderDone;-><init>(Lcom/snapchat/videotranscoder/pipeline/Transcoder;Lcom/snapchat/videotranscoder/pipeline/Transcoder$1;)V

    invoke-direct {v0, v1, v2, p3}, Lcom/snapchat/videotranscoder/audio/AudioEncoder;-><init>(Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->e:Lcom/snapchat/videotranscoder/audio/AudioEncoder;

    .line 74
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->e:Lcom/snapchat/videotranscoder/audio/AudioEncoder;

    new-instance v1, Lcom/snapchat/videotranscoder/pipeline/Transcoder$AudioProviderDone;

    invoke-direct {v1, p0, v3}, Lcom/snapchat/videotranscoder/pipeline/Transcoder$AudioProviderDone;-><init>(Lcom/snapchat/videotranscoder/pipeline/Transcoder;Lcom/snapchat/videotranscoder/pipeline/Transcoder$1;)V

    invoke-virtual {p0, v0, p3, v1}, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->b(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->c:Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

    .line 80
    :goto_1
    return-void

    .line 64
    :cond_1
    iput-object v3, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->d:Lcom/snapchat/videotranscoder/video/VideoEncoder;

    .line 65
    iput-object v3, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->b:Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

    .line 66
    iput-boolean v4, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->h:Z

    .line 67
    iput-boolean v4, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->f:Z

    goto :goto_0

    .line 76
    :cond_2
    iput-object v3, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->e:Lcom/snapchat/videotranscoder/audio/AudioEncoder;

    .line 77
    iput-boolean v4, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->i:Z

    .line 78
    iput-boolean v4, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->g:Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/snapchat/videotranscoder/pipeline/Transcoder;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/videotranscoder/pipeline/Transcoder;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->f:Z

    return p1
.end method

.method private c()I
    .locals 2

    .prologue
    .line 227
    const/16 v0, 0x64

    .line 229
    iget-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->b:Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->b:Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;->b()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->c:Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->c:Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;->b()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 237
    :cond_1
    return v0
.end method

.method static synthetic c(Lcom/snapchat/videotranscoder/pipeline/Transcoder;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->i:Z

    return p1
.end method

.method static synthetic d(Lcom/snapchat/videotranscoder/pipeline/Transcoder;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->h:Z

    return p1
.end method


# virtual methods
.method public abstract a(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)Lcom/snapchat/videotranscoder/pipeline/MediaProvider;
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->b:Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "Transcoder"

    const-string v1, "releasing video provider"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->b:Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;->a()V

    .line 131
    iput-object v2, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->b:Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->d:Lcom/snapchat/videotranscoder/video/VideoEncoder;

    if-eqz v0, :cond_1

    .line 135
    const-string v0, "Transcoder"

    const-string v1, "releasing video, encoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->d:Lcom/snapchat/videotranscoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoEncoder;->a()V

    .line 137
    iput-object v2, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->d:Lcom/snapchat/videotranscoder/video/VideoEncoder;

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->c:Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

    if-eqz v0, :cond_2

    .line 141
    const-string v0, "Transcoder"

    const-string v1, "releasing audio provider"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->c:Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;->a()V

    .line 143
    iput-object v2, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->c:Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->e:Lcom/snapchat/videotranscoder/audio/AudioEncoder;

    if-eqz v0, :cond_3

    .line 147
    const-string v0, "Transcoder"

    const-string v1, "releasing audio, encoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->e:Lcom/snapchat/videotranscoder/audio/AudioEncoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioEncoder;->a()V

    .line 149
    iput-object v2, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->e:Lcom/snapchat/videotranscoder/audio/AudioEncoder;

    .line 152
    :cond_3
    iput-object v2, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->a:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    .line 153
    return-void
.end method

.method public a(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 89
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->h:Z

    if-nez v0, :cond_6

    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->j:Z

    if-nez v0, :cond_6

    .line 90
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->c:Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->g:Z

    if-nez v0, :cond_2

    .line 91
    const-string v0, "Transcoder"

    const-string v1, "Calling audio provider"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->c:Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;->d()V

    .line 93
    const-string v0, "Transcoder"

    const-string v1, "done Calling audio provider"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->e:Lcom/snapchat/videotranscoder/audio/AudioEncoder;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->i:Z

    if-nez v0, :cond_3

    .line 97
    const-string v0, "Transcoder"

    const-string v1, "Calling audio encoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->e:Lcom/snapchat/videotranscoder/audio/AudioEncoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioEncoder;->d()V

    .line 99
    const-string v0, "Transcoder"

    const-string v1, "done Calling audio encoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_3
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->f:Z

    if-nez v0, :cond_4

    .line 103
    const-string v0, "Transcoder"

    const-string v1, "Calling video provider"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->b:Lcom/snapchat/videotranscoder/pipeline/MediaProvider;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;->d()V

    .line 105
    const-string v0, "Transcoder"

    const-string v1, "done Calling video provider"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_4
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->h:Z

    if-nez v0, :cond_5

    .line 109
    const-string v0, "Transcoder"

    const-string v1, "Calling video encoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->d:Lcom/snapchat/videotranscoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoEncoder;->d()V

    .line 111
    const-string v0, "Transcoder"

    const-string v1, "done Calling video encoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_5
    if-eqz p1, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->c()I

    move-result v0

    .line 116
    iget v1, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->k:I

    if-eq v0, v1, :cond_0

    .line 117
    iput v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->k:I

    .line 118
    invoke-interface {p1, v0}, Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;->a(I)V

    goto :goto_0

    .line 122
    :cond_6
    return-void
.end method

.method public abstract b(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)Lcom/snapchat/videotranscoder/pipeline/MediaProvider;
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
.end method

.method public b()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->j:Z

    .line 160
    return-void
.end method
