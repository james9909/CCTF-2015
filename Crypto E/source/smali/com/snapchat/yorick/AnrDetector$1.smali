.class Lcom/snapchat/yorick/AnrDetector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/yorick/AnrDetector;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/snapchat/yorick/AnrDetector;


# direct methods
.method constructor <init>(Lcom/snapchat/yorick/AnrDetector;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/snapchat/yorick/AnrDetector$1;->b:Lcom/snapchat/yorick/AnrDetector;

    iput-object p2, p0, Lcom/snapchat/yorick/AnrDetector$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/yorick/AnrDetector$1;->b:Lcom/snapchat/yorick/AnrDetector;

    iget-object v1, p0, Lcom/snapchat/yorick/AnrDetector$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/snapchat/yorick/AnrDetector;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    iget-object v1, p0, Lcom/snapchat/yorick/AnrDetector$1;->b:Lcom/snapchat/yorick/AnrDetector;

    invoke-static {v1}, Lcom/snapchat/yorick/AnrDetector;->a(Lcom/snapchat/yorick/AnrDetector;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/yorick/AnrDetector$1;->b:Lcom/snapchat/yorick/AnrDetector;

    invoke-static {v1}, Lcom/snapchat/yorick/AnrDetector;->a(Lcom/snapchat/yorick/AnrDetector;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
