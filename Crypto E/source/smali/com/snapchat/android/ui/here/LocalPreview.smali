.class public Lcom/snapchat/android/ui/here/LocalPreview;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/here/LocalPreview$1;,
        Lcom/snapchat/android/ui/here/LocalPreview$MyGlTextureView;,
        Lcom/snapchat/android/ui/here/LocalPreview$NativeLibraryException;
    }
.end annotation


# static fields
.field private static d:Z


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/util/DisplayMetrics;

.field protected c:[B

.field private e:Lcom/snapchat/android/ui/here/LocalPreview$MyGlTextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 137
    :try_start_0
    const-string v0, "stlport_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 138
    const-string v0, "LocalPreview"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x1

    sput-boolean v0, Lcom/snapchat/android/ui/here/LocalPreview;->d:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string v1, "GlCameraPreview"

    const-string v2, "System.loadLibrary(\"LocalPreview\") failed: %s."

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-boolean v0, Lcom/snapchat/android/ui/here/LocalPreview;->d:Z

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/snapchat/android/ui/here/LocalPreview$NativeLibraryException;

    const-string v1, "Native library failed to load."

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/snapchat/android/ui/here/LocalPreview$NativeLibraryException;-><init>(Lcom/snapchat/android/ui/here/LocalPreview;Ljava/lang/String;Lcom/snapchat/android/ui/here/LocalPreview$1;)V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/ui/here/LocalPreview;->a:Landroid/content/Context;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreview;->b:Landroid/util/DisplayMetrics;

    .line 52
    new-instance v0, Lcom/snapchat/android/ui/here/LocalPreview$MyGlTextureView;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/ui/here/LocalPreview$MyGlTextureView;-><init>(Lcom/snapchat/android/ui/here/LocalPreview;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreview;->e:Lcom/snapchat/android/ui/here/LocalPreview$MyGlTextureView;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/here/LocalPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/LocalPreview;->g()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/here/LocalPreview;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/LocalPreview;->nativeRenderFrame([B)V

    return-void
.end method

.method public static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 43
    sput-boolean p0, Lcom/snapchat/android/ui/here/LocalPreview;->d:Z

    .line 44
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/snapchat/android/ui/here/LocalPreview;->d:Z

    return v0
.end method

.method private g()V
    .locals 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreview;->a:Landroid/content/Context;

    const v1, 0x7f060002

    invoke-static {v0, v1}, Lcom/snapchat/android/util/gl/RawResourceReader;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 80
    const v1, 0x8b31

    invoke-static {v1, v0}, Lcom/snapchat/android/util/gl/ShaderHelper;->a(ILjava/lang/String;)I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/snapchat/android/ui/here/LocalPreview;->a:Landroid/content/Context;

    const v2, 0x7f060001

    invoke-static {v1, v2}, Lcom/snapchat/android/util/gl/RawResourceReader;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 83
    const v2, 0x8b30

    invoke-static {v2, v1}, Lcom/snapchat/android/util/gl/ShaderHelper;->a(ILjava/lang/String;)I

    move-result v1

    .line 85
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "a_Position"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "a_TexCoordinate"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "a_CircleCoordinate"

    aput-object v4, v2, v3

    .line 86
    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/gl/ShaderHelper;->a(II[Ljava/lang/String;)I

    move-result v0

    .line 88
    invoke-static {v0}, Lcom/snapchat/android/ui/here/LocalPreview;->nativeInitialize(I)V

    .line 89
    return-void
.end method

.method private static native nativeInitialize(I)V
.end method

.method private static native nativeIsPreviewSizeSet()Z
.end method

.method private static native nativeReflectX()V
.end method

.method private static native nativeReflectY()V
.end method

.method private native nativeRenderFrame([B)V
.end method

.method private static native nativeResetPreviewSize()V
.end method

.method private static native nativeSetCircleRadius(F)V
.end method

.method private static native nativeSetPreviewSize(IIII)V
.end method


# virtual methods
.method public a(F)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-static {p1}, Lcom/snapchat/android/ui/here/LocalPreview;->nativeSetCircleRadius(F)V

    .line 130
    return-void
.end method

.method public a(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-static {p1, p2, p3, p4}, Lcom/snapchat/android/ui/here/LocalPreview;->nativeSetPreviewSize(IIII)V

    .line 110
    return-void
.end method

.method public a([B)V
    .locals 1
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/snapchat/android/ui/here/LocalPreview;->c:[B

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreview;->e:Lcom/snapchat/android/ui/here/LocalPreview$MyGlTextureView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LocalPreview$MyGlTextureView;->c()V

    .line 106
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LocalPreview;->e:Lcom/snapchat/android/ui/here/LocalPreview$MyGlTextureView;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->nativeIsPreviewSizeSet()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 117
    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->nativeResetPreviewSize()V

    .line 118
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 121
    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->nativeReflectX()V

    .line 122
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 125
    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->nativeReflectY()V

    .line 126
    return-void
.end method
