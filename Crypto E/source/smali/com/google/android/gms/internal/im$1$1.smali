.class Lcom/google/android/gms/internal/im$1$1;
.super Lcom/google/android/gms/internal/ip;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/im$1;->a(Lcom/google/android/gms/internal/in;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ip",
        "<",
        "Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic EG:Lcom/google/android/gms/internal/im$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/im$1;Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/im$1$1;->EG:Lcom/google/android/gms/internal/im$1;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ip;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/a;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v7, p0, Lcom/google/android/gms/internal/im$1$1;->EM:Lcom/google/android/gms/common/api/BaseImplementation$b;

    new-instance v0, Lcom/google/android/gms/internal/im$b;

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/appindexing/a;

    invoke-virtual {v1}, Lcom/google/android/gms/appindexing/a;->getOriginalUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/appindexing/a;

    invoke-virtual {v1}, Lcom/google/android/gms/appindexing/a;->fS()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/appindexing/a;

    invoke-virtual {v1}, Lcom/google/android/gms/appindexing/a;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/appindexing/a;

    invoke-virtual {v1}, Lcom/google/android/gms/appindexing/a;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/appindexing/a;

    invoke-virtual {v1}, Lcom/google/android/gms/appindexing/a;->getVerificationStatus()I

    move-result v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/im$b;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/common/api/BaseImplementation$b;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/google/android/gms/internal/im$1$1;->EM:Lcom/google/android/gms/common/api/BaseImplementation$b;

    new-instance v0, Lcom/google/android/gms/internal/im$b;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->RS:Lcom/google/android/gms/common/api/Status;

    iget-object v2, p0, Lcom/google/android/gms/internal/im$1$1;->EG:Lcom/google/android/gms/internal/im$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/im$1;->ED:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/im$b;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/common/api/BaseImplementation$b;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method
