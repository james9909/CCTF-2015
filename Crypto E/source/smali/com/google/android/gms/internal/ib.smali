.class public Lcom/google/android/gms/internal/ib;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ic;


# instance fields
.field final DN:I

.field final Ee:Landroid/os/Bundle;

.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ic;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ic;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ib;->CREATOR:Lcom/google/android/gms/internal/ic;

    return-void
.end method

.method constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ib;->DN:I

    iput p2, p0, Lcom/google/android/gms/internal/ib;->id:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ib;->Ee:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ib;->CREATOR:Lcom/google/android/gms/internal/ic;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ib;->CREATOR:Lcom/google/android/gms/internal/ic;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ic;->a(Lcom/google/android/gms/internal/ib;Landroid/os/Parcel;I)V

    return-void
.end method
