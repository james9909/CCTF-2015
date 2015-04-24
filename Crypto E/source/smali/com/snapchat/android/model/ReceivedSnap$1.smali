.class Lcom/snapchat/android/model/ReceivedSnap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/model/ReceivedSnap;->a(Landroid/content/Context;Lcom/snapchat/android/util/cache/Cache$OnCompleted;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/model/ReceivedSnap;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/snapchat/android/util/cache/Cache$OnCompleted;

.field final synthetic val$timingLogger:Lcom/snapchat/android/TimberTimingLogger;


# direct methods
.method constructor <init>(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/TimberTimingLogger;Landroid/content/Context;Lcom/snapchat/android/util/cache/Cache$OnCompleted;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/snapchat/android/model/ReceivedSnap$1;->this$0:Lcom/snapchat/android/model/ReceivedSnap;

    iput-object p2, p0, Lcom/snapchat/android/model/ReceivedSnap$1;->val$timingLogger:Lcom/snapchat/android/TimberTimingLogger;

    iput-object p3, p0, Lcom/snapchat/android/model/ReceivedSnap$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/snapchat/android/model/ReceivedSnap$1;->val$listener:Lcom/snapchat/android/util/cache/Cache$OnCompleted;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap$1;->val$timingLogger:Lcom/snapchat/android/TimberTimingLogger;

    const-string v1, "startDelay"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/TimberTimingLogger;->a(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap$1;->this$0:Lcom/snapchat/android/model/ReceivedSnap;

    iget-object v1, p0, Lcom/snapchat/android/model/ReceivedSnap$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/ReceivedSnap;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 466
    iget-object v1, p0, Lcom/snapchat/android/model/ReceivedSnap$1;->val$timingLogger:Lcom/snapchat/android/TimberTimingLogger;

    const-string v2, "getImageBitmap"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/TimberTimingLogger;->a(Ljava/lang/String;)V

    .line 469
    new-instance v1, Lcom/snapchat/android/model/ReceivedSnap$1$1;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/model/ReceivedSnap$1$1;-><init>(Lcom/snapchat/android/model/ReceivedSnap$1;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 478
    return-void
.end method
