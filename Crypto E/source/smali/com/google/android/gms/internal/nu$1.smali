.class Lcom/google/android/gms/internal/nu$1;
.super Lcom/google/android/gms/internal/nu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nu;->requestActivityUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;JLandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic anP:J

.field final synthetic anQ:Landroid/app/PendingIntent;

.field final synthetic anR:Lcom/google/android/gms/internal/nu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/common/api/GoogleApiClient;JLandroid/app/PendingIntent;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/nu$1;->anR:Lcom/google/android/gms/internal/nu;

    iput-wide p3, p0, Lcom/google/android/gms/internal/nu$1;->anP:J

    iput-object p5, p0, Lcom/google/android/gms/internal/nu$1;->anQ:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/nu$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/od;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nu$1;->a(Lcom/google/android/gms/internal/od;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/od;)V
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/nu$1;->anP:J

    iget-object v2, p0, Lcom/google/android/gms/internal/nu$1;->anQ:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/od;->a(JLandroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->RQ:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/nu$1;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
