.class Lcom/snapchat/android/util/bitmap/BitmapSizeComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 39
    invoke-static {p1}, Lcom/snapchat/android/util/SnapMediaUtils;->e(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 21
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    .line 25
    :cond_0
    if-nez p1, :cond_1

    .line 26
    const/4 v0, -0x1

    goto :goto_0

    .line 29
    :cond_1
    if-nez p2, :cond_2

    .line 30
    const/4 v0, 0x1

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/bitmap/BitmapSizeComparator;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/snapchat/android/util/bitmap/BitmapSizeComparator;->a(Landroid/graphics/Bitmap;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15
    check-cast p1, Landroid/graphics/Bitmap;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/util/bitmap/BitmapSizeComparator;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
