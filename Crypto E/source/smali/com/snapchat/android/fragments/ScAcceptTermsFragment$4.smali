.class Lcom/snapchat/android/fragments/ScAcceptTermsFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->b()V
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
    .line 140
    iput-object p1, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$4;->a:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 143
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->H()V

    .line 144
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$4;->a:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 145
    return-void
.end method
