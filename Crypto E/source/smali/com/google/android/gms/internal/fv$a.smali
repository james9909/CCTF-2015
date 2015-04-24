.class public final Lcom/google/android/gms/internal/fv$a;
.super Lcom/google/android/gms/internal/fv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/fu$a;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/fv;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/fu$a;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/fv$a;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public cT()V
    .locals 0

    return-void
.end method

.method public cU()Lcom/google/android/gms/internal/gb;
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/bm;

    sget-object v0, Lcom/google/android/gms/internal/br;->py:Lcom/google/android/gms/internal/bo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bo;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/br;->bF()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/bm;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fv$a;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/ct;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ct;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/gm;

    invoke-direct {v3}, Lcom/google/android/gms/internal/gm;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gf;->a(Landroid/content/Context;Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/cs;Lcom/google/android/gms/internal/gl;)Lcom/google/android/gms/internal/gf;

    move-result-object v0

    return-object v0
.end method
