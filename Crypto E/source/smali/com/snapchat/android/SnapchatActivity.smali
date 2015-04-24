.class public abstract Lcom/snapchat/android/SnapchatActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/SnapchatActivity$DevAnrReporter;
    }
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private b:Lcom/snapchat/android/util/debug/SnapchatCrashManager;

.field private c:Ldagger/ObjectGraph;

.field private d:Z

.field protected p:Lcom/snapchat/android/model/User;

.field public q:Lcom/snapchat/android/util/debug/ShakeReporter;

.field protected r:Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected s:Lcom/snapchat/android/util/debug/CrashSampler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected t:Lcom/snapchat/android/util/debug/GracefulExceptionHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected u:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 59
    new-instance v0, Lcom/snapchat/android/util/debug/SnapchatCrashManager;

    invoke-direct {v0}, Lcom/snapchat/android/util/debug/SnapchatCrashManager;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->b:Lcom/snapchat/android/util/debug/SnapchatCrashManager;

    .line 62
    iput-boolean v1, p0, Lcom/snapchat/android/SnapchatActivity;->d:Z

    .line 64
    new-instance v0, Lcom/snapchat/android/util/debug/ShakeReporter;

    invoke-direct {v0}, Lcom/snapchat/android/util/debug/ShakeReporter;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->q:Lcom/snapchat/android/util/debug/ShakeReporter;

    .line 78
    iput-boolean v1, p0, Lcom/snapchat/android/SnapchatActivity;->u:Z

    .line 136
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->c:Ldagger/ObjectGraph;

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/SnapchatApplication;

    .line 132
    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Ldagger/ObjectGraph;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->c:Ldagger/ObjectGraph;

    .line 134
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    .line 313
    if-eqz p1, :cond_0

    .line 314
    const-string v0, "FROM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 316
    const-string v2, "SnapchatActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logTransition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    return-void
.end method

.method private static b()Z
    .locals 1

    .prologue
    .line 269
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static x()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/snapchat/android/SnapchatActivity;->a:Z

    return v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/User;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 295
    const-string v0, "SnapchatActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserLoaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    iget-boolean v0, p0, Lcom/snapchat/android/SnapchatActivity;->d:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->r:Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;->a(Landroid/app/Activity;)V

    .line 300
    iput-boolean v3, p0, Lcom/snapchat/android/SnapchatActivity;->d:Z

    .line 302
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UserLoadedEvent;

    invoke-direct {v1, p1}, Lcom/snapchat/android/util/eventbus/UserLoadedEvent;-><init>(Lcom/snapchat/android/model/User;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 303
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/snapchat/android/SnapchatActivity;->a()V

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->c:Ldagger/ObjectGraph;

    invoke-virtual {v0, p1}, Ldagger/ObjectGraph;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 254
    const v0, 0xa957

    if-ne v0, p1, :cond_0

    .line 255
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->q:Lcom/snapchat/android/util/debug/ShakeReporter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/debug/ShakeReporter;->a(Z)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->q:Lcom/snapchat/android/util/debug/ShakeReporter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/debug/ShakeReporter;->a(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0, p0}, Lcom/snapchat/android/SnapchatActivity;->a(Ljava/lang/Object;)V

    .line 91
    if-eqz p1, :cond_0

    .line 93
    const-string v0, "waiting_for_activity_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/SnapchatActivity;->u:Z

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->b:Lcom/snapchat/android/util/debug/SnapchatCrashManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/SnapchatCrashManager;->a()V

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->s:Lcom/snapchat/android/util/debug/CrashSampler;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/CrashSampler;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Lcom/crittercism/app/CrittercismConfig;

    invoke-direct {v0}, Lcom/crittercism/app/CrittercismConfig;-><init>()V

    .line 100
    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "53b243b017878408e2000002"

    invoke-static {v0, v1}, Lcom/crittercism/app/Crittercism;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lcom/snapchat/android/SnapchatActivity;->a:Z

    .line 102
    const-string v0, "initialize crittercism."

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V

    .line 104
    const-string v0, "c06b8797877eb662616000c11de0d338"

    invoke-static {p0, v0}, Lnet/hockeyapp/android/NativeCrashManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 108
    :cond_1
    invoke-static {}, Lcom/snapchat/android/SnapchatActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.snapchat.android"

    const-string v1, "flavortest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    :try_start_0
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapchatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 113
    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatActivity;->u()V

    .line 120
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->c:Ldagger/ObjectGraph;

    .line 247
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 248
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 309
    invoke-direct {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->a(Landroid/content/Intent;)V

    .line 310
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 219
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->s:Lcom/snapchat/android/util/debug/CrashSampler;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/CrashSampler;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-static {p0}, Lnet/hockeyapp/android/Tracking;->b(Landroid/app/Activity;)V

    .line 222
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->b:Lcom/snapchat/android/util/debug/SnapchatCrashManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/SnapchatCrashManager;->b()V

    .line 204
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->s:Lcom/snapchat/android/util/debug/CrashSampler;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/CrashSampler;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "c06b8797877eb662616000c11de0d338"

    iget-object v1, p0, Lcom/snapchat/android/SnapchatActivity;->b:Lcom/snapchat/android/util/debug/SnapchatCrashManager;

    invoke-static {p0, v0, v1}, Lnet/hockeyapp/android/CrashManager;->a(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 206
    invoke-static {p0}, Lnet/hockeyapp/android/Tracking;->a(Landroid/app/Activity;)V

    .line 210
    :cond_0
    invoke-static {}, Lcom/snapchat/android/SnapchatActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    const-string v0, "c06b8797877eb662616000c11de0d338"

    invoke-static {p0, v0}, Lnet/hockeyapp/android/UpdateManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 213
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 239
    const-string v0, "waiting_for_activity_result"

    iget-boolean v1, p0, Lcom/snapchat/android/SnapchatActivity;->u:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 155
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 157
    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/SnapchatActivity;->a(Landroid/content/Intent;)V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/SnapchatActivity;->u:Z

    .line 162
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->p:Lcom/snapchat/android/model/User;

    if-nez v0, :cond_4

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/SnapchatActivity;->d:Z

    .line 168
    :goto_0
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->q:Lcom/snapchat/android/util/debug/ShakeReporter;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/util/debug/ShakeReporter;->a(Landroid/app/Activity;)V

    .line 170
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->q:Lcom/snapchat/android/util/debug/ShakeReporter;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/ShakeReporter;->a()V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->s:Lcom/snapchat/android/util/debug/CrashSampler;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/CrashSampler;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    new-instance v0, Lcom/snapchat/yorick/HockeyAppReporter;

    const-string v1, "c06b8797877eb662616000c11de0d338"

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->g()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/snapchat/yorick/HockeyAppReporter;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 177
    new-instance v1, Lcom/snapchat/yorick/AnrDetector;

    invoke-direct {v1}, Lcom/snapchat/yorick/AnrDetector;-><init>()V

    .line 178
    invoke-virtual {v1, v0}, Lcom/snapchat/yorick/AnrDetector;->a(Lcom/snapchat/yorick/AnrListener;)V

    .line 179
    sget-boolean v0, Lcom/snapchat/android/SnapchatActivity;->a:Z

    if-eqz v0, :cond_1

    .line 180
    new-instance v0, Lcom/snapchat/yorick/CrittercismReporter;

    invoke-direct {v0}, Lcom/snapchat/yorick/CrittercismReporter;-><init>()V

    invoke-virtual {v1, v0}, Lcom/snapchat/yorick/AnrDetector;->a(Lcom/snapchat/yorick/AnrListener;)V

    .line 182
    :cond_1
    new-instance v0, Lcom/snapchat/android/SnapchatActivity$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/SnapchatActivity$1;-><init>(Lcom/snapchat/android/SnapchatActivity;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/yorick/AnrDetector;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 189
    invoke-virtual {v1, p0}, Lcom/snapchat/yorick/AnrDetector;->a(Landroid/content/Context;)V

    .line 192
    :cond_2
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    new-instance v0, Lcom/snapchat/yorick/AnrDetector;

    invoke-direct {v0}, Lcom/snapchat/yorick/AnrDetector;-><init>()V

    .line 194
    new-instance v1, Lcom/snapchat/android/SnapchatActivity$DevAnrReporter;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapchatActivity$DevAnrReporter;-><init>(Lcom/snapchat/android/SnapchatActivity;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/yorick/AnrDetector;->a(Lcom/snapchat/yorick/AnrListener;)V

    .line 195
    invoke-virtual {v0, p0}, Lcom/snapchat/yorick/AnrDetector;->a(Landroid/content/Context;)V

    .line 197
    :cond_3
    return-void

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->r:Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 227
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->r:Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;->b(Landroid/app/Activity;)V

    .line 229
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->q:Lcom/snapchat/android/util/debug/ShakeReporter;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/ShakeReporter;->b()V

    .line 231
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity;->q:Lcom/snapchat/android/util/debug/ShakeReporter;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/ShakeReporter;->c()V

    .line 233
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 323
    const-string v0, "FROM"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 326
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/SnapchatActivity;->u:Z

    .line 333
    return-void
.end method

.method protected u()V
    .locals 4

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 274
    const/16 v1, 0x320

    const/4 v2, 0x0

    new-instance v3, Lcom/snapchat/android/SnapchatActivity$2;

    invoke-direct {v3, p0}, Lcom/snapchat/android/SnapchatActivity$2;-><init>(Lcom/snapchat/android/SnapchatActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 292
    return-void
.end method
