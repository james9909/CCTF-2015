.class public Lcom/google/android/gms/internal/jx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jx$b;,
        Lcom/google/android/gms/internal/jx$a;
    }
.end annotation


# direct methods
.method public static k(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
