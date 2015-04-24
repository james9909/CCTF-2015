.class Lcom/snapchat/videotranscoder/cts/TextureRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:[F

.field private static final o:Ljava/lang/String;


# instance fields
.field protected b:Ljava/nio/FloatBuffer;

.field protected c:[F

.field protected d:[F

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:Z

.field protected m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected n:I

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->a:[F

    .line 44
    sget-object v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->a:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    invoke-static {v0}, Lcom/snapchat/videotranscoder/video/ShaderText;->a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->o:Ljava/lang/String;

    return-void

    .line 35
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>([F)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, -0x3039

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->c:[F

    .line 50
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->d:[F

    .line 52
    iput v3, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->f:I

    .line 53
    iput v3, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->g:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->p:Ljava/lang/String;

    .line 59
    iput-boolean v2, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->l:Z

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->m:Ljava/util/Map;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->n:I

    .line 64
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eq v0, v1, :cond_1

    .line 65
    :cond_0
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "Transformation matrix must be defined and have a length of 16"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    sget-object v0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->a:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b:Ljava/nio/FloatBuffer;

    .line 69
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->a:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->d:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 71
    iput-object p1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->d:[F

    .line 72
    return-void
.end method

.method private a(ILjava/lang/String;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 245
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCreateShader type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 247
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 248
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 249
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 250
    const v2, 0x8b81

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 251
    aget v1, v1, v3

    if-nez v1, :cond_0

    .line 252
    const-string v1, "TextureRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not compile shader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v1, "TextureRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 255
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not compile shader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->m:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    return v0
.end method

.method private a(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 264
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sExternalTexture;\nuniform sampler2D sOverlayTexture;\nvoid main() {\n   vec4 externalSample = texture2D(sExternalTexture, vTextureCoord);\n   vec4 overlaySample = texture2D(sOverlayTexture, vTextureCoord);\n   gl_FragColor = externalSample * (1.0 - overlaySample.a) + overlaySample;\n}\n"

    invoke-direct {p0, p1, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->a(ILjava/lang/String;)I

    .line 266
    invoke-static {}, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->values()[Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 267
    invoke-static {v4}, Lcom/snapchat/videotranscoder/video/ShaderText;->a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->a(ILjava/lang/String;)I

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    invoke-static {}, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->values()[Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 270
    invoke-static {}, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->values()[Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_2
    if-ge v0, v7, :cond_1

    aget-object v8, v6, v0

    .line 271
    invoke-static {v5, v8}, Lcom/snapchat/videotranscoder/video/ShaderText;->a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/video/ShaderText$Type;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->a(ILjava/lang/String;)I

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 269
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 274
    :cond_2
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 278
    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->a(ILjava/lang/String;)I

    move-result v0

    .line 279
    if-nez v0, :cond_0

    .line 302
    :goto_0
    return v1

    .line 282
    :cond_0
    const v2, 0x8b30

    invoke-direct {p0, v2}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->a(I)V

    .line 283
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 284
    const-string v3, "glCreateProgram"

    invoke-virtual {p0, v3}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 285
    if-nez v2, :cond_1

    .line 286
    const-string v3, "TextureRenderer"

    const-string v4, "Could not create program"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_1
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 289
    const-string v0, "glAttachShader"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->m:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->n:I

    .line 291
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->n:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 292
    const-string v0, "glAttachShader"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 293
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 294
    new-array v0, v5, [I

    .line 295
    const v3, 0x8b82

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 296
    aget v0, v0, v1

    if-eq v0, v5, :cond_2

    .line 297
    const-string v0, "TextureRenderer"

    const-string v3, "Could not link program: "

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v0, "TextureRenderer"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v0, v1

    :goto_1
    move v1, v0

    .line 302
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public a()V
    .locals 7

    .prologue
    const v6, 0x812f

    const/4 v5, -0x1

    const v4, 0x8d65

    const/4 v1, 0x0

    const/16 v3, 0xde1

    .line 148
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->a(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b()V

    .line 152
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->e:I

    const-string v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->j:I

    .line 153
    const-string v0, "glGetAttribLocation aPosition"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 154
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->j:I

    if-ne v0, v5, :cond_1

    .line 155
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 148
    goto :goto_0

    .line 157
    :cond_1
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->e:I

    const-string v2, "aTextureCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->k:I

    .line 158
    const-string v0, "glGetAttribLocation aTextureCoord"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 159
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->k:I

    if-ne v0, v5, :cond_2

    .line 160
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_2
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->e:I

    const-string v2, "uMVPMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->h:I

    .line 163
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 164
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->h:I

    if-ne v0, v5, :cond_3

    .line 165
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_3
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->e:I

    const-string v2, "uSTMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->i:I

    .line 168
    const-string v0, "glGetUniformLocation uSTMatrix"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 169
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->i:I

    if-ne v0, v5, :cond_4

    .line 170
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uSTMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 174
    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 175
    aget v2, v0, v1

    iput v2, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->f:I

    .line 176
    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->g:I

    .line 178
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->f:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 179
    const-string v0, "glBindTexture mExternalTextureID"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 180
    const/16 v0, 0x2801

    const/high16 v2, 0x4618

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 181
    const/16 v0, 0x2800

    const v2, 0x46180400

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 182
    const/16 v0, 0x2802

    invoke-static {v4, v0, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 183
    const/16 v0, 0x2803

    invoke-static {v4, v0, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 184
    const-string v0, "glTexParameter"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->p:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 187
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->g:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 188
    const-string v0, "glBindTexture mOverlayTextureID"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 189
    const/16 v0, 0x2801

    const v2, 0x46180400

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 190
    const/16 v0, 0x2800

    const v2, 0x46180400

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 191
    const/16 v0, 0x2802

    invoke-static {v3, v0, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 192
    const/16 v0, 0x2803

    invoke-static {v3, v0, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 193
    const-string v0, "glTexParameter"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 195
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 196
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 197
    iget-object v2, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->p:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 198
    invoke-static {v3, v1, v0, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 199
    const-string v1, "texImage2D"

    invoke-virtual {p0, v1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->l:Z

    .line 204
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->a(Z)V

    .line 80
    iput-object p1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->p:Ljava/lang/String;

    .line 81
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sExternalTexture;\nuniform sampler2D sOverlayTexture;\nvoid main() {\n   vec4 externalSample = texture2D(sExternalTexture, vTextureCoord);\n   vec4 overlaySample = texture2D(sOverlayTexture, vTextureCoord);\n   gl_FragColor = externalSample * (1.0 - overlaySample.a) + overlaySample;\n}\n"

    .line 208
    :goto_0
    const-string v1, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->e:I

    .line 209
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->e:I

    if-nez v0, :cond_1

    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    sget-object v0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->o:Ljava/lang/String;

    goto :goto_0

    .line 212
    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 307
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const-string v1, "TextureRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :cond_0
    return-void
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 136
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->e:I

    const-string v1, "sOverlayTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 137
    const-string v1, "glGetUniformLocation"

    invoke-virtual {p0, v1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 138
    const v1, 0x84c1

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 139
    const/16 v1, 0xde1

    iget v2, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->g:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 140
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 142
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 226
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->e:I

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Program doesn\'t exist"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shader does not exist"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 233
    iget v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->n:I

    if-eq v1, v0, :cond_3

    .line 234
    iget v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->n:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 235
    iget v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->e:I

    iget v2, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->n:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 237
    :cond_2
    iput v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->n:I

    .line 238
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->e:I

    iget v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->n:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 239
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->e:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 240
    const-string v0, "glAttachShader"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 242
    :cond_3
    return-void
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 218
    new-array v0, v4, [I

    iget v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->f:I

    aput v1, v0, v3

    const/4 v1, 0x1

    iget v2, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->g:I

    aput v2, v0, v1

    .line 219
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 220
    return-void
.end method

.method public e()V
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x1

    const/high16 v4, 0x3f80

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 89
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->l:Z

    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->a(Z)V

    .line 91
    const-string v0, "onDrawFrame start"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 93
    invoke-static {v2, v4, v2, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 94
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 96
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->e:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 97
    const-string v0, "glUseProgram"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 99
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->e:I

    const-string v2, "sExternalTexture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 100
    const-string v2, "glGetUniformLocation"

    invoke-virtual {p0, v2}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 101
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 102
    const v2, 0x8d65

    iget v4, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->f:I

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 103
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 105
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->c()V

    .line 107
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->j:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 110
    const-string v0, "glVertexAttribPointer maPosition"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 112
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->j:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 113
    const-string v0, "glEnableVertexAttribArray maPositionHandle"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 117
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->k:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 119
    const-string v0, "glVertexAttribPointer maTextureHandle"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 121
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->k:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 122
    const-string v0, "glEnableVertexAttribArray maTextureHandle"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->c:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 125
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->h:I

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->c:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 126
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->i:I

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->d:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 128
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 129
    const-string v0, "glDrawArrays"

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 132
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->l:Z

    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->a(Z)V

    .line 85
    iget v0, p0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->f:I

    return v0
.end method
