.class public Lcom/google/android/gms/internal/pl$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/pl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final auo:Lcom/google/android/gms/internal/po;

.field public final aup:Lcom/google/android/gms/internal/pk;

.field public final auq:Lcom/google/android/gms/internal/ru$c;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/po;Lcom/google/android/gms/internal/pk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/po;

    iput-object v0, p0, Lcom/google/android/gms/internal/pl$a;->auo:Lcom/google/android/gms/internal/po;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/pk;

    iput-object v0, p0, Lcom/google/android/gms/internal/pl$a;->aup:Lcom/google/android/gms/internal/pk;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/pl$a;->auq:Lcom/google/android/gms/internal/ru$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/po;Lcom/google/android/gms/internal/pk;Lcom/google/android/gms/internal/pl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/pl$a;-><init>(Lcom/google/android/gms/internal/po;Lcom/google/android/gms/internal/pk;)V

    return-void
.end method
