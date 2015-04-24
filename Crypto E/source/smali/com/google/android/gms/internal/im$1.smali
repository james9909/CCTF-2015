.class Lcom/google/android/gms/internal/im$1;
.super Lcom/google/android/gms/internal/im$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/im;->loadTranslatedUri(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/im$a",
        "<",
        "Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ED:Landroid/net/Uri;

.field final synthetic EE:Ljava/util/List;

.field final synthetic EF:Lcom/google/android/gms/internal/im;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/im;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/im$1;->EF:Lcom/google/android/gms/internal/im;

    iput-object p3, p0, Lcom/google/android/gms/internal/im$1;->ED:Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/gms/internal/im$1;->EE:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/im$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResult;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/im$b;

    iget-object v2, p0, Lcom/google/android/gms/internal/im$1;->ED:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/im$b;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/internal/in;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/im$1$1;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gms/internal/im$1$1;-><init>(Lcom/google/android/gms/internal/im$1;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/im$1;->EE:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/in;->a(Lcom/google/android/gms/internal/io;Ljava/util/List;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/im$1;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResult;

    move-result-object v0

    return-object v0
.end method
