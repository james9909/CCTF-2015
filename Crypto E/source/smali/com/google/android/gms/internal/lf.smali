.class public Lcom/google/android/gms/internal/lf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/lg;


# instance fields
.field private final DN:I

.field private final UV:Lcom/google/android/gms/internal/lh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/lg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/lf;->CREATOR:Lcom/google/android/gms/internal/lg;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/lh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/lf;->DN:I

    iput-object p2, p0, Lcom/google/android/gms/internal/lf;->UV:Lcom/google/android/gms/internal/lh;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/lh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/lf;->DN:I

    iput-object p1, p0, Lcom/google/android/gms/internal/lf;->UV:Lcom/google/android/gms/internal/lh;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/lk$b;)Lcom/google/android/gms/internal/lf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/lk$b",
            "<**>;)",
            "Lcom/google/android/gms/internal/lf;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/lh;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/lf;

    check-cast p0, Lcom/google/android/gms/internal/lh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/lf;-><init>(Lcom/google/android/gms/internal/lh;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported safe parcelable field converter class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/lf;->CREATOR:Lcom/google/android/gms/internal/lg;

    const/4 v0, 0x0

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/lf;->DN:I

    return v0
.end method

.method jP()Lcom/google/android/gms/internal/lh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/lf;->UV:Lcom/google/android/gms/internal/lh;

    return-object v0
.end method

.method public jQ()Lcom/google/android/gms/internal/lk$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/lk$b",
            "<**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/lf;->UV:Lcom/google/android/gms/internal/lh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/lf;->UV:Lcom/google/android/gms/internal/lh;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was no converter wrapped in this ConverterWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/lf;->CREATOR:Lcom/google/android/gms/internal/lg;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/lg;->a(Lcom/google/android/gms/internal/lf;Landroid/os/Parcel;I)V

    return-void
.end method
