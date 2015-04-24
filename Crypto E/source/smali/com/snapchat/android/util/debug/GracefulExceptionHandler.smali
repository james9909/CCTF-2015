.class public Lcom/snapchat/android/util/debug/GracefulExceptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/util/debug/CrashSampler;

.field private final b:Lcom/snapchat/android/util/debug/ReleaseManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/CrashSampler;Lcom/snapchat/android/util/debug/ReleaseManager;)V
    .locals 0
    .parameter
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/snapchat/android/util/debug/GracefulExceptionHandler;->a:Lcom/snapchat/android/util/debug/CrashSampler;

    .line 22
    iput-object p2, p0, Lcom/snapchat/android/util/debug/GracefulExceptionHandler;->b:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/snapchat/android/util/debug/GracefulExceptionHandler;->b:Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/ReleaseManager;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/debug/GracefulExceptionHandler;->a:Lcom/snapchat/android/util/debug/CrashSampler;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/CrashSampler;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/debug/GracefulExceptionHandler;->b(Ljava/lang/Throwable;)V

    .line 32
    :cond_2
    return-void
.end method

.method protected b(Ljava/lang/Throwable;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 36
    new-instance v0, Lcom/snapchat/android/util/debug/SnapchatCrashManager;

    invoke-direct {v0}, Lcom/snapchat/android/util/debug/SnapchatCrashManager;-><init>()V

    invoke-static {p1, v0}, Lnet/hockeyapp/android/ExceptionHandler;->a(Ljava/lang/Throwable;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 37
    invoke-static {p1}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method
