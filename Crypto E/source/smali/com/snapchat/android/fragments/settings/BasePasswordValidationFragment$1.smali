.class Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$1;->a:Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$1;->a:Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$1;->a:Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$1;->a:Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 68
    return-void
.end method
