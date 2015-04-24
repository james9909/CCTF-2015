.class public Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;
.super Lcom/snapchat/android/fragments/settings/WebFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$1;,
        Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$TransactionHistoryClient;
    }
.end annotation


# instance fields
.field protected a:Lcom/snapchat/android/cash/CashAuthManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/WebFragment;-><init>()V

    .line 27
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/fragments/settings/WebFragment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->h()V

    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 54
    const v0, 0x7f0a00f1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->d(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 37
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 38
    const-string v1, "client"

    const-string v2, "chartreuse"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 39
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-super {p0, v0}, Lcom/snapchat/android/fragments/settings/WebFragment;->a(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 45
    const v0, 0x7f04008a

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->x:Landroid/view/View;

    .line 46
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->G()Landroid/view/Window;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snapchat/android/util/ViewUtils;->a(ZLandroid/view/Window;)V

    .line 47
    invoke-virtual {p0, p3}, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->a(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$TransactionHistoryClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$TransactionHistoryClient;-><init>(Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->x:Landroid/view/View;

    return-object v0
.end method
