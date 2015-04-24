.class public Lcom/google/android/gms/internal/jx$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private OD:Lcom/google/android/gms/cloudsave/Entity;

.field private OL:Lcom/google/android/gms/cloudsave/Entity;

.field private OM:Lcom/google/android/gms/cloudsave/Entity;

.field private PA:Landroid/os/IBinder;

.field private PB:I

.field private PC:J

.field private PD:J

.field private PE:J

.field private Pw:Lcom/google/android/gms/cloudsave/Entity$Key;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static l(Landroid/content/Intent;)Lcom/google/android/gms/internal/jx$a;
    .locals 6

    const-wide/16 v4, 0x0

    new-instance v1, Lcom/google/android/gms/internal/jx$a;

    invoke-direct {v1}, Lcom/google/android/gms/internal/jx$a;-><init>()V

    const-string v0, "entity_key"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cloudsave/Entity$Key;

    iput-object v0, v1, Lcom/google/android/gms/internal/jx$a;->Pw:Lcom/google/android/gms/cloudsave/Entity$Key;

    const-string v0, "new"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cloudsave/Entity;

    iput-object v0, v1, Lcom/google/android/gms/internal/jx$a;->OL:Lcom/google/android/gms/cloudsave/Entity;

    const-string v0, "base"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cloudsave/Entity;

    iput-object v0, v1, Lcom/google/android/gms/internal/jx$a;->OD:Lcom/google/android/gms/cloudsave/Entity;

    const-string v0, "accepted"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cloudsave/Entity;

    iput-object v0, v1, Lcom/google/android/gms/internal/jx$a;->OM:Lcom/google/android/gms/cloudsave/Entity;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "callback"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/jx$a;->PA:Landroid/os/IBinder;

    const-string v0, "calling_operation"

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/internal/jx$a;->PB:I

    const-string v0, "sessionId"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/jx$a;->PC:J

    const-string v0, "major_version"

    invoke-virtual {p0, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/jx$a;->PD:J

    const-string v0, "minor_version"

    invoke-virtual {p0, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/jx$a;->PE:J

    return-object v1
.end method


# virtual methods
.method public iA()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/jx$a;->PC:J

    return-wide v0
.end method

.method public iB()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/jx$a;->PD:J

    return-wide v0
.end method

.method public iC()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/jx$a;->PE:J

    return-wide v0
.end method

.method public ig()Lcom/google/android/gms/cloudsave/Entity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx$a;->OD:Lcom/google/android/gms/cloudsave/Entity;

    return-object v0
.end method

.method public ik()Lcom/google/android/gms/cloudsave/Entity$Key;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx$a;->Pw:Lcom/google/android/gms/cloudsave/Entity$Key;

    return-object v0
.end method

.method public iw()Lcom/google/android/gms/cloudsave/Entity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx$a;->OM:Lcom/google/android/gms/cloudsave/Entity;

    return-object v0
.end method

.method public ix()Lcom/google/android/gms/cloudsave/Entity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx$a;->OL:Lcom/google/android/gms/cloudsave/Entity;

    return-object v0
.end method

.method public iy()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx$a;->PA:Landroid/os/IBinder;

    return-object v0
.end method

.method public iz()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/jx$a;->PB:I

    return v0
.end method
