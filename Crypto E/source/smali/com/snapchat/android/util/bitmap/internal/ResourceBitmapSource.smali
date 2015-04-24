.class public Lcom/snapchat/android/util/bitmap/internal/ResourceBitmapSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/bitmap/internal/BitmapSource;


# instance fields
.field private final a:I

.field private b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/snapchat/android/util/bitmap/internal/ResourceBitmapSource;->a:I

    .line 20
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/internal/ResourceBitmapSource;->b:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    .line 30
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot decode bitmap without calling prepare!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/internal/ResourceBitmapSource;->b:Landroid/content/res/Resources;

    iget v1, p0, Lcom/snapchat/android/util/bitmap/internal/ResourceBitmapSource;->a:I

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p2, p0, Lcom/snapchat/android/util/bitmap/internal/ResourceBitmapSource;->b:Landroid/content/res/Resources;

    .line 25
    return-void
.end method
