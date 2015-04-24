.class public Lcom/snapchat/videotranscoder/task/VideoMediaSource;
.super Lcom/snapchat/videotranscoder/task/MediaSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;,
        Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;
    }
.end annotation


# instance fields
.field private a:J

.field private final b:[F

.field private final c:Ljava/lang/String;

.field private final d:Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;

.field private final e:Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;

.field private f:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

.field private g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[FLjava/lang/String;Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;)V
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
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/task/MediaSource;-><init>(Ljava/lang/String;)V

    .line 15
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->a:J

    .line 22
    sget-object v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->a:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->f:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 23
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->a:J

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->g:J

    .line 57
    sget-object v0, Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;->b:Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;

    if-ne p4, v0, :cond_0

    sget-object v0, Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;->c:Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;

    if-eq p5, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->a(Z)V

    .line 60
    iput-object p2, p0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->b:[F

    .line 61
    iput-object p3, p0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->c:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->d:Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;

    .line 63
    iput-object p5, p0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->e:Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;

    .line 64
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[FLjava/lang/String;Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;)V
    .locals 6
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
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;-><init>(Ljava/lang/String;[FLjava/lang/String;Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;)V

    .line 83
    iput-object p4, p0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->f:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 84
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->g:J

    iget-wide v2, p0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/snapchat/videotranscoder/utils/MimeTools;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/MimeTools;-><init>()V

    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->c(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->g:J

    .line 96
    :cond_0
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->g:J

    return-wide v0
.end method

.method public c()[F
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->b:[F

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/snapchat/videotranscoder/video/ShaderText$Type;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->f:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    return-object v0
.end method

.method public f()Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->d:Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;

    return-object v0
.end method

.method public g()Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->e:Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;

    return-object v0
.end method
