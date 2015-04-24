.class public Lcom/google/android/gms/internal/im;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/appindexing/AppLinkingApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/im$c;,
        Lcom/google/android/gms/internal/im$b;,
        Lcom/google/android/gms/internal/im$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResults;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/a;",
            ">;)",
            "Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResults;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/appindexing/a;

    new-instance v0, Lcom/google/android/gms/internal/im$b;

    invoke-virtual {v1}, Lcom/google/android/gms/appindexing/a;->getOriginalUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/appindexing/a;->fS()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/appindexing/a;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/appindexing/a;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/gms/appindexing/a;->getVerificationStatus()I

    move-result v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/im$b;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/im$c;

    invoke-direct {v0, p1, v7}, Lcom/google/android/gms/internal/im$c;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V

    return-object v0
.end method

.method public loadTranslatedUri(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/internal/im$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/im$1;-><init>(Lcom/google/android/gms/internal/im;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;Ljava/util/List;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public loadTranslatedUris(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResults;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/im$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/im$2;-><init>(Lcom/google/android/gms/internal/im;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method
