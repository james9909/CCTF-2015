.class public Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;
    }
.end annotation


# static fields
.field private static a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;


# instance fields
.field private final b:Lcom/snapchat/android/camera/transcoding/TranscodingHistory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/snapchat/android/camera/transcoding/TranscodingHistory;

    invoke-direct {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingHistory;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;-><init>(Lcom/snapchat/android/camera/transcoding/TranscodingHistory;)V

    .line 21
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/camera/transcoding/TranscodingHistory;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b:Lcom/snapchat/android/camera/transcoding/TranscodingHistory;

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 27
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->c:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    .line 29
    :cond_0
    sput-object p0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    .line 30
    return-void
.end method

.method public static a()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    invoke-direct {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;-><init>()V

    sput-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    .line 41
    :cond_0
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b:Lcom/snapchat/android/camera/transcoding/TranscodingHistory;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingHistory;->a()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 120
    const-string v0, "TranscodingPreferencesWrapper"

    const-string v1, "Transcoding has failed too many times disabling for phone"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->f:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    .line 123
    :cond_0
    return-void
.end method

.method private c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 111
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->e:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->f:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    goto :goto_0
.end method

.method private d()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;
    .locals 4

    .prologue
    .line 134
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->aF()Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v1, "TranscodingPreferencesWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTranscodingState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-static {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V
    .locals 3
    .parameter

    .prologue
    .line 127
    const-string v0, "TranscodingPreferencesWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storeTranscodingState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p1}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->r(Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "STORE_TRANSCODING_STATE"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "transcoding_status"

    invoke-virtual {p1}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 131
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->d()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v0

    .line 88
    if-eqz p1, :cond_2

    sget-object v1, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->b:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-ne v0, v1, :cond_2

    .line 89
    :cond_0
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->d:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    if-nez p1, :cond_1

    sget-object v1, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->c:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-eq v0, v1, :cond_1

    .line 91
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->b:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    goto :goto_0
.end method

.method public b()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;
    .locals 4

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->d()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v0

    .line 68
    const-string v1, "TranscodingPreferencesWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShouldUseTranscoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-object v0
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b:Lcom/snapchat/android/camera/transcoding/TranscodingHistory;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/transcoding/TranscodingHistory;->a(Z)V

    .line 101
    invoke-direct {p0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->c()V

    .line 102
    invoke-direct {p0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->d()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->d:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-ne v0, v1, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->c(Z)V

    .line 105
    :cond_0
    return-void
.end method
