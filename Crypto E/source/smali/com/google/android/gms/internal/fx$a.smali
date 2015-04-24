.class public final Lcom/google/android/gms/internal/fx$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


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


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/av;Lcom/google/android/gms/internal/ay;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/hg;Landroid/os/Bundle;Ljava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIF)V
    .locals 2
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
            "Lcom/google/android/gms/internal/hg;",
            "Landroid/os/Bundle;",
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

    iput-object p1, p0, Lcom/google/android/gms/internal/fx$a;->uJ:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/google/android/gms/internal/fx$a;->uK:Lcom/google/android/gms/internal/av;

    iput-object p3, p0, Lcom/google/android/gms/internal/fx$a;->lL:Lcom/google/android/gms/internal/ay;

    iput-object p4, p0, Lcom/google/android/gms/internal/fx$a;->lE:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/fx$a;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p6, p0, Lcom/google/android/gms/internal/fx$a;->uL:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/fx$a;->uN:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/fx$a;->uO:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/fx$a;->lH:Lcom/google/android/gms/internal/hg;

    iput-object p10, p0, Lcom/google/android/gms/internal/fx$a;->uP:Landroid/os/Bundle;

    iput-boolean p13, p0, Lcom/google/android/gms/internal/fx$a;->uS:Z

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/fx$a;->uT:Landroid/os/Messenger;

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/internal/fx$a;->uU:I

    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/gms/internal/fx$a;->uV:I

    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/gms/internal/fx$a;->uW:F

    if-eqz p11, :cond_0

    invoke-interface {p11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/fx$a;->uQ:I

    iput-object p11, p0, Lcom/google/android/gms/internal/fx$a;->lV:Ljava/util/List;

    :goto_0
    iput-object p12, p0, Lcom/google/android/gms/internal/fx$a;->uR:Landroid/os/Bundle;

    return-void

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/fx$a;->uQ:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/fx$a;->lV:Ljava/util/List;

    goto :goto_0
.end method
