.class public Lcom/snapchat/android/analytics/RecordingSizeAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mExceptionReporter:Lcom/snapchat/android/util/debug/ExceptionReporter;

.field private final mScreenParameterProvider:Lcom/snapchat/android/api/ScreenParameterProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-direct {v0}, Lcom/snapchat/android/util/debug/ExceptionReporter;-><init>()V

    invoke-static {}, Lcom/snapchat/android/api/ScreenParameterProvider;->a()Lcom/snapchat/android/api/ScreenParameterProvider;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/analytics/RecordingSizeAnalytics;-><init>(Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/api/ScreenParameterProvider;)V

    .line 25
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/api/ScreenParameterProvider;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/snapchat/android/analytics/RecordingSizeAnalytics;->mExceptionReporter:Lcom/snapchat/android/util/debug/ExceptionReporter;

    .line 31
    iput-object p2, p0, Lcom/snapchat/android/analytics/RecordingSizeAnalytics;->mScreenParameterProvider:Lcom/snapchat/android/api/ScreenParameterProvider;

    .line 32
    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/util/Resolution;Lcom/snapchat/android/util/Resolution;)Lcom/snapchat/android/util/Resolution;
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 70
    invoke-virtual {p2}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 71
    invoke-virtual {p1, v0, v1}, Lcom/snapchat/android/util/Resolution;->a(D)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/snapchat/android/util/Resolution;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    sget-boolean v0, Lcom/snapchat/android/util/ApiHelper;->a:Z

    if-nez v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0, p1}, Lcom/snapchat/android/analytics/RecordingSizeAnalytics;->b(Lcom/snapchat/android/util/Resolution;)Ljava/lang/Exception;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/snapchat/android/analytics/RecordingSizeAnalytics;->mExceptionReporter:Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/debug/ExceptionReporter;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected b(Lcom/snapchat/android/util/Resolution;)Ljava/lang/Exception;
    .locals 8
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 48
    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->c()D

    move-result-wide v0

    iget-object v2, p0, Lcom/snapchat/android/analytics/RecordingSizeAnalytics;->mScreenParameterProvider:Lcom/snapchat/android/api/ScreenParameterProvider;

    invoke-virtual {v2}, Lcom/snapchat/android/api/ScreenParameterProvider;->b()Lcom/snapchat/android/util/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/util/Resolution;->c()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 49
    invoke-virtual {p0, p1}, Lcom/snapchat/android/analytics/RecordingSizeAnalytics;->c(Lcom/snapchat/android/util/Resolution;)D

    move-result-wide v2

    .line 51
    cmpl-double v4, v0, v6

    if-lez v4, :cond_0

    .line 52
    new-instance v0, Lcom/snapchat/android/analytics/handledexceptions/MismatchedAspectRatioScreenWiderThanRecording;

    invoke-direct {v0, v2, v3}, Lcom/snapchat/android/analytics/handledexceptions/MismatchedAspectRatioScreenWiderThanRecording;-><init>(D)V

    .line 56
    :goto_0
    return-object v0

    .line 53
    :cond_0
    cmpg-double v0, v0, v6

    if-gez v0, :cond_1

    .line 54
    new-instance v0, Lcom/snapchat/android/analytics/handledexceptions/MismatchedAspectRatioScreenNarrowerThanRecording;

    invoke-direct {v0, v2, v3}, Lcom/snapchat/android/analytics/handledexceptions/MismatchedAspectRatioScreenNarrowerThanRecording;-><init>(D)V

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Lcom/snapchat/android/util/Resolution;)D
    .locals 5
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/analytics/RecordingSizeAnalytics;->mScreenParameterProvider:Lcom/snapchat/android/api/ScreenParameterProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/api/ScreenParameterProvider;->b()Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/snapchat/android/analytics/RecordingSizeAnalytics;->a(Lcom/snapchat/android/util/Resolution;Lcom/snapchat/android/util/Resolution;)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    .line 64
    const-wide/high16 v2, 0x4059

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->d()I

    move-result v1

    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->d()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->d()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int v0, v1, v0

    int-to-double v0, v0

    mul-double/2addr v0, v2

    return-wide v0
.end method
