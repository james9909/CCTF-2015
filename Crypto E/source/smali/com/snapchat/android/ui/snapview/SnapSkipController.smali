.class public Lcom/snapchat/android/ui/snapview/SnapSkipController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/util/system/Clock;

.field private final b:Landroid/content/SharedPreferences;

.field private c:J

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v0}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/ui/snapview/SnapSkipController;-><init>(Lcom/snapchat/android/util/system/Clock;Landroid/content/SharedPreferences;)V

    .line 29
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/util/system/Clock;Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/ui/snapview/SnapSkipController;->c:J

    .line 24
    iput v2, p0, Lcom/snapchat/android/ui/snapview/SnapSkipController;->d:I

    .line 25
    iput-boolean v2, p0, Lcom/snapchat/android/ui/snapview/SnapSkipController;->e:Z

    .line 33
    iput-object p1, p0, Lcom/snapchat/android/ui/snapview/SnapSkipController;->a:Lcom/snapchat/android/util/system/Clock;

    .line 34
    iput-object p2, p0, Lcom/snapchat/android/ui/snapview/SnapSkipController;->b:Landroid/content/SharedPreferences;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapSkipController;->a:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/snapview/SnapSkipController;->c:J

    .line 43
    iput-boolean p1, p0, Lcom/snapchat/android/ui/snapview/SnapSkipController;->e:Z

    .line 44
    iget v0, p0, Lcom/snapchat/android/ui/snapview/SnapSkipController;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/ui/snapview/SnapSkipController;->d:I

    .line 45
    return-void
.end method

.method public a()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 55
    iget v1, p0, Lcom/snapchat/android/ui/snapview/SnapSkipController;->d:I

    if-le v1, v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    iget-boolean v1, p0, Lcom/snapchat/android/ui/snapview/SnapSkipController;->e:Z

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/snapchat/android/ui/snapview/SnapSkipController;->a:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v1}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/ui/snapview/SnapSkipController;->c:J

    const-wide/16 v6, 0xc8

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/snapview/SnapSkipController;->d:I

    .line 92
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/ui/snapview/SnapSkipController;->c:J

    .line 93
    return-void
.end method
