.class public Lnet/hockeyapp/android/utils/PrefsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/utils/PrefsUtil$1;,
        Lnet/hockeyapp/android/utils/PrefsUtil$PrefsUtilHolder;
    }
.end annotation


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/SharedPreferences$Editor;

.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/content/SharedPreferences$Editor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lnet/hockeyapp/android/utils/PrefsUtil$1;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Lnet/hockeyapp/android/utils/PrefsUtil;-><init>()V

    return-void
.end method

.method public static a()Lnet/hockeyapp/android/utils/PrefsUtil;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lnet/hockeyapp/android/utils/PrefsUtil$PrefsUtilHolder;->a:Lnet/hockeyapp/android/utils/PrefsUtil;

    return-object v0
.end method

.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static b()Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 122
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 125
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 122
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 56
    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    const-string v1, "net.hockeyapp.android.prefs_feedback_token"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->a:Landroid/content/SharedPreferences;

    .line 61
    iget-object v1, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->a:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->a:Landroid/content/SharedPreferences;

    const-string v2, "net.hockeyapp.android.prefs_key_feedback_token"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    const-string v0, "net.hockeyapp.android.prefs_feedback_token"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->a:Landroid/content/SharedPreferences;

    .line 44
    iget-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->b:Landroid/content/SharedPreferences$Editor;

    .line 46
    iget-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "net.hockeyapp.android.prefs_key_feedback_token"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    iget-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->b:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/PrefsUtil;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 50
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 72
    if-eqz p1, :cond_1

    .line 73
    const-string v0, "net.hockeyapp.android.prefs_name_email"

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->c:Landroid/content/SharedPreferences;

    .line 74
    iget-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->d:Landroid/content/SharedPreferences$Editor;

    .line 76
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 77
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "net.hockeyapp.android.prefs_key_name_email"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    :goto_0
    iget-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->d:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/PrefsUtil;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 86
    :cond_1
    return-void

    .line 79
    :cond_2
    iget-object v0, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->d:Landroid/content/SharedPreferences$Editor;

    const-string v1, "net.hockeyapp.android.prefs_key_name_email"

    const-string v2, "%s|%s|%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 92
    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    const-string v1, "net.hockeyapp.android.prefs_name_email"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->c:Landroid/content/SharedPreferences;

    .line 97
    iget-object v1, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->c:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lnet/hockeyapp/android/utils/PrefsUtil;->c:Landroid/content/SharedPreferences;

    const-string v2, "net.hockeyapp.android.prefs_key_name_email"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
