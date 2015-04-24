.class public Lorg/androidannotations/api/ViewServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/androidannotations/api/ViewServer$1;,
        Lorg/androidannotations/api/ViewServer$ViewServerWorker;,
        Lorg/androidannotations/api/ViewServer$NoopViewServer;,
        Lorg/androidannotations/api/ViewServer$UncloseableOuputStream;,
        Lorg/androidannotations/api/ViewServer$WindowListener;
    }
.end annotation


# instance fields
.field private a:Ljava/net/ServerSocket;

.field private final b:I

.field private c:Ljava/lang/Thread;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/androidannotations/api/ViewServer$WindowListener;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private h:Landroid/view/View;

.field private final i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/ViewServer;->e:Ljava/util/List;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/ViewServer;->f:Ljava/util/HashMap;

    .line 148
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/ViewServer;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 151
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/androidannotations/api/ViewServer;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lorg/androidannotations/api/ViewServer;->b:I

    .line 192
    return-void
.end method

.method synthetic constructor <init>(Lorg/androidannotations/api/ViewServer$1;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/androidannotations/api/ViewServer;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/androidannotations/api/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method private a(Lorg/androidannotations/api/ViewServer$WindowListener;)V
    .locals 1
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_0
    return-void
.end method

.method static synthetic a(Lorg/androidannotations/api/ViewServer;Lorg/androidannotations/api/ViewServer$WindowListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lorg/androidannotations/api/ViewServer;->a(Lorg/androidannotations/api/ViewServer$WindowListener;)V

    return-void
.end method

.method static synthetic a(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-static {p0, p1}, Lorg/androidannotations/api/ViewServer;->b(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lorg/androidannotations/api/ViewServer;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->h:Landroid/view/View;

    return-object v0
.end method

.method private b(Lorg/androidannotations/api/ViewServer$WindowListener;)V
    .locals 1
    .parameter

    .prologue
    .line 464
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 465
    return-void
.end method

.method static synthetic b(Lorg/androidannotations/api/ViewServer;Lorg/androidannotations/api/ViewServer$WindowListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lorg/androidannotations/api/ViewServer;->b(Lorg/androidannotations/api/ViewServer$WindowListener;)V

    return-void
.end method

.method private static b(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 423
    const/4 v0, 0x0

    .line 425
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 426
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x2000

    invoke-direct {v2, v4, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 427
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 428
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 430
    const/4 v0, 0x1

    .line 434
    if-eqz v2, :cond_0

    .line 436
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 442
    :cond_0
    :goto_0
    return v0

    .line 437
    :catch_0
    move-exception v0

    move v0, v1

    .line 439
    goto :goto_0

    .line 431
    :catch_1
    move-exception v2

    .line 434
    :goto_1
    if-eqz v0, :cond_2

    .line 436
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v1

    .line 439
    goto :goto_0

    .line 437
    :catch_2
    move-exception v0

    move v0, v1

    .line 439
    goto :goto_0

    .line 434
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_1

    .line 436
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 439
    :cond_1
    :goto_3
    throw v0

    .line 437
    :catch_3
    move-exception v1

    goto :goto_3

    .line 434
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 431
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lorg/androidannotations/api/ViewServer;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lorg/androidannotations/api/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 397
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lorg/androidannotations/api/ViewServer;->b:I

    const/16 v2, 0xa

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lorg/androidannotations/api/ViewServer;->a:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 402
    :goto_0
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->a:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/androidannotations/api/ViewServer;->c:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    .line 405
    :try_start_1
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer;->a:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lorg/androidannotations/api/ViewServer;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lorg/androidannotations/api/ViewServer;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lorg/androidannotations/api/ViewServer$ViewServerWorker;

    invoke-direct {v2, p0, v0}, Lorg/androidannotations/api/ViewServer$ViewServerWorker;-><init>(Lorg/androidannotations/api/ViewServer;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    const-string v1, "ViewServer"

    const-string v2, "Connection error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 398
    :catch_1
    move-exception v0

    .line 399
    const-string v1, "ViewServer"

    const-string v2, "Starting ServerSocket error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 410
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 411
    :catch_2
    move-exception v0

    .line 412
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 419
    :cond_1
    return-void
.end method
