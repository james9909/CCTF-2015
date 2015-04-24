.class public Lcom/snapchat/android/util/debug/DeveloperSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/snapchat/android/util/debug/DeveloperSettings;


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/snapchat/android/util/debug/DeveloperSettings;

    invoke-direct {v0}, Lcom/snapchat/android/util/debug/DeveloperSettings;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/debug/DeveloperSettings;->b:Lcom/snapchat/android/util/debug/DeveloperSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/snapchat/android/util/debug/DeveloperSettings;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/snapchat/android/util/debug/DeveloperSettings;->b:Lcom/snapchat/android/util/debug/DeveloperSettings;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/snapchat/android/util/debug/DeveloperSettings;->a:Landroid/content/SharedPreferences;

    .line 25
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/util/debug/DeveloperSettings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/debug/DeveloperSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 43
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->aq:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/snapchat/android/util/debug/DeveloperSettings;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/debug/DeveloperSettings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->at:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 29
    iget-object v1, p0, Lcom/snapchat/android/util/debug/DeveloperSettings;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/util/debug/DeveloperSettings;->a:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->aq:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 49
    iget-object v1, p0, Lcom/snapchat/android/util/debug/DeveloperSettings;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 53
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/util/debug/DeveloperSettings;->a:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->at:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
