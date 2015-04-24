.class public Lcom/snapchat/android/util/fps/FpsLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/FrameTracking;


# instance fields
.field protected a:I

.field private final b:Lcom/snapchat/android/util/debug/ReleaseManager;

.field private final c:Lcom/snapchat/android/util/system/Clock;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v1}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/util/fps/FpsLogger;-><init>(Lcom/snapchat/android/util/debug/ReleaseManager;Lcom/snapchat/android/util/system/Clock;)V

    .line 22
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/util/debug/ReleaseManager;Lcom/snapchat/android/util/system/Clock;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/util/fps/FpsLogger;->a:I

    .line 25
    iput-object p1, p0, Lcom/snapchat/android/util/fps/FpsLogger;->b:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 26
    iput-object p2, p0, Lcom/snapchat/android/util/fps/FpsLogger;->c:Lcom/snapchat/android/util/system/Clock;

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 31
    iget-object v0, p0, Lcom/snapchat/android/util/fps/FpsLogger;->b:Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/ReleaseManager;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget v0, p0, Lcom/snapchat/android/util/fps/FpsLogger;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/util/fps/FpsLogger;->a:I

    .line 37
    iget v0, p0, Lcom/snapchat/android/util/fps/FpsLogger;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/snapchat/android/util/fps/FpsLogger;->c:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v0

    .line 39
    iget v2, p0, Lcom/snapchat/android/util/fps/FpsLogger;->a:I

    int-to-float v2, v2

    const/high16 v3, 0x447a

    mul-float/2addr v2, v3

    iget-wide v4, p0, Lcom/snapchat/android/util/fps/FpsLogger;->d:J

    sub-long v4, v0, v4

    long-to-float v3, v4

    div-float/2addr v2, v3

    .line 40
    const-string v3, "FpsLogger"

    const-string v4, "FPS = %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iput-wide v0, p0, Lcom/snapchat/android/util/fps/FpsLogger;->d:J

    .line 42
    iput v6, p0, Lcom/snapchat/android/util/fps/FpsLogger;->a:I

    goto :goto_0
.end method
