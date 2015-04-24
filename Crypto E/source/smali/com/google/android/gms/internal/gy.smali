.class public Lcom/google/android/gms/internal/gy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gy$1;,
        Lcom/google/android/gms/internal/gy$e;,
        Lcom/google/android/gms/internal/gy$d;,
        Lcom/google/android/gms/internal/gy$c;,
        Lcom/google/android/gms/internal/gy$b;,
        Lcom/google/android/gms/internal/gy$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/gy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gy;-><init>()V

    return-void
.end method

.method public static w(I)Lcom/google/android/gms/internal/gy;
    .locals 1

    const/16 v0, 0x12

    if-lt p0, v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/gy$e;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gy$e;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x11

    if-lt p0, v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/gy$d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gy$d;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v0, 0xe

    if-lt p0, v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/gy$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gy$c;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v0, 0xb

    if-lt p0, v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/gy$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gy$b;-><init>()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x9

    if-lt p0, v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/gy$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gy$a;-><init>()V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/gy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gy;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/hk;Z)Lcom/google/android/gms/internal/hl;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/hl;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/hl;-><init>(Lcom/google/android/gms/internal/hk;Z)V

    return-object v0
.end method

.method public a(Landroid/app/DownloadManager$Request;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/content/ComponentCallbacks;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/Window;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/webkit/WebView;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/content/Context;Landroid/content/ComponentCallbacks;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/webkit/WebView;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/google/android/gms/internal/hk;)Landroid/webkit/WebChromeClient;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Landroid/net/Uri;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, -0x1

    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v0, 0x0

    :cond_2
    const/16 v1, 0x26

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    :cond_3
    const/16 v2, 0x3d

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gt v2, v1, :cond_4

    if-ne v2, v5, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public dF()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dG()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dH()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public h(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
