.class Lcom/snapchat/android/livechat/AdlConcurrencyLayer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a(Lcom/snapchat/android/ui/here/DisconnectReason;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/here/DisconnectReason;

.field final synthetic b:Z

.field final synthetic c:Lcom/snapchat/android/livechat/AdlConcurrencyLayer;


# direct methods
.method constructor <init>(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;Lcom/snapchat/android/ui/here/DisconnectReason;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$4;->c:Lcom/snapchat/android/livechat/AdlConcurrencyLayer;

    iput-object p2, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$4;->a:Lcom/snapchat/android/ui/here/DisconnectReason;

    iput-boolean p3, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$4;->c:Lcom/snapchat/android/livechat/AdlConcurrencyLayer;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;)Lcom/snapchat/android/livechat/LiveChatProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$4;->c:Lcom/snapchat/android/livechat/AdlConcurrencyLayer;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;)Lcom/snapchat/android/livechat/LiveChatProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$4;->a:Lcom/snapchat/android/ui/here/DisconnectReason;

    iget-boolean v2, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$4;->b:Z

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/livechat/LiveChatProvider;->a(Lcom/snapchat/android/ui/here/DisconnectReason;Z)V

    .line 94
    :cond_0
    return-void
.end method
