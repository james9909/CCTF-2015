.class Lcom/snapchat/android/fragments/addfriends/AddedMeFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 121
    return-void
.end method
