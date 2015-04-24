.class public Lcom/snapchat/android/api/SetNumBestFriendsTask;
.super Lcom/snapchat/android/api/RequestTask;
.source "SourceFile"


# static fields
.field private static final TASK_NAME:Ljava/lang/String; = "SetNumBestFriendsTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "/bq/set_num_best_friends"

    return-object v0
.end method

.method protected b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    const-string v1, "username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v1, "num_best_friends"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->O()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "SetNumBestFriendsTask"

    return-object v0
.end method
