.class public Lcom/snapchat/android/util/debug/CrashSampler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/snapchat/android/util/debug/CrashSampler;


# instance fields
.field private b:Z

.field private c:Z

.field private final d:Lcom/snapchat/android/util/debug/ReleaseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/snapchat/android/util/debug/CrashSampler;

    invoke-direct {v0}, Lcom/snapchat/android/util/debug/CrashSampler;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/debug/CrashSampler;->a:Lcom/snapchat/android/util/debug/CrashSampler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/debug/CrashSampler;-><init>(Lcom/snapchat/android/util/debug/ReleaseManager;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/util/debug/ReleaseManager;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/snapchat/android/util/debug/CrashSampler;->d:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 37
    return-void
.end method

.method public static a()Lcom/snapchat/android/util/debug/CrashSampler;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/snapchat/android/util/debug/CrashSampler;->a:Lcom/snapchat/android/util/debug/CrashSampler;

    return-object v0
.end method

.method protected static a(DLjava/lang/String;)Z
    .locals 4
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 77
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 78
    int-to-double v0, v0

    const-wide v2, 0x41dfffffffc00000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 79
    cmpg-double v0, v0, p0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(D)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->aP()Ljava/util/UUID;

    move-result-object v0

    .line 69
    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/snapchat/android/util/debug/CrashSampler;->a(DLjava/lang/String;)Z

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/snapchat/android/util/debug/CrashSampler;->a(DLjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized b()Z
    .locals 1

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/snapchat/android/util/debug/CrashSampler;->c:Z

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/snapchat/android/util/debug/CrashSampler;->c()V

    .line 43
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/util/debug/CrashSampler;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/util/debug/CrashSampler;->d:Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/ReleaseManager;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/debug/CrashSampler;->b:Z

    .line 60
    :goto_0
    iput-boolean v2, p0, Lcom/snapchat/android/util/debug/CrashSampler;->c:Z

    .line 61
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/debug/CrashSampler;->d:Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iput-boolean v2, p0, Lcom/snapchat/android/util/debug/CrashSampler;->b:Z

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/debug/CrashSampler;->d:Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/ReleaseManager;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    const-wide/high16 v0, 0x3fe0

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/util/debug/CrashSampler;->a(D)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/util/debug/CrashSampler;->b:Z

    goto :goto_0

    .line 58
    :cond_2
    const-wide v0, 0x3f847ae140000000L

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/util/debug/CrashSampler;->a(D)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/util/debug/CrashSampler;->b:Z

    goto :goto_0
.end method
