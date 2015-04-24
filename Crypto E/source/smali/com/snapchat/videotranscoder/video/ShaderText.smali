.class public Lcom/snapchat/videotranscoder/video/ShaderText;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/videotranscoder/video/ShaderText$1;,
        Lcom/snapchat/videotranscoder/video/ShaderText$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 135
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   %s}\n"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/snapchat/videotranscoder/video/ShaderText;->b(Lcom/snapchat/videotranscoder/video/ShaderText$Type;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "gl_FragColor"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/video/ShaderText$Type;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 145
    invoke-static {p0}, Lcom/snapchat/videotranscoder/video/ShaderText;->b(Lcom/snapchat/videotranscoder/video/ShaderText$Type;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "vec4 leftSample"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {p1}, Lcom/snapchat/videotranscoder/video/ShaderText;->b(Lcom/snapchat/videotranscoder/video/ShaderText$Type;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "vec4 rightSample"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 147
    if-ne p0, p1, :cond_0

    .line 148
    const-string v0, "vec4 rightSample = leftSample;\n"

    .line 150
    :cond_0
    const-string v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform mat4 uTransform;\nuniform float uSplit;\nvoid main() {\n   vec4 originalCoord = uTransform * vec4(vTextureCoord.x, vTextureCoord.y, 0.0, 1.0);\n   %s   %s   float isLeftSample = step(originalCoord.x, uSplit);\n   float isRightSample = 1.0 - isLeftSample;\n   gl_FragColor = leftSample * isLeftSample + rightSample * isRightSample;\n}\n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/snapchat/videotranscoder/video/ShaderText$Type;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 122
    sget-object v0, Lcom/snapchat/videotranscoder/video/ShaderText$1;->a:[I

    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 130
    const-string v0, "%s = texture2D(sTexture, vTextureCoord);\n"

    :goto_0
    return-object v0

    .line 124
    :pswitch_0
    const-string v0, "   vec3 R0 = vec3( 0.299, 0.587, 0.114 );\n   vec3 irgb = texture2D(sTexture, vTextureCoord).rgb;\n   float luminance = dot(irgb, R0);\n   %s = vec4(luminance, luminance, luminance, 1.);\n"

    goto :goto_0

    .line 126
    :pswitch_1
    const-string v0, "   lowp mat4 colorMatrix = mat4(0.3588, 0.7044, 0.1368, 0.0,                                0.2990, 0.5870, 0.1140, 0.0,                                0.2392, 0.4969, 0.0912, 0.0,                                0.0, 0.0, 0.0, 1.0)   ;\n   lowp float intensity = 1.0;\n   lowp vec4 textureColor = texture2D(sTexture, vTextureCoord);\n   lowp vec4 outputColor = textureColor * colorMatrix;\n    \n    %s = (intensity * outputColor) + ((1.0 - intensity) * textureColor);\n"

    goto :goto_0

    .line 128
    :pswitch_2
    const-string v0, "     lowp vec3 rgb = texture2D(sTexture, vTextureCoord).rgb;\n     float red = rgb.x * 0.9647;\n     float green = rgb.y * 0.8666;\n     float blue = 0.1330 + 0.5454 * rgb.z;\n     %s = vec4(red, green, blue, 1.0);\n"

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
