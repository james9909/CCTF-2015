.class public final Lcom/google/android/gms/internal/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/aw;


# instance fields
.field public final extras:Landroid/os/Bundle;

.field public final on:J

.field public final oo:I

.field public final op:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final oq:Z

.field public final or:I

.field public final os:Z

.field public final ot:Ljava/lang/String;

.field public final ou:Lcom/google/android/gms/internal/bj;

.field public final ov:Landroid/location/Location;

.field public final ow:Ljava/lang/String;

.field public final ox:Landroid/os/Bundle;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/av;->CREATOR:Lcom/google/android/gms/internal/aw;

    return-void
.end method

.method public constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/bj;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZIZ",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bj;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/av;->versionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/av;->on:J

    iput-object p4, p0, Lcom/google/android/gms/internal/av;->extras:Landroid/os/Bundle;

    iput p5, p0, Lcom/google/android/gms/internal/av;->oo:I

    iput-object p6, p0, Lcom/google/android/gms/internal/av;->op:Ljava/util/List;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/av;->oq:Z

    iput p8, p0, Lcom/google/android/gms/internal/av;->or:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/av;->os:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/av;->ot:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/av;->ou:Lcom/google/android/gms/internal/bj;

    iput-object p12, p0, Lcom/google/android/gms/internal/av;->ov:Landroid/location/Location;

    iput-object p13, p0, Lcom/google/android/gms/internal/av;->ow:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/internal/av;->ox:Landroid/os/Bundle;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/av;Landroid/os/Parcel;I)V

    return-void
.end method
