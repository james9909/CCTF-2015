.class public Lcom/snapchat/yorick/CrittercismReporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/yorick/AnrListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/yorick/ParsedTrace;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 16
    new-instance v0, Lcom/snapchat/yorick/CrittercismReporter$1;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/yorick/CrittercismReporter$1;-><init>(Lcom/snapchat/yorick/CrittercismReporter;Lcom/snapchat/yorick/ParsedTrace;)V

    .line 27
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    return-void
.end method
