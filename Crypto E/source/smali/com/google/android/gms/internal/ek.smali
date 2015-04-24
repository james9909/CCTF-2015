.class public final Lcom/google/android/gms/internal/ek;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ej;


# instance fields
.field public final lW:Lcom/google/android/gms/internal/eu;

.field public final ts:Lcom/google/android/gms/internal/ew;

.field public final tt:Landroid/content/Context;

.field public final tu:Lcom/google/android/gms/internal/et;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ej;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ej;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ek;->CREATOR:Lcom/google/android/gms/internal/ej;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ek;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/dynamic/d$a;->aX(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->f(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/eu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ek;->lW:Lcom/google/android/gms/internal/eu;

    invoke-static {p3}, Lcom/google/android/gms/dynamic/d$a;->aX(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->f(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ew;

    iput-object v0, p0, Lcom/google/android/gms/internal/ek;->ts:Lcom/google/android/gms/internal/ew;

    invoke-static {p4}, Lcom/google/android/gms/dynamic/d$a;->aX(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->f(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ek;->tt:Landroid/content/Context;

    invoke-static {p5}, Lcom/google/android/gms/dynamic/d$a;->aX(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->f(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/et;

    iput-object v0, p0, Lcom/google/android/gms/internal/ek;->tu:Lcom/google/android/gms/internal/et;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/eu;Lcom/google/android/gms/internal/ew;Lcom/google/android/gms/internal/et;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ek;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ek;->tt:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ek;->lW:Lcom/google/android/gms/internal/eu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ek;->ts:Lcom/google/android/gms/internal/ew;

    iput-object p4, p0, Lcom/google/android/gms/internal/ek;->tu:Lcom/google/android/gms/internal/et;

    return-void
.end method

.method public static a(Landroid/content/Intent;Lcom/google/android/gms/internal/ek;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method

.method public static c(Landroid/content/Intent;)Lcom/google/android/gms/internal/ek;
    .locals 2

    :try_start_0
    const-string v0, "com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/ek;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ek;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method cC()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ek;->tu:Lcom/google/android/gms/internal/et;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->n(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method cD()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ek;->lW:Lcom/google/android/gms/internal/eu;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->n(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method cE()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ek;->ts:Lcom/google/android/gms/internal/ew;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->n(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method cF()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ek;->tt:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->n(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ej;->a(Lcom/google/android/gms/internal/ek;Landroid/os/Parcel;I)V

    return-void
.end method
