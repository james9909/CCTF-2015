.class Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$TransactionHistoryClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransactionHistoryClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$TransactionHistoryClient;->a:Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$TransactionHistoryClient;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$TransactionHistoryClient;-><init>(Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$TransactionHistoryClient;->a:Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->a:Lcom/snapchat/android/cash/CashAuthManager;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$TransactionHistoryClient;->a:Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->a:Lcom/snapchat/android/cash/CashAuthManager;

    invoke-virtual {v0}, Lcom/snapchat/android/cash/CashAuthManager;->a()Lcom/snapchat/android/cash/CashAuthToken;

    move-result-object v0

    .line 77
    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "We shouldn\'t ever be creating a SquareRequestTask with a null CashAuthToken!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:var authorizationToken=\'Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/cash/CashAuthToken;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\';"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$TransactionHistoryClient;->b:Z

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$TransactionHistoryClient;->a:Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->a(Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;)V

    .line 84
    :cond_1
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$TransactionHistoryClient;->b:Z

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    .line 67
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment$TransactionHistoryClient;->a:Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/cash/TransactionHistoryFragment;->startActivity(Landroid/content/Intent;)V

    .line 69
    const/4 v0, 0x1

    goto :goto_0
.end method
