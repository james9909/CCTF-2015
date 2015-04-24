.class public Lcom/snapchat/android/fragments/addfriends/MyFriendsSearchViewFragment;
.super Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsSearchViewFragment;->E()V

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsSearchViewFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsSearchViewFragment;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 19
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsSearchViewFragment;->D()V

    .line 20
    return-object v0
.end method
