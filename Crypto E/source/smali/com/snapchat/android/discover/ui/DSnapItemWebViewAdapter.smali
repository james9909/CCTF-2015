.class public Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;
.super Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/squareup/otto/Bus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;-><init>(Landroid/content/Context;Lcom/squareup/otto/Bus;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/squareup/otto/Bus;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;->c:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;->d:Lcom/squareup/otto/Bus;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;->h()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/net/Uri;Lcom/snapchat/android/discover/model/DSnapPage;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 120
    const-string v2, "file"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;Landroid/net/Uri;Lcom/snapchat/android/discover/model/DSnapPage;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;->a(Landroid/net/Uri;Lcom/snapchat/android/discover/model/DSnapPage;)Z

    move-result v0

    return v0
.end method

.method private h()Landroid/webkit/WebResourceResponse;
    .locals 5

    .prologue
    .line 108
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v1, "text/plain"

    const-string v2, "UTF-8"

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;
    .locals 1
    .parameter

    .prologue
    .line 139
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->b:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    return-object v0
.end method

.method public a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPage;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    if-eqz p3, :cond_0

    .line 151
    invoke-virtual {p3}, Landroid/view/View;->buildDrawingCache()V

    .line 152
    invoke-virtual {p3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/SnapMediaUtils;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    invoke-virtual {p3}, Landroid/view/View;->destroyDrawingCache()V

    .line 155
    new-instance v1, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapbryo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->a(Landroid/graphics/Bitmap;)Lcom/snapchat/android/discover/model/DSnapbryo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->a()Lcom/snapchat/android/discover/model/DSnapbryo;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;->d:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    invoke-direct {v2, v0}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;-><init>(Lcom/snapchat/android/model/Mediabryo;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 162
    :cond_0
    return-void
.end method

.method protected a(Landroid/webkit/WebView;Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;->a:Landroid/webkit/WebView;

    .line 61
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 63
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 64
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 67
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 68
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter$1;

    invoke-direct {v1, p0, p3}, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter$1;-><init>(Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;Lcom/snapchat/android/discover/model/DSnapPage;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Lcom/snapchat/android/discover/model/DSnapPanel;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v1, "DSnapItemWebViewAdapter"

    const-string v2, "Loading WebView from %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 104
    return v5
.end method

.method public a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;->a(Landroid/webkit/WebView;Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPage;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;->a(Landroid/net/Uri;Lcom/snapchat/android/discover/model/DSnapPage;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method public e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->c:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    return-object v0
.end method
