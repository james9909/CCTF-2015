.class Lcom/snapchat/android/util/bitmap/BitmapPool$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/bitmap/BitmapPool;->a(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/snapchat/android/util/bitmap/BitmapPool;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/bitmap/BitmapPool;ILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/snapchat/android/util/bitmap/BitmapPool$1;->c:Lcom/snapchat/android/util/bitmap/BitmapPool;

    iput p2, p0, Lcom/snapchat/android/util/bitmap/BitmapPool$1;->a:I

    iput-object p3, p0, Lcom/snapchat/android/util/bitmap/BitmapPool$1;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/BitmapPool$1;->c:Lcom/snapchat/android/util/bitmap/BitmapPool;

    iget v1, p0, Lcom/snapchat/android/util/bitmap/BitmapPool$1;->a:I

    iget-object v2, p0, Lcom/snapchat/android/util/bitmap/BitmapPool$1;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a(Lcom/snapchat/android/util/bitmap/BitmapPool;ILandroid/graphics/Bitmap;)V

    .line 75
    return-void
.end method
