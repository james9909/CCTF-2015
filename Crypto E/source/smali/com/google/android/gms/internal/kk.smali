.class public Lcom/google/android/gms/internal/kk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/kk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public PP:Lcom/google/android/gms/cloudsave/Entity$Key;

.field public final PT:Lcom/google/android/gms/cloudsave/Entity;

.field public PU:Z

.field public statusCode:I

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/kl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/kk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/cloudsave/Entity;ZLcom/google/android/gms/cloudsave/Entity$Key;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/kk;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/kk;->statusCode:I

    iput-object p3, p0, Lcom/google/android/gms/internal/kk;->PT:Lcom/google/android/gms/cloudsave/Entity;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/kk;->PU:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/kk;->PP:Lcom/google/android/gms/cloudsave/Entity$Key;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/kl;->a(Lcom/google/android/gms/internal/kk;Landroid/os/Parcel;I)V

    return-void
.end method
