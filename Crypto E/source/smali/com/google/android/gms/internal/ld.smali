.class public Lcom/google/android/gms/internal/ld;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/le;


# instance fields
.field final DN:I

.field public final UT:Ljava/lang/String;

.field public final UU:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/le;

    invoke-direct {v0}, Lcom/google/android/gms/internal/le;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ld;->CREATOR:Lcom/google/android/gms/internal/le;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ld;->DN:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ld;->UT:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ld;->UU:I

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/le;->a(Lcom/google/android/gms/internal/ld;Landroid/os/Parcel;I)V

    return-void
.end method
