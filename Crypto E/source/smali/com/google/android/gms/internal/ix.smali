.class public Lcom/google/android/gms/internal/ix;
.super Ljava/lang/Object;


# instance fields
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

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/oi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/oi",
            "<",
            "Lcom/google/android/gms/internal/ob;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ix;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ix;->Fq:Lcom/google/android/gms/internal/oi;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/oi;)Lcom/google/android/gms/internal/ix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/oi",
            "<",
            "Lcom/google/android/gms/internal/ob;",
            ">;)",
            "Lcom/google/android/gms/internal/ix;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ix;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ix;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/oi;)V

    return-object v0
.end method
