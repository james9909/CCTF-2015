.class Lcom/snapchat/android/service/SnapchatService$ProcessRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/service/SnapchatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/service/SnapchatService;

.field private final b:Lcom/snapchat/android/operation/Operation;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/service/SnapchatService;Lcom/snapchat/android/operation/Operation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/snapchat/android/service/SnapchatService$ProcessRunnable;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p2, p0, Lcom/snapchat/android/service/SnapchatService$ProcessRunnable;->b:Lcom/snapchat/android/operation/Operation;

    .line 254
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService$ProcessRunnable;->b:Lcom/snapchat/android/operation/Operation;

    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService$ProcessRunnable;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-static {v1}, Lcom/snapchat/android/service/SnapchatService;->a(Lcom/snapchat/android/service/SnapchatService;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/operation/Operation;->a(Landroid/content/Context;)V

    .line 258
    invoke-static {}, Lcom/snapchat/android/service/SnapchatService;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/service/SnapchatService$PostProcessRunnable;

    iget-object v2, p0, Lcom/snapchat/android/service/SnapchatService$ProcessRunnable;->a:Lcom/snapchat/android/service/SnapchatService;

    iget-object v3, p0, Lcom/snapchat/android/service/SnapchatService$ProcessRunnable;->b:Lcom/snapchat/android/operation/Operation;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/service/SnapchatService$PostProcessRunnable;-><init>(Lcom/snapchat/android/service/SnapchatService;Lcom/snapchat/android/operation/Operation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    return-void
.end method
