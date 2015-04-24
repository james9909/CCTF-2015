.class final Lcom/google/android/gms/internal/od$b;
.super Lcom/google/android/gms/internal/oa$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/od;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private aor:Lcom/google/android/gms/location/b$a;

.field private aos:Lcom/google/android/gms/location/b$b;

.field private aot:Lcom/google/android/gms/internal/od;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/b$a;Lcom/google/android/gms/internal/od;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/oa$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/od$b;->aor:Lcom/google/android/gms/location/b$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/od$b;->aos:Lcom/google/android/gms/location/b$b;

    iput-object p2, p0, Lcom/google/android/gms/internal/od$b;->aot:Lcom/google/android/gms/internal/od;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/b$b;Lcom/google/android/gms/internal/od;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/oa$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/od$b;->aos:Lcom/google/android/gms/location/b$b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/od$b;->aor:Lcom/google/android/gms/location/b$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/od$b;->aot:Lcom/google/android/gms/internal/od;

    return-void
.end method


# virtual methods
.method public a(ILandroid/app/PendingIntent;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/od$b;->aot:Lcom/google/android/gms/internal/od;

    if-nez v0, :cond_0

    const-string v0, "LocationClientImpl"

    const-string v1, "onRemoveGeofencesByPendingIntentResult called multiple times"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/od$b;->aot:Lcom/google/android/gms/internal/od;

    new-instance v0, Lcom/google/android/gms/internal/od$c;

    iget-object v1, p0, Lcom/google/android/gms/internal/od$b;->aot:Lcom/google/android/gms/internal/od;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/od$b;->aos:Lcom/google/android/gms/location/b$b;

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/od$c;-><init>(Lcom/google/android/gms/internal/od;ILcom/google/android/gms/location/b$b;ILandroid/app/PendingIntent;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/od;->a(Lcom/google/android/gms/common/internal/h$b;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/od$b;->aot:Lcom/google/android/gms/internal/od;

    iput-object v7, p0, Lcom/google/android/gms/internal/od$b;->aor:Lcom/google/android/gms/location/b$a;

    iput-object v7, p0, Lcom/google/android/gms/internal/od$b;->aos:Lcom/google/android/gms/location/b$b;

    goto :goto_0
.end method

.method public a(I[Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/od$b;->aot:Lcom/google/android/gms/internal/od;

    if-nez v0, :cond_0

    const-string v0, "LocationClientImpl"

    const-string v1, "onAddGeofenceResult called multiple times"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/od$b;->aot:Lcom/google/android/gms/internal/od;

    new-instance v1, Lcom/google/android/gms/internal/od$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/od$b;->aot:Lcom/google/android/gms/internal/od;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/od$b;->aor:Lcom/google/android/gms/location/b$a;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/od$a;-><init>(Lcom/google/android/gms/internal/od;Lcom/google/android/gms/location/b$a;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/od;->a(Lcom/google/android/gms/common/internal/h$b;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/od$b;->aot:Lcom/google/android/gms/internal/od;

    iput-object v4, p0, Lcom/google/android/gms/internal/od$b;->aor:Lcom/google/android/gms/location/b$a;

    iput-object v4, p0, Lcom/google/android/gms/internal/od$b;->aos:Lcom/google/android/gms/location/b$b;

    goto :goto_0
.end method

.method public b(I[Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/od$b;->aot:Lcom/google/android/gms/internal/od;

    if-nez v0, :cond_0

    const-string v0, "LocationClientImpl"

    const-string v1, "onRemoveGeofencesByRequestIdsResult called multiple times"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/od$b;->aot:Lcom/google/android/gms/internal/od;

    new-instance v0, Lcom/google/android/gms/internal/od$c;

    iget-object v1, p0, Lcom/google/android/gms/internal/od$b;->aot:Lcom/google/android/gms/internal/od;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/od$b;->aos:Lcom/google/android/gms/location/b$b;

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/od$c;-><init>(Lcom/google/android/gms/internal/od;ILcom/google/android/gms/location/b$b;I[Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/od;->a(Lcom/google/android/gms/common/internal/h$b;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/od$b;->aot:Lcom/google/android/gms/internal/od;

    iput-object v7, p0, Lcom/google/android/gms/internal/od$b;->aor:Lcom/google/android/gms/location/b$a;

    iput-object v7, p0, Lcom/google/android/gms/internal/od$b;->aos:Lcom/google/android/gms/location/b$b;

    goto :goto_0
.end method
