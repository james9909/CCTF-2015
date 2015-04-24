.class public Lcom/google/android/gms/internal/ns;
.super Ljava/lang/Object;


# instance fields
.field private final Fm:Ljava/lang/String;

.field private final Fq:Lcom/google/android/gms/internal/oi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/oi",
            "<",
            "Lcom/google/android/gms/internal/ob;",
            ">;"
        }
    .end annotation
.end field

.field private final Rf:Ljava/lang/String;

.field private anO:Lcom/google/android/gms/internal/nt;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/oi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/oi",
            "<",
            "Lcom/google/android/gms/internal/ob;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ns;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ns;->Fm:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ns;->Fq:Lcom/google/android/gms/internal/oi;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ns;->anO:Lcom/google/android/gms/internal/nt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ns;->Rf:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/oi;)Lcom/google/android/gms/internal/ns;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/oi",
            "<",
            "Lcom/google/android/gms/internal/ob;",
            ">;)",
            "Lcom/google/android/gms/internal/ns;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ns;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ns;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/oi;)V

    return-object v0
.end method
