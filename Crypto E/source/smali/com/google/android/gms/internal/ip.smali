.class public abstract Lcom/google/android/gms/internal/ip;
.super Lcom/google/android/gms/internal/io$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/io$a;"
    }
.end annotation


# instance fields
.field protected EM:Lcom/google/android/gms/common/api/BaseImplementation$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/io$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ip;->EM:Lcom/google/android/gms/common/api/BaseImplementation$b;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/Status;Z)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/id$b;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public d(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    return-void
.end method
