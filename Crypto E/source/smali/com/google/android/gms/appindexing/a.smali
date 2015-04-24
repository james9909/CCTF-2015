.class public Lcom/google/android/gms/appindexing/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appindexing/b;


# instance fields
.field final CN:Ljava/lang/String;

.field final DN:I

.field final DV:Ljava/lang/String;

.field final EJ:Landroid/net/Uri;

.field final EK:I

.field final EW:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appindexing/b;

    invoke-direct {v0}, Lcom/google/android/gms/appindexing/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/appindexing/a;->CREATOR:Lcom/google/android/gms/appindexing/b;

    return-void
.end method

.method constructor <init>(ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appindexing/a;->DN:I

    iput-object p2, p0, Lcom/google/android/gms/appindexing/a;->EJ:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/appindexing/a;->EW:Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/gms/appindexing/a;->DV:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/appindexing/a;->CN:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/appindexing/a;->EK:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appindexing/a;->CREATOR:Lcom/google/android/gms/appindexing/b;

    const/4 v0, 0x0

    return v0
.end method

.method public fS()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appindexing/a;->EW:Landroid/net/Uri;

    return-object v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appindexing/a;->CN:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appindexing/a;->EJ:Landroid/net/Uri;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appindexing/a;->DV:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/appindexing/a;->EK:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appindexing/a;->CREATOR:Lcom/google/android/gms/appindexing/b;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appindexing/b;->a(Lcom/google/android/gms/appindexing/a;Landroid/os/Parcel;I)V

    return-void
.end method
