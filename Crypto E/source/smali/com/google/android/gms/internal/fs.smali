.class public Lcom/google/android/gms/internal/fs;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fs$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/internal/fx$a;Lcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/fs$a;)Lcom/google/android/gms/internal/gu;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ft;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ft;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/fx$a;Lcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/fs$a;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ft;->start()V

    return-object v0
.end method
