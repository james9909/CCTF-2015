.class public final Lcom/google/android/gms/internal/fx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fx$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/fy;


# instance fields
.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final lE:Ljava/lang/String;

.field public final lH:Lcom/google/android/gms/internal/hg;

.field public final lL:Lcom/google/android/gms/internal/ay;

.field public final lV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final uJ:Landroid/os/Bundle;

.field public final uK:Lcom/google/android/gms/internal/av;

.field public final uL:Landroid/content/pm/PackageInfo;

.field public final uM:Ljava/lang/String;

.field public final uN:Ljava/lang/String;

.field public final uO:Ljava/lang/String;

.field public final uP:Landroid/os/Bundle;

.field public final uQ:I

.field public final uR:Landroid/os/Bundle;

.field public final uS:Z

.field public final uT:Landroid/os/Messenger;

.field public final uU:I

.field public final uV:I

.field public final uW:F

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fx;->CREATOR:Lcom/google/android/gms/internal/fy;

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Lcom/google/android/gms/internal/av;Lcom/google/android/gms/internal/ay;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/hg;Landroid/os/Bundle;ILjava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/internal/av;",
            "Lcom/google/android/gms/internal/ay;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hg;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Z",
            "Landroid/os/Messenger;",
            "IIF)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/fx;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/fx;->uJ:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/internal/fx;->uK:Lcom/google/android/gms/internal/av;

    iput-object p4, p0, Lcom/google/android/gms/internal/fx;->lL:Lcom/google/android/gms/internal/ay;

    iput-object p5, p0, Lcom/google/android/gms/internal/fx;->lE:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/fx;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/fx;->uL:Landroid/content/pm/PackageInfo;

    iput-object p8, p0, Lcom/google/android/gms/internal/fx;->uM:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/fx;->uN:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/fx;->uO:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/fx;->lH:Lcom/google/android/gms/internal/hg;

    iput-object p12, p0, Lcom/google/android/gms/internal/fx;->uP:Landroid/os/Bundle;

    iput p13, p0, Lcom/google/android/gms/internal/fx;->uQ:I

    iput-object p14, p0, Lcom/google/android/gms/internal/fx;->lV:Ljava/util/List;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/fx;->uR:Landroid/os/Bundle;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fx;->uS:Z

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/internal/fx;->uT:Landroid/os/Messenger;

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/internal/fx;->uU:I

    move/from16 v0, p19

    iput v0, p0, Lcom/google/android/gms/internal/fx;->uV:I

    move/from16 v0, p20

    iput v0, p0, Lcom/google/android/gms/internal/fx;->uW:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/av;Lcom/google/android/gms/internal/ay;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/hg;Landroid/os/Bundle;ILjava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIF)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/internal/av;",
            "Lcom/google/android/gms/internal/ay;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hg;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Z",
            "Landroid/os/Messenger;",
            "IIF)V"
        }
    .end annotation

    const/4 v1, 0x5

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    invoke-direct/range {v0 .. v20}, Lcom/google/android/gms/internal/fx;-><init>(ILandroid/os/Bundle;Lcom/google/android/gms/internal/av;Lcom/google/android/gms/internal/ay;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/hg;Landroid/os/Bundle;ILjava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIF)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/fx$a;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/fx$a;->uJ:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/fx$a;->uK:Lcom/google/android/gms/internal/av;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/fx$a;->lL:Lcom/google/android/gms/internal/ay;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/fx$a;->lE:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/internal/fx$a;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/fx$a;->uL:Landroid/content/pm/PackageInfo;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/gms/internal/fx$a;->uN:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/gms/internal/fx$a;->uO:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/android/gms/internal/fx$a;->lH:Lcom/google/android/gms/internal/hg;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gms/internal/fx$a;->uP:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/google/android/gms/internal/fx$a;->uQ:I

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/gms/internal/fx$a;->lV:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/gms/internal/fx$a;->uR:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/fx$a;->uS:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/fx$a;->uT:Landroid/os/Messenger;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/gms/internal/fx$a;->uU:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/gms/internal/fx$a;->uV:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/gms/internal/fx$a;->uW:F

    move/from16 v20, v0

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v20}, Lcom/google/android/gms/internal/fx;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/av;Lcom/google/android/gms/internal/ay;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/hg;Landroid/os/Bundle;ILjava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIF)V

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/fx;Landroid/os/Parcel;I)V

    return-void
.end method
