.class public Lcom/google/android/gms/internal/ki;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ki;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final PL:Lcom/google/android/gms/common/data/DataHolder;

.field public final PM:I

.field public final PN:I

.field public final PO:J

.field public PP:Lcom/google/android/gms/cloudsave/Entity$Key;

.field public PQ:J

.field public PR:J

.field public final PS:Lcom/google/android/gms/common/data/DataHolder;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/kj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ki;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;IIJLcom/google/android/gms/cloudsave/Entity$Key;JJLcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ki;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ki;->PL:Lcom/google/android/gms/common/data/DataHolder;

    iput p3, p0, Lcom/google/android/gms/internal/ki;->PM:I

    iput p4, p0, Lcom/google/android/gms/internal/ki;->PN:I

    iput-wide p5, p0, Lcom/google/android/gms/internal/ki;->PO:J

    iput-object p7, p0, Lcom/google/android/gms/internal/ki;->PP:Lcom/google/android/gms/cloudsave/Entity$Key;

    iput-wide p8, p0, Lcom/google/android/gms/internal/ki;->PQ:J

    iput-wide p10, p0, Lcom/google/android/gms/internal/ki;->PR:J

    iput-object p12, p0, Lcom/google/android/gms/internal/ki;->PS:Lcom/google/android/gms/common/data/DataHolder;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;IIJLcom/google/android/gms/cloudsave/Entity$Key;JJLcom/google/android/gms/common/data/DataHolder;)V
    .locals 13

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ki;-><init>(ILcom/google/android/gms/common/data/DataHolder;IIJLcom/google/android/gms/cloudsave/Entity$Key;JJLcom/google/android/gms/common/data/DataHolder;)V

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/kj;->a(Lcom/google/android/gms/internal/ki;Landroid/os/Parcel;I)V

    return-void
.end method
