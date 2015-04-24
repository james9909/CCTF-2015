.class public Lcom/addlive/view/VideoRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final FRAGMENT_SHADER_SRC:Ljava/lang/String; = "precision mediump float;                                \nvarying vec2 TexCoordOut;                           \nuniform sampler2D TextureY;                         \nuniform sampler2D TextureU;                         \nuniform sampler2D TextureV;                         \nconst mat3 yuv2rgb = mat3(                          \n  1, 1, 1,                                          \n  0, -0.18732, 1.8556,                              \n  1.57481, -0.46813, 0);                            \nvoid main(void) {                                   \n  vec3 yuv;                                         \n  vec3 rgb;                                         \n  yuv.x = texture2D(TextureY, TexCoordOut).r;       \n  yuv.y = texture2D(TextureU, TexCoordOut).r - 0.5; \n  yuv.z = texture2D(TextureV, TexCoordOut).r - 0.5; \n  rgb = yuv2rgb * yuv;                              \n  gl_FragColor = vec4(rgb, 1.0);                    \n}                                                   \n"

.field private static final LOG_TAG:Ljava/lang/String; = "AddLive_SDK"

.field private static final SIZE_FLOAT:I = 0x4

.field private static final SIZE_SHORT:I = 0x2

.field private static final VERTEX_SHADER_SRC:Ljava/lang/String; = "attribute vec4 Position;                                \nattribute vec2 TexCoordIn;                          \nvarying vec2 TexCoordOut;\t                       \nvoid main(void) {                                   \n  gl_Position = Position;\t                       \n  TexCoordOut = TexCoordIn;                         \n}                                                   \n"


# instance fields
.field private indexBuffer:Ljava/nio/ShortBuffer;

.field private mirror:Z

.field private positionSlot:I

.field private program:I

.field private rendererId:I

.field private srfHeight:I

.field private srfWidth:I

.field private texCoordSlot:I

.field private texHeight:I

.field private texU:I

.field private texUniformU:I

.field private texUniformV:I

.field private texUniformY:I

.field private texV:I

.field private texWidth:I

.field private texY:I

.field private updateTextures:Z

.field private vertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v1, p0, Lcom/addlive/view/VideoRenderer;->mirror:Z

    .line 73
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->rendererId:I

    .line 74
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    .line 75
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->positionSlot:I

    .line 76
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texCoordSlot:I

    .line 77
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformY:I

    .line 78
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformU:I

    .line 79
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformV:I

    .line 80
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texY:I

    .line 81
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texU:I

    .line 82
    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texV:I

    .line 83
    iput v1, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    .line 84
    iput v1, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    .line 85
    iput v1, p0, Lcom/addlive/view/VideoRenderer;->srfWidth:I

    .line 86
    iput v1, p0, Lcom/addlive/view/VideoRenderer;->srfHeight:I

    .line 87
    iput-object v2, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 88
    iput-object v2, p0, Lcom/addlive/view/VideoRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    .line 89
    iput-boolean v1, p0, Lcom/addlive/view/VideoRenderer;->updateTextures:Z

    .line 92
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 98
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 100
    iget-object v1, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 102
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    .line 106
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/addlive/view/VideoRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    .line 108
    iget-object v1, p0, Lcom/addlive/view/VideoRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 109
    return-void

    .line 92
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 102
    :array_1
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x0t 0x0t
    .end array-data
.end method

.method private align4(I)I
    .locals 1
    .parameter

    .prologue
    .line 419
    add-int/lit8 v0, p1, 0x3

    and-int/lit8 v0, v0, -0x4

    return v0
.end method

.method private allocTextures(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x1909

    .line 265
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/addlive/view/VideoRenderer;->newTexture(IIILjava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texY:I

    .line 266
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/addlive/view/VideoRenderer;->newTexture(IIILjava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texU:I

    .line 267
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/addlive/view/VideoRenderer;->newTexture(IIILjava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texV:I

    .line 269
    iput p1, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    .line 270
    iput p2, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    .line 271
    return-void
.end method

.method private clearTextures()V
    .locals 10

    .prologue
    const/16 v6, 0x1909

    const/16 v7, 0x1401

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 280
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    if-nez v2, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    invoke-direct {p0, v2}, Lcom/addlive/view/VideoRenderer;->align4(I)I

    move-result v2

    iget v3, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move v2, v1

    .line 285
    :goto_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 286
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 288
    :cond_2
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 289
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texY:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 290
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    invoke-direct {p0, v2}, Lcom/addlive/view/VideoRenderer;->align4(I)I

    move-result v4

    iget v5, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v8

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 295
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lcom/addlive/view/VideoRenderer;->align4(I)I

    move-result v2

    iget v3, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    move v2, v1

    .line 297
    :goto_2
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 298
    const/16 v3, -0x80

    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 300
    :cond_3
    const v2, 0x84c1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 301
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texU:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 302
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lcom/addlive/view/VideoRenderer;->align4(I)I

    move-result v4

    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    div-int/lit8 v5, v2, 0x2

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v8

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 307
    const v2, 0x84c2

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 308
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texV:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 309
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lcom/addlive/view/VideoRenderer;->align4(I)I

    move-result v4

    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    div-int/lit8 v5, v2, 0x2

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v8

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto/16 :goto_0
.end method

.method private createShader(ILjava/lang/String;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 232
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 233
    if-nez v0, :cond_0

    .line 234
    const-string v0, "AddLive_SDK"

    const-string v1, "Error creating shader."

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error creating shader."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 239
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 241
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 242
    const v2, 0x8b81

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 245
    aget v1, v1, v3

    if-nez v1, :cond_1

    .line 246
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 248
    const-string v0, "AddLive_SDK"

    const-string v1, "Error compiling shader."

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error compiling shader."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    return v0
.end method

.method private deallocTextures()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 274
    new-array v0, v4, [I

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->texY:I

    aput v1, v0, v3

    const/4 v1, 0x1

    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texU:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/addlive/view/VideoRenderer;->texV:I

    aput v2, v0, v1

    .line 275
    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 276
    const/4 v0, -0x1

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texV:I

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texU:I

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texY:I

    .line 277
    return-void
.end method

.method private initShaders()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    const v0, 0x8b31

    const-string v1, "attribute vec4 Position;                                \nattribute vec2 TexCoordIn;                          \nvarying vec2 TexCoordOut;\t                       \nvoid main(void) {                                   \n  gl_Position = Position;\t                       \n  TexCoordOut = TexCoordIn;                         \n}                                                   \n"

    invoke-direct {p0, v0, v1}, Lcom/addlive/view/VideoRenderer;->createShader(ILjava/lang/String;)I

    move-result v0

    .line 193
    const v1, 0x8b30

    const-string v2, "precision mediump float;                                \nvarying vec2 TexCoordOut;                           \nuniform sampler2D TextureY;                         \nuniform sampler2D TextureU;                         \nuniform sampler2D TextureV;                         \nconst mat3 yuv2rgb = mat3(                          \n  1, 1, 1,                                          \n  0, -0.18732, 1.8556,                              \n  1.57481, -0.46813, 0);                            \nvoid main(void) {                                   \n  vec3 yuv;                                         \n  vec3 rgb;                                         \n  yuv.x = texture2D(TextureY, TexCoordOut).r;       \n  yuv.y = texture2D(TextureU, TexCoordOut).r - 0.5; \n  yuv.z = texture2D(TextureV, TexCoordOut).r - 0.5; \n  rgb = yuv2rgb * yuv;                              \n  gl_FragColor = vec4(rgb, 1.0);                    \n}                                                   \n"

    invoke-direct {p0, v1, v2}, Lcom/addlive/view/VideoRenderer;->createShader(ILjava/lang/String;)I

    move-result v1

    .line 196
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/addlive/view/VideoRenderer;->program:I

    .line 198
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->program:I

    if-nez v2, :cond_0

    .line 199
    const-string v0, "AddLive_SDK"

    const-string v1, "Error creating program."

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error creating program."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    iget v2, p0, Lcom/addlive/view/VideoRenderer;->program:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 204
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 206
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 208
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 209
    iget v1, p0, Lcom/addlive/view/VideoRenderer;->program:I

    const v2, 0x8b82

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 211
    aget v0, v0, v3

    if-nez v0, :cond_1

    .line 212
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 214
    const-string v0, "AddLive_SDK"

    const-string v1, "Error linking program."

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error linking program."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_1
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 220
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    const-string v1, "Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->positionSlot:I

    .line 221
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    const-string v1, "TexCoordIn"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texCoordSlot:I

    .line 223
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->positionSlot:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 224
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texCoordSlot:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 226
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    const-string v1, "TextureY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformY:I

    .line 227
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    const-string v1, "TextureU"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformU:I

    .line 228
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    const-string v1, "TextureV"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformV:I

    .line 229
    return-void
.end method

.method private newTexture(IIILjava/nio/ByteBuffer;)I
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x812f

    const/16 v4, 0x2601

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 362
    invoke-static {v3}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v9

    .line 363
    invoke-static {v3, v9}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 364
    invoke-virtual {v9, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 366
    const/16 v2, 0xcf5

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 368
    const/16 v2, 0x2801

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 370
    const/16 v2, 0x2800

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 373
    const/16 v2, 0x2802

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 375
    const/16 v2, 0x2803

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 378
    invoke-direct {p0, p1}, Lcom/addlive/view/VideoRenderer;->align4(I)I

    move-result v3

    const/16 v7, 0x1401

    move v2, p3

    move v4, p2

    move v5, v1

    move v6, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 382
    invoke-virtual {v9, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    return v0
.end method

.method private renderFrame()V
    .locals 12

    .prologue
    .line 386
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texY:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texU:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texV:I

    if-gez v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    new-instance v0, Lcom/addlive/service/DrawRequest;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    iget v4, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    iget v5, p0, Lcom/addlive/view/VideoRenderer;->rendererId:I

    iget v6, p0, Lcom/addlive/view/VideoRenderer;->texY:I

    int-to-long v6, v6

    iget v8, p0, Lcom/addlive/view/VideoRenderer;->texU:I

    int-to-long v8, v8

    iget v10, p0, Lcom/addlive/view/VideoRenderer;->texV:I

    int-to-long v10, v10

    invoke-direct/range {v0 .. v11}, Lcom/addlive/service/DrawRequest;-><init>(IIIIIJJJ)V

    .line 392
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/addlive/service/AddLiveService;->draw(Lcom/addlive/service/DrawRequest;)V

    .line 394
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->positionSlot:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 397
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texCoordSlot:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/16 v5, 0xc

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 400
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->positionSlot:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 401
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texCoordSlot:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 403
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 404
    const/16 v0, 0xde1

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->texY:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 405
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformY:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 407
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 408
    const/16 v0, 0xde1

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->texU:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 409
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformU:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 411
    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 412
    const/16 v0, 0xde1

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->texV:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 413
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texUniformV:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 415
    const/4 v0, 0x4

    const/4 v1, 0x6

    const/16 v2, 0x1403

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    goto/16 :goto_0
.end method

.method private updateTexCoord()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x3

    const/high16 v5, 0x3f00

    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    .line 316
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 318
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->srfHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->srfWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/addlive/view/VideoRenderer;->srfHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    .line 322
    :goto_0
    iget v1, p0, Lcom/addlive/view/VideoRenderer;->srfWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/addlive/view/VideoRenderer;->srfHeight:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->srfWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 326
    :goto_1
    iget v3, p0, Lcom/addlive/view/VideoRenderer;->srfWidth:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    .line 327
    iget v4, p0, Lcom/addlive/view/VideoRenderer;->srfHeight:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 329
    mul-float/2addr v3, v5

    div-float v0, v3, v0

    .line 330
    mul-float v3, v5, v4

    div-float v1, v3, v1

    .line 332
    iget v3, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    iget v4, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    and-int/lit8 v4, v4, -0x10

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 333
    div-float v2, v3, v2

    .line 334
    iget v4, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 335
    iget v4, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 337
    iget-boolean v4, p0, Lcom/addlive/view/VideoRenderer;->mirror:Z

    if-nez v4, :cond_2

    .line 338
    iget-object v4, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    add-float v5, v7, v0

    invoke-virtual {v4, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 339
    iget-object v4, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    sub-float v5, v8, v1

    sub-float/2addr v5, v2

    invoke-virtual {v4, v9, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 340
    iget-object v4, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v5, 0x8

    sub-float v6, v8, v0

    sub-float/2addr v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 341
    iget-object v4, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v5, 0x9

    sub-float v6, v8, v1

    sub-float v2, v6, v2

    invoke-virtual {v4, v5, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 342
    iget-object v2, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v4, 0xd

    sub-float v5, v8, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v4, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 343
    iget-object v2, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v3, 0xe

    add-float v4, v7, v1

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 344
    iget-object v2, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v3, 0x12

    add-float/2addr v0, v7

    invoke-virtual {v2, v3, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 345
    iget-object v0, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v2, 0x13

    add-float/2addr v1, v7

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 357
    :goto_2
    const v0, 0x8892

    const/4 v1, 0x0

    const/16 v2, 0x50

    iget-object v3, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 359
    return-void

    .line 318
    :cond_0
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->srfWidth:I

    int-to-float v0, v0

    goto/16 :goto_0

    .line 322
    :cond_1
    iget v1, p0, Lcom/addlive/view/VideoRenderer;->srfHeight:I

    int-to-float v1, v1

    goto/16 :goto_1

    .line 347
    :cond_2
    iget-object v4, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    sub-float v5, v8, v0

    sub-float/2addr v5, v3

    invoke-virtual {v4, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 348
    iget-object v4, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    sub-float v5, v8, v1

    sub-float/2addr v5, v2

    invoke-virtual {v4, v9, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 349
    iget-object v4, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v5, 0x8

    add-float v6, v7, v0

    invoke-virtual {v4, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 350
    iget-object v4, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v5, 0x9

    sub-float v6, v8, v1

    sub-float v2, v6, v2

    invoke-virtual {v4, v5, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 351
    iget-object v2, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v4, 0xd

    add-float v5, v7, v0

    invoke-virtual {v2, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 352
    iget-object v2, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v4, 0xe

    add-float v5, v7, v1

    invoke-virtual {v2, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 353
    iget-object v2, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v4, 0x12

    sub-float v0, v8, v0

    sub-float/2addr v0, v3

    invoke-virtual {v2, v4, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 354
    iget-object v0, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v2, 0x13

    add-float/2addr v1, v7

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_2
.end method

.method private updateTextures(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/addlive/view/VideoRenderer;->deallocTextures()V

    .line 257
    invoke-direct {p0, p1, p2}, Lcom/addlive/view/VideoRenderer;->allocTextures(II)V

    .line 258
    invoke-direct {p0}, Lcom/addlive/view/VideoRenderer;->clearTextures()V

    .line 259
    invoke-direct {p0}, Lcom/addlive/view/VideoRenderer;->updateTexCoord()V

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addlive/view/VideoRenderer;->updateTextures:Z

    .line 262
    return-void
.end method


# virtual methods
.method public getRendererId()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->rendererId:I

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter

    .prologue
    .line 154
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 155
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 157
    iget-boolean v0, p0, Lcom/addlive/view/VideoRenderer;->updateTextures:Z

    if-eqz v0, :cond_0

    .line 158
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    iget v1, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    invoke-direct {p0, v0, v1}, Lcom/addlive/view/VideoRenderer;->updateTextures(II)V

    .line 160
    :cond_0
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->rendererId:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    if-lez v0, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/addlive/view/VideoRenderer;->renderFrame()V

    .line 165
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 166
    return-void
.end method

.method public onResolutionChanged(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 180
    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    if-ne v0, p2, :cond_0

    .line 187
    :goto_0
    return-void

    .line 183
    :cond_0
    iput p1, p0, Lcom/addlive/view/VideoRenderer;->texWidth:I

    .line 184
    iput p2, p0, Lcom/addlive/view/VideoRenderer;->texHeight:I

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addlive/view/VideoRenderer;->updateTextures:Z

    goto :goto_0
.end method

.method public onStartRendering(IZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    iput p1, p0, Lcom/addlive/view/VideoRenderer;->rendererId:I

    .line 170
    iput-boolean p2, p0, Lcom/addlive/view/VideoRenderer;->mirror:Z

    .line 171
    return-void
.end method

.method public onStopRendering()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lcom/addlive/view/VideoRenderer;->rendererId:I

    .line 176
    invoke-direct {p0}, Lcom/addlive/view/VideoRenderer;->clearTextures()V

    .line 177
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 142
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoRenderer::onSurfaceChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {v3, v3, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 147
    iput p2, p0, Lcom/addlive/view/VideoRenderer;->srfWidth:I

    .line 148
    iput p3, p0, Lcom/addlive/view/VideoRenderer;->srfHeight:I

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addlive/view/VideoRenderer;->updateTextures:Z

    .line 151
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x8893

    const v4, 0x8892

    const/4 v3, 0x2

    .line 116
    const-string v0, "AddLive_SDK"

    const-string v1, "GL Details: =================="

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VERSION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f02

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VENDOR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f00

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RENDERER: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f01

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXTENSION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f03

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v0, "AddLive_SDK"

    const-string v1, "=============================="

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {v3}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 124
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    .line 127
    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 128
    const/16 v1, 0x50

    iget-object v2, p0, Lcom/addlive/view/VideoRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const v3, 0x88e0

    invoke-static {v4, v1, v2, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 132
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    .line 133
    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 134
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/addlive/view/VideoRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    const v2, 0x88e4

    invoke-static {v5, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 138
    invoke-direct {p0}, Lcom/addlive/view/VideoRenderer;->initShaders()V

    .line 139
    return-void
.end method
