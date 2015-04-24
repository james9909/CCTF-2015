.class public Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;->b:Landroid/graphics/Bitmap;

    .line 29
    iput-boolean p2, p0, Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;->a:Z

    .line 30
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;->a:Z

    return v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method
