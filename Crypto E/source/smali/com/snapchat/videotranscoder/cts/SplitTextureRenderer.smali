.class public Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;
.super Lcom/snapchat/videotranscoder/cts/TextureRenderer;
.source "SourceFile"


# static fields
.field private static final o:Ljava/lang/String;


# instance fields
.field private p:I

.field private q:F

.field private r:F

.field private s:I

.field private t:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->a:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    sget-object v1, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->a:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/video/ShaderText;->a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/video/ShaderText$Type;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;-><init>([F)V

    .line 23
    iput v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->q:F

    .line 24
    iput v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->r:F

    .line 27
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->t:[F

    .line 31
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->t:[F

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->d:[F

    invoke-static {v0, v2, v1, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 32
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 43
    invoke-super {p0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->a()V

    .line 45
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->b()V

    .line 47
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->e:I

    const-string v1, "uSplit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->p:I

    .line 48
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->p:I

    if-ne v0, v2, :cond_0

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for uSplit"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->e:I

    const-string v1, "uTransform"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->s:I

    .line 53
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->s:I

    if-ne v0, v2, :cond_1

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for transform"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    return-void
.end method

.method public a(F)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput p1, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->r:F

    .line 78
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->o:Ljava/lang/String;

    .line 61
    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->e:I

    .line 62
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->e:I

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->r:F

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->q:F

    .line 72
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->p:I

    iget v1, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->q:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 73
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->s:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->t:[F

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 74
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->c(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->d()V

    return-void
.end method

.method public bridge synthetic e()V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->e()V

    return-void
.end method

.method public bridge synthetic f()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->f()I

    move-result v0

    return v0
.end method
