.class public Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$1;,
        Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lcom/snapchat/android/util/bitmap/internal/BitmapSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Z

.field private final h:I

.field private final i:I

.field private final j:Z


# direct methods
.method private constructor <init>(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->a:Landroid/widget/ImageView;

    .line 54
    invoke-static {p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->b(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->b:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;

    .line 55
    invoke-static {p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->c(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->d:Landroid/graphics/Bitmap;

    .line 56
    invoke-static {p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->d(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->h:I

    .line 57
    invoke-static {p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->e(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->i:I

    .line 58
    invoke-static {p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->f(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->g:Z

    .line 59
    invoke-static {p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->g(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->j:Z

    .line 60
    invoke-static {p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->h(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->e:Landroid/os/Bundle;

    .line 62
    invoke-static {p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->i(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->f:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->j(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lcom/snapchat/android/util/bitmap/internal/ResourceBitmapSource;

    invoke-static {p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->j(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/util/bitmap/internal/ResourceBitmapSource;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->c:Lcom/snapchat/android/util/bitmap/internal/BitmapSource;

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-static {p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->k(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    new-instance v0, Lcom/snapchat/android/util/bitmap/internal/ByteArrayBitmapSource;

    invoke-static {p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->k(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/util/bitmap/internal/ByteArrayBitmapSource;-><init>([B)V

    iput-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->c:Lcom/snapchat/android/util/bitmap/internal/BitmapSource;

    goto :goto_0

    .line 69
    :cond_1
    new-instance v0, Lcom/snapchat/android/util/bitmap/internal/UriBitmapSource;

    invoke-static {p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->l(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/util/bitmap/internal/UriBitmapSource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->c:Lcom/snapchat/android/util/bitmap/internal/BitmapSource;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;-><init>(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->h:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->i:I

    return v0
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public f()Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->b:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;

    return-object v0
.end method

.method public g()Landroid/os/Bundle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->j:Z

    return v0
.end method

.method public i()Lcom/snapchat/android/util/bitmap/internal/BitmapSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->c:Lcom/snapchat/android/util/bitmap/internal/BitmapSource;

    return-object v0
.end method
