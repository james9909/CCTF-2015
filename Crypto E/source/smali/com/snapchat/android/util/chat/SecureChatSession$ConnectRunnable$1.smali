.class Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Ljavax/net/ssl/SSLSocket;

.field final synthetic c:Lcom/snapchat/android/util/chat/SCMessageOutputStream;

.field final synthetic d:Lcom/snapchat/android/util/chat/SCMessageInputStream;

.field final synthetic e:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;Ljava/util/concurrent/atomic/AtomicBoolean;Ljavax/net/ssl/SSLSocket;Lcom/snapchat/android/util/chat/SCMessageOutputStream;Lcom/snapchat/android/util/chat/SCMessageInputStream;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable$1;->e:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;

    iput-object p2, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable$1;->b:Ljavax/net/ssl/SSLSocket;

    iput-object p4, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable$1;->c:Lcom/snapchat/android/util/chat/SCMessageOutputStream;

    iput-object p5, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable$1;->d:Lcom/snapchat/android/util/chat/SCMessageInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 446
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession DISCONNECT due to ConnectMessage timeout"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable$1;->b:Ljavax/net/ssl/SSLSocket;

    invoke-static {v0}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/net/Socket;)V

    .line 449
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable$1;->c:Lcom/snapchat/android/util/chat/SCMessageOutputStream;

    invoke-static {v0}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    .line 450
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable$1;->d:Lcom/snapchat/android/util/chat/SCMessageInputStream;

    invoke-static {v0}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    .line 452
    :cond_0
    return-void
.end method
