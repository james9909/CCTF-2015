.class public Lcom/snapchat/android/api/UpdateFeatureSettingsTask;
.super Lcom/snapchat/android/api/RequestTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateFeatureSettingsTask"

.field private static final TASK_NAME:Ljava/lang/String; = "UpdateFeatureSettingsTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "/bq/update_feature_settings"

    return-object v0
.end method

.method protected b()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    const-string v1, "username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v1, Lcom/snapchat/android/model/server/FeatureSettings;

    invoke-direct {v1}, Lcom/snapchat/android/model/server/FeatureSettings;-><init>()V

    .line 30
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->L()Z

    move-result v2

    iput-boolean v2, v1, Lcom/snapchat/android/model/server/FeatureSettings;->smart_filters:Z

    .line 31
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->K()Z

    move-result v2

    iput-boolean v2, v1, Lcom/snapchat/android/model/server/FeatureSettings;->replay_snaps:Z

    .line 32
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->M()Z

    move-result v2

    iput-boolean v2, v1, Lcom/snapchat/android/model/server/FeatureSettings;->front_facing_flash:Z

    .line 34
    const-string v2, "settings"

    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-object v0
.end method

.method protected b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 3
    .parameter

    .prologue
    .line 45
    const-string v0, "UpdateFeatureSettingsTask"

    const-string v1, "UpdateFeatureSettingsTask: SUCCESS"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/api/SyncAllTask;->b(Lcom/snapchat/android/model/User;)V

    .line 51
    :cond_0
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "UpdateFeatureSettingsTask"

    return-object v0
.end method
