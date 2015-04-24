.class public Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 23
    const v0, 0x7f0c0006

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    const v0, 0x7f0c0001

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    const/4 v1, -0x1

    new-instance v2, Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog$1;

    invoke-direct {v2, p0, p2}, Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog$1;-><init>(Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 34
    const v0, 0x7f0c003d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    const/4 v1, -0x2

    new-instance v2, Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog$2;-><init>(Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/snapchat/android/api/FriendActionTask;

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    move-object v3, p1

    move-object v4, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/api/FriendActionTask;-><init>(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 45
    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/FriendActionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    return-void
.end method
