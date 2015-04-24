.class Lcom/google/android/gms/internal/jp$n$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cloudsave/CloudSaveManager$SaveEntityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jp$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final EI:Lcom/google/android/gms/common/api/Status;

.field private final Pt:Lcom/google/android/gms/cloudsave/Entity;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cloudsave/Entity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jp$n$a;->EI:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/jp$n$a;->Pt:Lcom/google/android/gms/cloudsave/Entity;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$n$a;->EI:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public iv()Lcom/google/android/gms/cloudsave/Entity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$n$a;->Pt:Lcom/google/android/gms/cloudsave/Entity;

    return-object v0
.end method
