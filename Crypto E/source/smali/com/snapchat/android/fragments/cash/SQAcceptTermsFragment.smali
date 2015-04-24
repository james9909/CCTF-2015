.class public Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$AcceptTermsListener;
    }
.end annotation


# instance fields
.field private a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$AcceptTermsListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;)Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$AcceptTermsListener;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$AcceptTermsListener;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$AcceptTermsListener;)Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$AcceptTermsListener;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$AcceptTermsListener;

    return-object p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 36
    const v0, 0x7f0a02ea

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$1;-><init>(Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v0, 0x7f0a02ee

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 48
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->I()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FontUtils;->a(Landroid/view/View;Landroid/content/res/AssetManager;)V

    .line 49
    new-instance v1, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$2;-><init>(Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$AcceptTermsListener;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$AcceptTermsListener;

    .line 24
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->M()V

    .line 66
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$AcceptTermsListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$AcceptTermsListener;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$AcceptTermsListener;->b()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->a:Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$AcceptTermsListener;

    .line 70
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    const v0, 0x7f040089

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->x:Landroid/view/View;

    .line 29
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->b()V

    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public s_()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->s_()V

    .line 76
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->x:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 77
    return-void
.end method
