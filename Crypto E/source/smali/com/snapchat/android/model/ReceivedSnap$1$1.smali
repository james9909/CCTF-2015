.class Lcom/snapchat/android/model/ReceivedSnap$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/model/ReceivedSnap$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/snapchat/android/model/ReceivedSnap$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/snapchat/android/model/ReceivedSnap$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/snapchat/android/model/ReceivedSnap$1$1;->this$1:Lcom/snapchat/android/model/ReceivedSnap$1;

    iput-object p2, p0, Lcom/snapchat/android/model/ReceivedSnap$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap$1$1;->this$1:Lcom/snapchat/android/model/ReceivedSnap$1;

    iget-object v0, v0, Lcom/snapchat/android/model/ReceivedSnap$1;->val$timingLogger:Lcom/snapchat/android/TimberTimingLogger;

    const-string v1, "runOnUiThreadDelay"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/TimberTimingLogger;->a(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap$1$1;->this$1:Lcom/snapchat/android/model/ReceivedSnap$1;

    iget-object v0, v0, Lcom/snapchat/android/model/ReceivedSnap$1;->val$listener:Lcom/snapchat/android/util/cache/Cache$OnCompleted;

    iget-object v1, p0, Lcom/snapchat/android/model/ReceivedSnap$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/snapchat/android/util/cache/Cache$OnCompleted;->a(Landroid/graphics/Bitmap;)V

    .line 474
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap$1$1;->this$1:Lcom/snapchat/android/model/ReceivedSnap$1;

    iget-object v0, v0, Lcom/snapchat/android/model/ReceivedSnap$1;->val$timingLogger:Lcom/snapchat/android/TimberTimingLogger;

    const-string v1, "onBitmapLoaded"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/TimberTimingLogger;->a(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap$1$1;->this$1:Lcom/snapchat/android/model/ReceivedSnap$1;

    iget-object v0, v0, Lcom/snapchat/android/model/ReceivedSnap$1;->val$timingLogger:Lcom/snapchat/android/TimberTimingLogger;

    invoke-static {v0}, Lcom/snapchat/android/Timber;->a(Lcom/snapchat/android/TimberTimingLogger;)V

    .line 476
    return-void
.end method
