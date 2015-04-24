.class public Lcom/snapchat/android/fragments/verification/URLVerificationFragment;
.super Lcom/snapchat/android/fragments/settings/WebFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/verification/URLVerificationFragment$1;,
        Lcom/snapchat/android/fragments/verification/URLVerificationFragment$OnCompleteListener;,
        Lcom/snapchat/android/fragments/verification/URLVerificationFragment$URLVerificationClient;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private d:Lcom/snapchat/android/fragments/verification/URLVerificationFragment$OnCompleteListener;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/WebFragment;-><init>()V

    .line 134
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    const v0, 0x7f0a00f1

    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->k()V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->f:Z

    return p1
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->d:Lcom/snapchat/android/fragments/verification/URLVerificationFragment$OnCompleteListener;

    if-eqz v0, :cond_0

    .line 77
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->f:Z

    if-eqz v0, :cond_1

    .line 78
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->S()V

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->d:Lcom/snapchat/android/fragments/verification/URLVerificationFragment$OnCompleteListener;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$OnCompleteListener;->a()V

    .line 89
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->d:Lcom/snapchat/android/fragments/verification/URLVerificationFragment$OnCompleteListener;

    .line 90
    return-void

    .line 81
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->e:Z

    if-eqz v0, :cond_2

    .line 82
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->T()V

    .line 86
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->d:Lcom/snapchat/android/fragments/verification/URLVerificationFragment$OnCompleteListener;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$OnCompleteListener;->b()V

    goto :goto_0

    .line 84
    :cond_2
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->U()V

    goto :goto_1
.end method

.method private k()V
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->x:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 131
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 132
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/fragments/verification/URLVerificationFragment$OnCompleteListener;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->f:Z

    .line 59
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->e:Z

    .line 60
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->d:Lcom/snapchat/android/fragments/verification/URLVerificationFragment$OnCompleteListener;

    .line 61
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 33
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 34
    const-string v1, "success_url"

    const-string v2, "https://support.snapchat.com/success"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 35
    const-string v1, "failure_url"

    const-string v2, "https://support.snapchat.com/failure"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 36
    const-string v1, "client"

    const-string v2, "chartreuse"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 37
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->a:Ljava/lang/String;

    const-string v2, "CASH-LOG: Setting the URL to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-super {p0, v0}, Lcom/snapchat/android/fragments/settings/WebFragment;->a(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->i()V

    .line 66
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 67
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->i()V

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    const v0, 0x7f04008a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->x:Landroid/view/View;

    .line 45
    invoke-virtual {p0, p3}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->a(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$URLVerificationClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment$URLVerificationClient;-><init>(Lcom/snapchat/android/fragments/verification/URLVerificationFragment;Lcom/snapchat/android/fragments/verification/URLVerificationFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public s_()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/snapchat/android/fragments/settings/WebFragment;->s_()V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->G()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(ZLandroid/view/Window;)V

    .line 55
    return-void
.end method
