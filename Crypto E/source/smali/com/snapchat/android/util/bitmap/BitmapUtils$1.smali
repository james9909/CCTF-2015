.class final Lcom/snapchat/android/util/bitmap/BitmapUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/bitmap/BitmapUtils;->a(Lcom/snapchat/android/model/ReceivedSnap;)Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/ReceivedSnap;


# direct methods
.method constructor <init>(Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/snapchat/android/util/bitmap/BitmapUtils$1;->a:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->b()V

    .line 75
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/BitmapUtils$1;->a:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->am()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/BitmapUtils$1;->a:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/ReceivedSnap;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/snapchat/android/util/bitmap/BitmapUtils$1;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
