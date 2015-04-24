.class public Lcom/snapchat/android/util/debug/ShakeReporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/debug/ShakeReporter$BugReporter;
    }
.end annotation


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Landroid/app/Activity;

.field private c:Z

.field private d:[F

.field private e:[F

.field private f:[F

.field private g:I

.field private h:Z

.field private i:I

.field private j:Lcom/snapchat/android/util/debug/ShakeReporter$BugReporter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->d:[F

    .line 29
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->e:[F

    .line 30
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->f:[F

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->h:Z

    .line 37
    return-void
.end method

.method static a([FFF)F
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 134
    array-length v4, p0

    move v3, v2

    move v1, p1

    :goto_0
    if-ge v3, v4, :cond_0

    aget v0, p0, v3

    .line 135
    cmpg-float v5, v0, v1

    if-gez v5, :cond_3

    .line 134
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 138
    :cond_0
    array-length v4, p0

    move v3, v2

    move v2, p2

    :goto_2
    if-ge v3, v4, :cond_1

    aget v0, p0, v3

    .line 139
    cmpl-float v5, v0, v2

    if-lez v5, :cond_2

    .line 138
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_2

    .line 142
    :cond_1
    sub-float v0, v2, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private a([F)V
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/debug/ShakeReporter;->b([F)V

    .line 82
    invoke-direct {p0}, Lcom/snapchat/android/util/debug/ShakeReporter;->g()Z

    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/snapchat/android/util/debug/ShakeReporter;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->c:Z

    .line 86
    invoke-virtual {p0}, Lcom/snapchat/android/util/debug/ShakeReporter;->d()V

    .line 89
    :cond_0
    return-void
.end method

.method private b([F)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->d:[F

    iget v1, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->g:I

    aget v2, p1, v3

    aput v2, v0, v1

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->e:[F

    iget v1, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->g:I

    aget v2, p1, v4

    aput v2, v0, v1

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->f:[F

    iget v1, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->g:I

    const/4 v2, 0x2

    aget v2, p1, v2

    aput v2, v0, v1

    .line 96
    iget v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->g:I

    .line 98
    iget v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->g:I

    iget-object v1, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->d:[F

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 99
    iput-boolean v4, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->h:Z

    .line 100
    iput v3, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->g:I

    .line 102
    :cond_0
    return-void
.end method

.method private g()Z
    .locals 7

    .prologue
    const/high16 v6, 0x4190

    const/4 v0, 0x0

    .line 105
    iget-boolean v1, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->h:Z

    if-nez v1, :cond_0

    .line 124
    :goto_0
    return v0

    .line 107
    :cond_0
    const v1, 0x7f7fffff

    const/4 v2, 0x1

    .line 109
    iget-object v3, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->d:[F

    invoke-static {v3, v1, v2}, Lcom/snapchat/android/util/debug/ShakeReporter;->a([FFF)F

    move-result v3

    .line 110
    iget-object v4, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->e:[F

    invoke-static {v4, v1, v2}, Lcom/snapchat/android/util/debug/ShakeReporter;->a([FFF)F

    move-result v4

    .line 111
    iget-object v5, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->f:[F

    invoke-static {v5, v1, v2}, Lcom/snapchat/android/util/debug/ShakeReporter;->a([FFF)F

    move-result v1

    .line 113
    cmpl-float v2, v3, v6

    if-gtz v2, :cond_1

    cmpl-float v2, v4, v6

    if-gtz v2, :cond_1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_3

    .line 114
    :cond_1
    iget v1, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->i:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 115
    iput v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->i:I

    .line 116
    const/4 v0, 0x1

    goto :goto_0

    .line 118
    :cond_2
    iget v1, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->i:I

    .line 119
    invoke-virtual {p0}, Lcom/snapchat/android/util/debug/ShakeReporter;->e()V

    goto :goto_0

    .line 121
    :cond_3
    iput v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->i:I

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/snapchat/android/util/debug/ShakeReporter;->e()V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->c:Z

    .line 130
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 48
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->b:Landroid/app/Activity;

    .line 41
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->a:Landroid/hardware/SensorManager;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->c:Z

    .line 43
    new-instance v0, Lcom/snapchat/android/util/debug/BugReportGenerator;

    invoke-direct {v0}, Lcom/snapchat/android/util/debug/BugReportGenerator;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->j:Lcom/snapchat/android/util/debug/ShakeReporter$BugReporter;

    .line 44
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/snapchat/android/util/debug/ShakeReporter;->h()V

    .line 61
    return-void
.end method

.method a(Landroid/hardware/SensorEvent;)[F
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 52
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->b:Landroid/app/Activity;

    .line 56
    iput-object v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->j:Lcom/snapchat/android/util/debug/ShakeReporter$BugReporter;

    .line 57
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->j:Lcom/snapchat/android/util/debug/ShakeReporter$BugReporter;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->j:Lcom/snapchat/android/util/debug/ShakeReporter$BugReporter;

    iget-object v1, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->b:Landroid/app/Activity;

    invoke-interface {v0, v1, p0}, Lcom/snapchat/android/util/debug/ShakeReporter$BugReporter;->a(Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;)V

    .line 78
    :cond_0
    return-void
.end method

.method e()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->h:Z

    .line 148
    iput v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->g:I

    .line 149
    return-void
.end method

.method f()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/snapchat/android/util/debug/ShakeReporter;->c:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/debug/ShakeReporter;->a(Landroid/hardware/SensorEvent;)[F

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/debug/ShakeReporter;->a([F)V

    .line 66
    return-void
.end method
