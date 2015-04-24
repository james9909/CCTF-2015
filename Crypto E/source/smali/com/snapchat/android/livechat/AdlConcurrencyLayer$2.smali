.class Lcom/snapchat/android/livechat/AdlConcurrencyLayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/livechat/AdlConcurrencyLayer;


# direct methods
.method constructor <init>(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$2;->a:Lcom/snapchat/android/livechat/AdlConcurrencyLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$2;->a:Lcom/snapchat/android/livechat/AdlConcurrencyLayer;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;)Lcom/snapchat/android/livechat/LiveChatProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$2;->a:Lcom/snapchat/android/livechat/AdlConcurrencyLayer;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;)Lcom/snapchat/android/livechat/LiveChatProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/livechat/LiveChatProvider;->a()V

    .line 63
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$2;->a:Lcom/snapchat/android/livechat/AdlConcurrencyLayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;Lcom/snapchat/android/livechat/LiveChatProvider;)Lcom/snapchat/android/livechat/LiveChatProvider;

    .line 65
    :cond_0
    return-void
.end method
