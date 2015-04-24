.class abstract Lcom/google/android/gms/internal/im$a;
.super Lcom/google/android/gms/common/api/BaseImplementation$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/BaseImplementation$a",
        "<TT;",
        "Lcom/google/android/gms/internal/iq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hu;->DJ:Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/BaseImplementation$a;-><init>(Lcom/google/android/gms/common/api/Api$c;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/iq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/im$a;->a(Lcom/google/android/gms/internal/iq;)V

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/internal/in;)V
.end method

.method protected final a(Lcom/google/android/gms/internal/iq;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iq;->fQ()Lcom/google/android/gms/internal/in;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/im$a;->a(Lcom/google/android/gms/internal/in;)V

    return-void
.end method
