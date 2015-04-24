.class Lcom/snapchat/android/fragments/ScAcceptTermsFragment$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$13;->a:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 417
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$13;->a:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->f(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->d()I

    .line 422
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->m()V

    .line 424
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$13;->a:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 427
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 428
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 429
    return-void
.end method
