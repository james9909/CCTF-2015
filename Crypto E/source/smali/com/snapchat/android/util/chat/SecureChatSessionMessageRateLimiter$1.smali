.class Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter$1;->a:Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter$1;->a:Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->a(Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter$1;->a:Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->b(Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;)V

    .line 63
    return-void
.end method
