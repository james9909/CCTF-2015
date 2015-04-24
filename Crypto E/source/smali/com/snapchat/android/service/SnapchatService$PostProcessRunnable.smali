.class Lcom/snapchat/android/service/SnapchatService$PostProcessRunnable;
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
    name = "PostProcessRunnable"
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
    .line 269
    iput-object p1, p0, Lcom/snapchat/android/service/SnapchatService$PostProcessRunnable;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p2, p0, Lcom/snapchat/android/service/SnapchatService$PostProcessRunnable;->b:Lcom/snapchat/android/operation/Operation;

    .line 271
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService$PostProcessRunnable;->b:Lcom/snapchat/android/operation/Operation;

    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService$PostProcessRunnable;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-static {v1}, Lcom/snapchat/android/service/SnapchatService;->a(Lcom/snapchat/android/service/SnapchatService;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/operation/Operation;->b(Landroid/content/Context;)V

    .line 277
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService$PostProcessRunnable;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-static {v0}, Lcom/snapchat/android/service/SnapchatService;->b(Lcom/snapchat/android/service/SnapchatService;)Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService$PostProcessRunnable;->b:Lcom/snapchat/android/operation/Operation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Lcom/snapchat/android/operation/Operation;)V

    .line 278
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService$PostProcessRunnable;->a:Lcom/snapchat/android/service/SnapchatService;

    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService$PostProcessRunnable;->b:Lcom/snapchat/android/operation/Operation;

    invoke-static {v0, v1}, Lcom/snapchat/android/service/SnapchatService;->a(Lcom/snapchat/android/service/SnapchatService;Lcom/snapchat/android/operation/Operation;)V

    .line 279
    return-void
.end method
