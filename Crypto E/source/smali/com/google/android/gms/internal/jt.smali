.class public Lcom/google/android/gms/internal/jt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/jt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final Px:Lcom/google/android/gms/common/data/DataHolder;

.field public final Py:Lcom/google/android/gms/cloudsave/Query;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ju;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ju;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/cloudsave/Query;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jt;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/jt;->Px:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p3, p0, Lcom/google/android/gms/internal/jt;->Py:Lcom/google/android/gms/cloudsave/Query;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cloudsave/Query;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/jt;-><init>(ILcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/cloudsave/Query;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/jt;-><init>(ILcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/cloudsave/Query;)V

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ju;->a(Lcom/google/android/gms/internal/jt;Landroid/os/Parcel;I)V

    return-void
.end method
