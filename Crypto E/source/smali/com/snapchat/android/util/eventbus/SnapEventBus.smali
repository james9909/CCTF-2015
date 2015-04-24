.class public Lcom/snapchat/android/util/eventbus/SnapEventBus;
.super Lcom/squareup/otto/Bus;
.source "SourceFile"


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "SnapEventBus"


# instance fields
.field protected a:Lcom/snapchat/android/util/debug/ExceptionReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/squareup/otto/ThreadEnforcer;->a:Lcom/squareup/otto/ThreadEnforcer;

    invoke-direct {p0, v0}, Lcom/squareup/otto/Bus;-><init>(Lcom/squareup/otto/ThreadEnforcer;)V

    .line 35
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method private a(Landroid/os/Looper;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/SnapEventBus;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snapchat/android/util/eventbus/SnapEventBus;->d:Landroid/os/Handler;

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-super {p0, p1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 57
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 46
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v1, v0, :cond_1

    .line 47
    invoke-super {p0, p1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-direct {p0, v0}, Lcom/snapchat/android/util/eventbus/SnapEventBus;->a(Landroid/os/Looper;)V

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/SnapEventBus;->d:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/util/eventbus/SnapEventBus$1;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/util/eventbus/SnapEventBus$1;-><init>(Lcom/snapchat/android/util/eventbus/SnapEventBus;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 69
    :try_start_0
    invoke-super {p0, p1}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    iget-object v1, p0, Lcom/snapchat/android/util/eventbus/SnapEventBus;->a:Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/debug/ExceptionReporter;->a(Ljava/lang/Throwable;)V

    .line 72
    const-string v1, "SnapEventBus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bus is being unregistered unnecessarily. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
