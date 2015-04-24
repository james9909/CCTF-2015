.class public Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;


# instance fields
.field private volatile a:Z

.field private final c:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;

    invoke-direct {v0}, Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;->b:Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;-><init>(Landroid/content/SharedPreferences;)V

    .line 31
    return-void
.end method

.method protected constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;->c:Landroid/content/SharedPreferences;

    .line 37
    invoke-virtual {p0}, Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;->b()V

    .line 38
    return-void
.end method

.method public static a()Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;->b:Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;

    return-object v0
.end method


# virtual methods
.method protected b()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;->c:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->bd:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;->a:Z

    .line 47
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;->a:Z

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;->a:Z

    .line 61
    invoke-virtual {p0}, Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;->e()V

    .line 62
    return-void
.end method

.method protected e()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->bd:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;->a:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    return-void
.end method
