.class public final Lcom/google/android/gms/internal/gh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# instance fields
.field private final mL:Ljava/lang/Object;

.field private mj:Lcom/google/android/gms/internal/hk;

.field private vG:Ljava/lang/String;

.field private vH:Lcom/google/android/gms/internal/gz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gz",
            "<",
            "Lcom/google/android/gms/internal/gj;",
            ">;"
        }
    .end annotation
.end field

.field public final vI:Lcom/google/android/gms/internal/ch;

.field public final vJ:Lcom/google/android/gms/internal/ch;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gh;->mL:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/gz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gh;->vH:Lcom/google/android/gms/internal/gz;

    new-instance v0, Lcom/google/android/gms/internal/gh$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gh$1;-><init>(Lcom/google/android/gms/internal/gh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gh;->vI:Lcom/google/android/gms/internal/ch;

    new-instance v0, Lcom/google/android/gms/internal/gh$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gh$2;-><init>(Lcom/google/android/gms/internal/gh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gh;->vJ:Lcom/google/android/gms/internal/ch;

    iput-object p1, p0, Lcom/google/android/gms/internal/gh;->vG:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/gh;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->mL:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/gh;)Lcom/google/android/gms/internal/gz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->vH:Lcom/google/android/gms/internal/gz;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/gh;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->vG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/hk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gh;->mj:Lcom/google/android/gms/internal/hk;

    return-void
.end method

.method public db()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/gj;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->vH:Lcom/google/android/gms/internal/gz;

    return-object v0
.end method
