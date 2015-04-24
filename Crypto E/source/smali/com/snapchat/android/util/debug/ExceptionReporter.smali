.class public Lcom/snapchat/android/util/debug/ExceptionReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/util/debug/ReleaseManager;

.field private final b:Lcom/snapchat/android/util/debug/CrashSampler;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/util/debug/CrashSampler;->a()Lcom/snapchat/android/util/debug/CrashSampler;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/util/debug/ExceptionReporter;-><init>(Lcom/snapchat/android/util/debug/ReleaseManager;Lcom/snapchat/android/util/debug/CrashSampler;)V

    .line 21
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/util/debug/ReleaseManager;Lcom/snapchat/android/util/debug/CrashSampler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/snapchat/android/util/debug/ExceptionReporter;->a:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 26
    iput-object p2, p0, Lcom/snapchat/android/util/debug/ExceptionReporter;->b:Lcom/snapchat/android/util/debug/CrashSampler;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/util/debug/ExceptionReporter;->b:Lcom/snapchat/android/util/debug/CrashSampler;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/CrashSampler;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/debug/ExceptionReporter;->d(Ljava/lang/Throwable;)V

    .line 31
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/util/debug/ExceptionReporter;->a:Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/ReleaseManager;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/debug/ExceptionReporter;->b:Lcom/snapchat/android/util/debug/CrashSampler;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/CrashSampler;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/debug/ExceptionReporter;->c(Ljava/lang/Throwable;)V

    .line 36
    :cond_1
    return-void
.end method

.method protected c(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    new-instance v0, Lcom/snapchat/android/util/debug/SnapchatCrashManager;

    invoke-direct {v0}, Lcom/snapchat/android/util/debug/SnapchatCrashManager;-><init>()V

    invoke-static {p1, v0}, Lnet/hockeyapp/android/ExceptionHandler;->a(Ljava/lang/Throwable;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 40
    invoke-static {p1}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method

.method protected d(Ljava/lang/Throwable;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-static {p1}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method
