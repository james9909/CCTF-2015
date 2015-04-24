.class public Lcom/snapchat/android/util/debug/BugReportActivity;
.super Lcom/snapchat/android/SnapchatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
.implements Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$OnFriendSelectedListener;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/snapchat/android/SnapchatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportActivity;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public onBackStackChanged()V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/snapchat/android/util/debug/BugReportActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 40
    if-lez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/snapchat/android/util/debug/BugReportActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 42
    instance-of v1, v0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$OnFriendSelectedListener;

    if-eqz v1, :cond_0

    .line 43
    check-cast v0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$OnFriendSelectedListener;

    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$OnFriendSelectedListener;->a(Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportActivity;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lcom/snapchat/android/util/debug/BugReportActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 22
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onStart()V

    .line 29
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportActivity;->q:Lcom/snapchat/android/util/debug/ShakeReporter;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/ShakeReporter;->b()V

    .line 30
    return-void
.end method
