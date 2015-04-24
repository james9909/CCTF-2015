.class Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/chat/SecureChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/chat/SecureChatSession;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSession;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSession;Lcom/snapchat/android/util/chat/SecureChatSession$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 371
    invoke-static {}, Lcom/snapchat/android/util/chat/SecureChatSslContextFactory;->a()Lcom/snapchat/android/util/chat/SecureChatSslContextFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSslContextFactory;->b()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 372
    if-nez v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 375
    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-static {v2, v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    .line 376
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->g(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v2

    .line 377
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 378
    invoke-static {}, Lcom/snapchat/android/util/chat/SecureChatSession;->j()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0

    .line 379
    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 380
    invoke-interface {v3, v1, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 378
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 383
    :cond_2
    invoke-static {v3}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {v2, v0}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->g(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 386
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->g(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 387
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->g(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 388
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->g(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/server/chat/SignedPayload;)Z
    .locals 4
    .parameter

    .prologue
    .line 392
    new-instance v0, Lcom/snapchat/android/model/server/chat/ConnectMessage;

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->e(Lcom/snapchat/android/util/chat/SecureChatSession;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/snapchat/android/model/server/chat/ConnectMessage;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    .line 393
    const-string v1, "SecureChatSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHAT-LOG: SecureChatSession writeConnectMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->h(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SCMessageOutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/chat/SCMessageOutputStream;->a(Lcom/snapchat/android/model/server/chat/SCMessage;)V

    .line 395
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 400
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession executing CONNECT runnable"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 402
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;->b:Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    if-eq v0, v1, :cond_0

    .line 403
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession CONNECT returning because intended connection state != CONNECTED"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->b(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->a:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-eq v0, v1, :cond_1

    .line 407
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession CONNECT returning because connection state != DISCONNECTED"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->e(Lcom/snapchat/android/util/chat/SecureChatSession;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->z()Lcom/snapchat/android/model/server/MessagingGatewayInfo;

    move-result-object v0

    .line 412
    if-nez v0, :cond_2

    .line 413
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession CONNECT returning because messaging gateway info is null"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 416
    :cond_2
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->getPort()I

    move-result v2

    .line 419
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->getGatewayAuthToken()Lcom/snapchat/android/model/server/chat/SignedPayload;

    move-result-object v10

    .line 420
    if-nez v10, :cond_3

    .line 421
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession CONNECT returning because messaging gateway auth token is null"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 425
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;J)J

    .line 426
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->i(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 427
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0, v7}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;Z)Z

    .line 428
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    sget-object v3, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->b:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    invoke-static {v0, v3}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V

    .line 432
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a(Ljava/lang/String;I)V

    .line 434
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    new-instance v1, Lcom/snapchat/android/util/chat/SCMessageInputStream;

    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v2}, Lcom/snapchat/android/util/chat/SecureChatSession;->g(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    iget-object v3, v3, Lcom/snapchat/android/util/chat/SecureChatSession;->a:Lcom/snapchat/android/util/GsonWrapper;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/chat/SCMessageInputStream;-><init>(Ljava/io/InputStream;Lcom/snapchat/android/util/GsonWrapper;)V

    invoke-static {v0, v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;Lcom/snapchat/android/util/chat/SCMessageInputStream;)Lcom/snapchat/android/util/chat/SCMessageInputStream;

    .line 435
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    new-instance v1, Lcom/snapchat/android/util/chat/SCMessageOutputStream;

    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v2}, Lcom/snapchat/android/util/chat/SecureChatSession;->g(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    iget-object v3, v3, Lcom/snapchat/android/util/chat/SecureChatSession;->a:Lcom/snapchat/android/util/GsonWrapper;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/chat/SCMessageOutputStream;-><init>(Ljava/io/OutputStream;Lcom/snapchat/android/util/GsonWrapper;)V

    invoke-static {v0, v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;Lcom/snapchat/android/util/chat/SCMessageOutputStream;)Lcom/snapchat/android/util/chat/SCMessageOutputStream;

    .line 437
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 438
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->g(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    .line 439
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->j(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SCMessageInputStream;

    move-result-object v5

    .line 440
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->h(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SCMessageOutputStream;

    move-result-object v4

    .line 442
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->k(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v11

    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable$1;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;Ljava/util/concurrent/atomic/AtomicBoolean;Ljavax/net/ssl/SSLSocket;Lcom/snapchat/android/util/chat/SCMessageOutputStream;Lcom/snapchat/android/util/chat/SCMessageInputStream;)V

    const-wide/16 v4, 0x4e20

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v11, v0, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 455
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->k(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable$2;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;)V

    const-wide/16 v4, 0xbb8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 467
    invoke-direct {p0, v10}, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a(Lcom/snapchat/android/model/server/chat/SignedPayload;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 468
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->j(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SCMessageInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SCMessageInputStream;->a()Lcom/snapchat/android/model/server/chat/SCMessage;

    move-result-object v0

    .line 469
    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 470
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/SCMessage;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connect_response"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 471
    check-cast v0, Lcom/snapchat/android/model/server/chat/ConnectResponse;

    .line 472
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConnectResponse;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 473
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v0, v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 474
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->m(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->j(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SCMessageInputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->a(Lcom/snapchat/android/util/chat/SCMessageInputStream;)V

    .line 475
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->n(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->h(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SCMessageOutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->a(Lcom/snapchat/android/util/chat/SCMessageOutputStream;)V

    .line 476
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->o(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    const-wide/16 v2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 477
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->c:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V

    .line 478
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;I)I

    .line 479
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->b(Lcom/snapchat/android/util/chat/SecureChatSession;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    :goto_1
    move v7, v0

    .line 508
    :cond_4
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v8

    invoke-static {v7, v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ZJ)V

    goto/16 :goto_0

    .line 482
    :cond_5
    :try_start_1
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession DISCONNECT due to countdown latch timeout"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->c(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    .line 484
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->f(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    move v0, v7

    goto :goto_1

    .line 487
    :cond_6
    const-string v1, "SecureChatSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHAT-LOG: SecureChatSession DISCONNECT due to unsuccessful ConnectResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->c(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    .line 490
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConnectResponse;->getFailureReason()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wrong_server"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 491
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->p(Lcom/snapchat/android/util/chat/SecureChatSession;)I

    .line 492
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConnectResponse;->getAlternativeServer()Lcom/snapchat/android/model/server/chat/ConnectResponse$Server;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;Lcom/snapchat/android/model/server/chat/ConnectResponse$Server;)V

    :cond_7
    move v0, v7

    goto :goto_1

    .line 497
    :cond_8
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession DISCONNECT due to ConnectMessage timeout"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->c(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    .line 499
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->f(Lcom/snapchat/android/util/chat/SecureChatSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 502
    :catch_0
    move-exception v0

    .line 503
    :try_start_2
    const-string v1, "SecureChatSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHAT-LOG: SecureChatSession DISCONNECT due to exception when attempting to connect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->c(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    .line 506
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->f(Lcom/snapchat/android/util/chat/SecureChatSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v8

    invoke-static {v7, v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ZJ)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-static {v7, v2, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ZJ)V

    throw v0
.end method
