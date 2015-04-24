.class Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;->a(Landroid/webkit/WebView;Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/model/DSnapPage;

.field final synthetic b:Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;Lcom/snapchat/android/discover/model/DSnapPage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter$1;->b:Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter$1;->a:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter$1;->b:Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter$1;->a:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;->a(Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;Landroid/net/Uri;Lcom/snapchat/android/discover/model/DSnapPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter$1;->b:Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;->a(Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter$1;->b:Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter$1;->a:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0, p2, v1}, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;->a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter$1;->b:Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;->a(Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter$1;->b:Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter$1;->a:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0, p2, v1}, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;->a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPage;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
