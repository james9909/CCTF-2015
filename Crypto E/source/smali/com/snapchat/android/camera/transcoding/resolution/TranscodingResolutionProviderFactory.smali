.class public Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;

    invoke-direct {v0}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;-><init>()V

    sput-object v0, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;->a:Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a()Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;->a:Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;

    return-object v0
.end method

.method private static a(Lcom/snapchat/android/util/Resolution;II)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v0

    mul-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v1

    mul-int/2addr v1, p1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/snapchat/android/util/Resolution;)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 33
    const/16 v0, 0x10

    const/16 v1, 0x9

    invoke-static {p0, v0, v1}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;->a(Lcom/snapchat/android/util/Resolution;II)Z

    move-result v0

    return v0
.end method

.method private static c(Lcom/snapchat/android/util/Resolution;)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 37
    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;->a(Lcom/snapchat/android/util/Resolution;II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/util/Resolution;)Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-static {p1}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;->b(Lcom/snapchat/android/util/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFor16x9Video;

    invoke-direct {v0, p1}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFor16x9Video;-><init>(Lcom/snapchat/android/util/Resolution;)V

    .line 28
    :goto_0
    return-object v0

    .line 25
    :cond_0
    invoke-static {p1}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;->c(Lcom/snapchat/android/util/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    new-instance v0, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFor4x3Video;

    invoke-direct {v0, p1}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFor4x3Video;-><init>(Lcom/snapchat/android/util/Resolution;)V

    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderForNonstandardAspectVideo;

    invoke-direct {v0, p1}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderForNonstandardAspectVideo;-><init>(Lcom/snapchat/android/util/Resolution;)V

    goto :goto_0
.end method
