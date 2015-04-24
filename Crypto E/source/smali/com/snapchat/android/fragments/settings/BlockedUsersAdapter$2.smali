.class Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$2;
.super Lcom/snapchat/android/api/FriendActionTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->a(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;Lcom/snapchat/android/model/Friend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;

.field final synthetic b:Lcom/snapchat/android/model/Friend;

.field final synthetic c:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;Lcom/snapchat/android/model/Friend;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$2;->c:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;

    iput-object p4, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$2;->a:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;

    iput-object p5, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/api/FriendActionTask;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 1
    .parameter
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/snapchat/android/api/FriendActionTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$2;->a:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;->u()V

    .line 102
    return-void
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 116
    const v0, 0x7f0c00f1

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$2;->c:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->a(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 117
    return-void
.end method

.method protected b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/snapchat/android/api/FriendActionTask;->b(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$2;->c:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->c(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$2;->c:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->d(I)V

    .line 110
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->ak()V

    .line 111
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    check-cast p1, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$2;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    return-void
.end method
