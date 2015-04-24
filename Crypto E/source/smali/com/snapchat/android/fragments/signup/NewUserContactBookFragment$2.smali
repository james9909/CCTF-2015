.class Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$2;->a:Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 128
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$2;->a:Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$2;->a:Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->a(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->c(Z)V

    .line 129
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
