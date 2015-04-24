.class public final Lcom/google/android/gms/internal/ep;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# instance fields
.field public tM:J

.field public final tN:Ljava/lang/String;

.field public final tO:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ep;->tM:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ep;->tO:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ep;->tN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ep;->tO:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ep;->tN:Ljava/lang/String;

    return-void
.end method
