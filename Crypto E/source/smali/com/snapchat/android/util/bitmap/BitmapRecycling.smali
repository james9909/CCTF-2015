.class public Lcom/snapchat/android/util/bitmap/BitmapRecycling;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/util/bitmap/BitmapPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a()Lcom/snapchat/android/util/bitmap/BitmapPool;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/bitmap/BitmapRecycling;-><init>(Lcom/snapchat/android/util/bitmap/BitmapPool;)V

    .line 20
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/util/bitmap/BitmapPool;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/snapchat/android/util/bitmap/BitmapRecycling;->a:Lcom/snapchat/android/util/bitmap/BitmapPool;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 35
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 36
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    iget-object v1, p0, Lcom/snapchat/android/util/bitmap/BitmapRecycling;->a:Lcom/snapchat/android/util/bitmap/BitmapPool;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a(Landroid/graphics/Bitmap;)V

    .line 41
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 42
    return-void
.end method
