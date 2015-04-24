.class public Lcom/google/android/gms/internal/jx$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private PC:J

.field private PD:J

.field private PE:J

.field private PF:Lcom/google/android/gms/cloudsave/Entity;

.field private PG:Lcom/google/android/gms/cloudsave/Entity;

.field private PH:I

.field private PI:I

.field private PJ:Landroid/os/IBinder;

.field private Pw:Lcom/google/android/gms/cloudsave/Entity$Key;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/jx$a;)Lcom/google/android/gms/internal/jx$b;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jx$a;->ik()Lcom/google/android/gms/cloudsave/Entity$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jx$b;->Pw:Lcom/google/android/gms/cloudsave/Entity$Key;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jx$a;->ix()Lcom/google/android/gms/cloudsave/Entity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cloudsave/Entity;->a(Lcom/google/android/gms/cloudsave/Entity;)V

    invoke-virtual {v0}, Lcom/google/android/gms/cloudsave/Entity;->clone()Lcom/google/android/gms/cloudsave/Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jx$b;->PF:Lcom/google/android/gms/cloudsave/Entity;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jx$a;->ig()Lcom/google/android/gms/cloudsave/Entity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cloudsave/Entity;->a(Lcom/google/android/gms/cloudsave/Entity;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/jx$b;->PF:Lcom/google/android/gms/cloudsave/Entity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/jx$b;->PF:Lcom/google/android/gms/cloudsave/Entity;

    invoke-virtual {v0}, Lcom/google/android/gms/cloudsave/Entity;->clone()Lcom/google/android/gms/cloudsave/Entity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cloudsave/Entity;->a(Lcom/google/android/gms/cloudsave/Entity;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jx$a;->iz()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/jx$b;->PI:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jx$a;->iA()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/jx$b;->PC:J

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jx$a;->iB()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/jx$b;->PD:J

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jx$a;->iC()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/jx$b;->PE:J

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jx$a;->iy()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jx$b;->PJ:Landroid/os/IBinder;

    return-object p0
.end method

.method public bi(I)Lcom/google/android/gms/internal/jx$b;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/jx$b;->PH:I

    return-object p0
.end method

.method public e(Lcom/google/android/gms/cloudsave/Entity;)Lcom/google/android/gms/internal/jx$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jx$b;->PG:Lcom/google/android/gms/cloudsave/Entity;

    return-object p0
.end method

.method public iA()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/jx$b;->PC:J

    return-wide v0
.end method

.method public iB()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/jx$b;->PD:J

    return-wide v0
.end method

.method public iC()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/jx$b;->PE:J

    return-wide v0
.end method

.method public iD()Lcom/google/android/gms/common/data/DataHolder;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/common/data/e;->jm()Lcom/google/android/gms/common/data/DataHolder$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jx$b;->PF:Lcom/google/android/gms/cloudsave/Entity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/jx$b;->PF:Lcom/google/android/gms/cloudsave/Entity;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/data/e;->a(Lcom/google/android/gms/common/data/DataHolder$a;Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/DataHolder$a;->bD(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    return-object v0
.end method

.method public iE()Lcom/google/android/gms/common/data/DataHolder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jx$b;->PG:Lcom/google/android/gms/cloudsave/Entity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/data/e;->jm()Lcom/google/android/gms/common/data/DataHolder$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jx$b;->PG:Lcom/google/android/gms/cloudsave/Entity;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/data/e;->a(Lcom/google/android/gms/common/data/DataHolder$a;Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/DataHolder$a;->bD(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    goto :goto_0
.end method

.method public iF()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/jx$b;->PH:I

    return v0
.end method

.method public iG()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/jx$b;->PI:I

    return v0
.end method

.method public iH()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx$b;->PJ:Landroid/os/IBinder;

    return-object v0
.end method

.method public ik()Lcom/google/android/gms/cloudsave/Entity$Key;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx$b;->Pw:Lcom/google/android/gms/cloudsave/Entity$Key;

    return-object v0
.end method
