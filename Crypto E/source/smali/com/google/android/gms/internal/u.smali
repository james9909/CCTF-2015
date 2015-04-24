.class public Lcom/google/android/gms/internal/u;
.super Lcom/google/android/gms/internal/bd$a;

# interfaces
.implements Lcom/google/android/gms/internal/ac;
.implements Lcom/google/android/gms/internal/cf;
.implements Lcom/google/android/gms/internal/ci;
.implements Lcom/google/android/gms/internal/ck;
.implements Lcom/google/android/gms/internal/cx;
.implements Lcom/google/android/gms/internal/ds;
.implements Lcom/google/android/gms/internal/dz;
.implements Lcom/google/android/gms/internal/ec;
.implements Lcom/google/android/gms/internal/et;
.implements Lcom/google/android/gms/internal/fl$a;
.implements Lcom/google/android/gms/internal/fs$a;
.implements Lcom/google/android/gms/internal/gr;
.implements Lcom/google/android/gms/internal/t;
.implements Lcom/google/android/gms/internal/w;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/u$b;,
        Lcom/google/android/gms/internal/u$a;
    }
.end annotation


# instance fields
.field private ls:Lcom/google/android/gms/internal/av;

.field private final lt:Lcom/google/android/gms/internal/dd;

.field private final lu:Lcom/google/android/gms/internal/u$b;

.field private final lv:Lcom/google/android/gms/internal/aa;

.field private final lw:Lcom/google/android/gms/internal/ae;

.field private lx:Z

.field private final ly:Landroid/content/ComponentCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ay;Ljava/lang/String;Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/internal/hg;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/u$b;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/u$b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ay;Ljava/lang/String;Lcom/google/android/gms/internal/hg;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p4, v1}, Lcom/google/android/gms/internal/u;-><init>(Lcom/google/android/gms/internal/u$b;Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/internal/aa;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/br;->j(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/u$b;Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/internal/aa;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/bd$a;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/u$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/u$1;-><init>(Lcom/google/android/gms/internal/u;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/u;->ly:Landroid/content/ComponentCallbacks;

    iput-object p1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iput-object p2, p0, Lcom/google/android/gms/internal/u;->lt:Lcom/google/android/gms/internal/dd;

    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/internal/u;->lv:Lcom/google/android/gms/internal/aa;

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gx;->r(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lH:Lcom/google/android/gms/internal/hg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gp;->b(Landroid/content/Context;Lcom/google/android/gms/internal/hg;)V

    invoke-static {}, Lcom/google/android/gms/internal/gp;->dl()Lcom/google/android/gms/internal/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gp;->dx()Lcom/google/android/gms/internal/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/u;->lw:Lcom/google/android/gms/internal/ae;

    invoke-direct {p0}, Lcom/google/android/gms/internal/u;->ab()V

    return-void

    :cond_0
    new-instance p3, Lcom/google/android/gms/internal/aa;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/aa;-><init>(Lcom/google/android/gms/internal/u;)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/internal/av;Landroid/os/Bundle;)Lcom/google/android/gms/internal/fx$a;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ay;->oA:Z

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/u$a;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/u$a;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v4, v1, v2

    const/4 v2, 0x1

    aget v5, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/u$a;->getWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/u$a;->getHeight()I

    move-result v9

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/u$a;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int v2, v4, v8

    if-lez v2, :cond_0

    add-int v2, v5, v9

    if-lez v2, :cond_0

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v4, v2, :cond_0

    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v5, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    const/4 v10, 0x5

    invoke-direct {v2, v10}, Landroid/os/Bundle;-><init>(I)V

    const-string v10, "x"

    invoke-virtual {v2, v10, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "y"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "width"

    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "height"

    invoke-virtual {v2, v4, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "visible"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/gp;->dn()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    new-instance v4, Lcom/google/android/gms/internal/go;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v5, v5, Lcom/google/android/gms/internal/u$b;->lE:Ljava/lang/String;

    invoke-direct {v4, v8, v5}, Lcom/google/android/gms/internal/go;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/google/android/gms/internal/u$b;->lO:Lcom/google/android/gms/internal/go;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lO:Lcom/google/android/gms/internal/go;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/go;->e(Lcom/google/android/gms/internal/av;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-static {v1, v0, v8}, Lcom/google/android/gms/internal/gp;->a(Landroid/content/Context;Lcom/google/android/gms/internal/gr;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    new-instance v1, Lcom/google/android/gms/internal/fx$a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v4, v4, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v5, v5, Lcom/google/android/gms/internal/u$b;->lE:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/gp;->wX:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v10, v10, Lcom/google/android/gms/internal/u$b;->lH:Lcom/google/android/gms/internal/hg;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v12, v12, Lcom/google/android/gms/internal/u$b;->lV:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/gp;->dt()Z

    move-result v14

    new-instance v15, Landroid/os/Messenger;

    new-instance v13, Lcom/google/android/gms/internal/eh;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lcom/google/android/gms/internal/eh;-><init>(Landroid/content/Context;)V

    invoke-direct {v15, v13}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    move-object/from16 v3, p1

    move-object/from16 v13, p2

    invoke-direct/range {v1 .. v18}, Lcom/google/android/gms/internal/fx$a;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/av;Lcom/google/android/gms/internal/ay;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/hg;Landroid/os/Bundle;Ljava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIF)V

    return-object v1

    :catch_0
    move-exception v1

    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method private a(Lcom/google/android/gms/internal/v;)Lcom/google/android/gms/internal/hk;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ay;->oA:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aH()Lcom/google/android/gms/internal/hm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v5, v5, Lcom/google/android/gms/internal/u$b;->lG:Lcom/google/android/gms/internal/k;

    iget-object v6, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v6, v6, Lcom/google/android/gms/internal/u$b;->lH:Lcom/google/android/gms/internal/hg;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/hm;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ay;ZZLcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/hg;)Lcom/google/android/gms/internal/hk;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p0

    move-object v4, p0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/cf;Lcom/google/android/gms/internal/ec;ZLcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/ck;Lcom/google/android/gms/internal/v;Lcom/google/android/gms/internal/ds;)V

    :goto_0
    return-object v10

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/u$a;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/hk;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/hk;

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/hk;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ay;)V

    move-object v10, v0

    :goto_1
    invoke-interface {v10}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v6, p0

    move-object v8, p1

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/cf;Lcom/google/android/gms/internal/ec;ZLcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/ck;Lcom/google/android/gms/internal/v;Lcom/google/android/gms/internal/ds;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/u$a;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ab;->aH()Lcom/google/android/gms/internal/hm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v5, v5, Lcom/google/android/gms/internal/u$b;->lG:Lcom/google/android/gms/internal/k;

    iget-object v6, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v6, v6, Lcom/google/android/gms/internal/u$b;->lH:Lcom/google/android/gms/internal/hg;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/hm;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ay;ZZLcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/hg;)Lcom/google/android/gms/internal/hk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iget-object v1, v1, Lcom/google/android/gms/internal/ay;->oB:[Lcom/google/android/gms/internal/ay;

    if-nez v1, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/u;->c(Landroid/view/View;)V

    :cond_3
    move-object v10, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/u;)Lcom/google/android/gms/internal/u$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lI:Lcom/google/android/gms/internal/bc;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lI:Lcom/google/android/gms/internal/bc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bc;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hf;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private ab()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aL()Lcom/google/android/gms/internal/gy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->ly:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gy;->a(Landroid/content/Context;Landroid/content/ComponentCallbacks;)Z

    :cond_0
    return-void
.end method

.method private ac()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aL()Lcom/google/android/gms/internal/gy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->ly:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gy;->b(Landroid/content/Context;Landroid/content/ComponentCallbacks;)Z

    :cond_0
    return-void
.end method

.method private an()V
    .locals 2

    const-string v0, "Ad closing."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->V(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lI:Lcom/google/android/gms/internal/bc;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lI:Lcom/google/android/gms/internal/bc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bc;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdClosed()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hf;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private ao()V
    .locals 2

    const-string v0, "Ad leaving application."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->V(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lI:Lcom/google/android/gms/internal/bc;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lI:Lcom/google/android/gms/internal/bc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bc;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdLeftApplication()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hf;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private ap()V
    .locals 2

    const-string v0, "Ad opening."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->V(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lI:Lcom/google/android/gms/internal/bc;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lI:Lcom/google/android/gms/internal/bc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bc;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdOpened()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hf;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private aq()V
    .locals 2

    const-string v0, "Ad finished loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->V(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lI:Lcom/google/android/gms/internal/bc;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lI:Lcom/google/android/gms/internal/bc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bc;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hf;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private ar()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->wH:Lcom/google/android/gms/internal/bz$a;

    instance-of v0, v0, Lcom/google/android/gms/internal/bx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lS:Lcom/google/android/gms/internal/cc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v0, Lcom/google/android/gms/internal/u$b;->lS:Lcom/google/android/gms/internal/cc;

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->wH:Lcom/google/android/gms/internal/bz$a;

    check-cast v0, Lcom/google/android/gms/internal/bx;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/cc;->a(Lcom/google/android/gms/internal/ca;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hf;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private as()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->wH:Lcom/google/android/gms/internal/bz$a;

    instance-of v0, v0, Lcom/google/android/gms/internal/by;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lT:Lcom/google/android/gms/internal/cd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v0, Lcom/google/android/gms/internal/u$b;->lT:Lcom/google/android/gms/internal/cd;

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->wH:Lcom/google/android/gms/internal/bz$a;

    check-cast v0, Lcom/google/android/gms/internal/by;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/cd;->a(Lcom/google/android/gms/internal/cb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call OnContentAdLoadedListener.onContentAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hf;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private au()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget v0, v0, Lcom/google/android/gms/internal/u$b;->lZ:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/u$b;->aw()V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/u$b;->mb:Z

    :cond_0
    return-void
.end method

.method private b(Lcom/google/android/gms/internal/gn;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/gn;->uZ:Z

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/gn;->rq:Lcom/google/android/gms/internal/de;

    invoke-interface {v0}, Lcom/google/android/gms/internal/de;->getView()Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->f(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v3, v3, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/u$a;->getNextView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v4, v4, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/u$a;->removeView(Landroid/view/View;)V

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/u;->c(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/u$a;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/u$a;->showNext()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/u$a;->getNextView()Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/hk;

    if-eqz v3, :cond_6

    check-cast v0, Lcom/google/android/gms/internal/hk;

    iget-object v3, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v3, v3, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v4, v4, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/hk;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ay;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/u$b;->ay()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/u$a;->setVisibility(I)V

    move v0, v2

    :goto_2
    return v0

    :catch_0
    move-exception v0

    const-string v2, "Could not get View from mediation adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/hf;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v2, "Could not add mediation view to view hierarchy."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/hf;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_2

    :cond_5
    iget-object v0, p1, Lcom/google/android/gms/internal/gn;->wE:Lcom/google/android/gms/internal/ay;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    iget-object v3, p1, Lcom/google/android/gms/internal/gn;->wE:Lcom/google/android/gms/internal/ay;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/hk;->a(Lcom/google/android/gms/internal/ay;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/u$a;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    iget-object v3, p1, Lcom/google/android/gms/internal/gn;->wE:Lcom/google/android/gms/internal/ay;

    iget v3, v3, Lcom/google/android/gms/internal/ay;->widthPixels:I

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/u$a;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    iget-object v3, p1, Lcom/google/android/gms/internal/gn;->wE:Lcom/google/android/gms/internal/ay;

    iget v3, v3, Lcom/google/android/gms/internal/ay;->heightPixels:I

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/u$a;->setMinimumHeight(I)V

    iget-object v0, p1, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/u;->c(Landroid/view/View;)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v3, v3, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/u$a;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private d(Z)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-nez v0, :cond_1

    const-string v0, "Ad state was null when trying to ping impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Pinging Impression URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lO:Lcom/google/android/gms/internal/go;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/go;->df()V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->qY:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lH:Lcom/google/android/gms/internal/hg;

    iget-object v2, v2, Lcom/google/android/gms/internal/hg;->xP:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v3, v3, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v3, v3, Lcom/google/android/gms/internal/gn;->qY:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->wD:Lcom/google/android/gms/internal/cw;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->wD:Lcom/google/android/gms/internal/cw;

    iget-object v0, v0, Lcom/google/android/gms/internal/cw;->qY:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aK()Lcom/google/android/gms/internal/db;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lH:Lcom/google/android/gms/internal/hg;

    iget-object v2, v2, Lcom/google/android/gms/internal/hg;->xP:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v3, v3, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v4, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v4, v4, Lcom/google/android/gms/internal/u$b;->lE:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v5, v5, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v5, v5, Lcom/google/android/gms/internal/gn;->wD:Lcom/google/android/gms/internal/cw;

    iget-object v6, v5, Lcom/google/android/gms/internal/cw;->qY:Ljava/util/List;

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/db;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gn;Ljava/lang/String;ZLjava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->rp:Lcom/google/android/gms/internal/cv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->rp:Lcom/google/android/gms/internal/cv;

    iget-object v0, v0, Lcom/google/android/gms/internal/cv;->qT:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aK()Lcom/google/android/gms/internal/db;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lH:Lcom/google/android/gms/internal/hg;

    iget-object v2, v2, Lcom/google/android/gms/internal/hg;->xP:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v3, v3, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v4, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v4, v4, Lcom/google/android/gms/internal/u$b;->lE:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v5, v5, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v5, v5, Lcom/google/android/gms/internal/gn;->rp:Lcom/google/android/gms/internal/cv;

    iget-object v6, v5, Lcom/google/android/gms/internal/cv;->qT:Ljava/util/List;

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/db;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gn;Ljava/lang/String;ZLjava/util/List;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public Z()Lcom/google/android/gms/dynamic/d;
    .locals 1

    const-string v0, "getAdFrame must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->bb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->n(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/google/android/gms/internal/an;)Landroid/os/Bundle;
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/an;->bm()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/an;->wakeup()V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/an;->bk()Lcom/google/android/gms/internal/ak;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ak;->bb()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In AdManger: loadAd, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    :goto_1
    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v5}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "fingerprint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "v"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public a(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lI:Lcom/google/android/gms/internal/bc;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lI:Lcom/google/android/gms/internal/bc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bc;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not call onAdResized."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/internal/af;Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "isVisible"

    if-eqz p2, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    const-string v2, "onAdVisibilityChanged"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/hk;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/internal/ay;)V
    .locals 2

    const-string v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->bb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iput-object p1, v0, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget v0, v0, Lcom/google/android/gms/internal/u$b;->lZ:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hk;->a(Lcom/google/android/gms/internal/ay;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/u$a;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/u$a;->getNextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/u$a;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    iget v1, p1, Lcom/google/android/gms/internal/ay;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/u$a;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    iget v1, p1, Lcom/google/android/gms/internal/ay;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/u$a;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/u$a;->requestLayout()V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/bc;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->bb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iput-object p1, v0, Lcom/google/android/gms/internal/u$b;->lI:Lcom/google/android/gms/internal/bc;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/bf;)V
    .locals 1

    const-string v0, "setAppEventListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->bb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iput-object p1, v0, Lcom/google/android/gms/internal/u$b;->lP:Lcom/google/android/gms/internal/bf;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/bv;)V
    .locals 1

    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->bb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iput-object p1, v0, Lcom/google/android/gms/internal/u$b;->lU:Lcom/google/android/gms/internal/bv;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/ex;)V
    .locals 1

    const-string v0, "setInAppPurchaseListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->bb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iput-object p1, v0, Lcom/google/android/gms/internal/u$b;->lR:Lcom/google/android/gms/internal/ex;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/fb;Ljava/lang/String;)V
    .locals 4

    const-string v0, "setPlayStorePurchaseParams must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->bb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    new-instance v1, Lcom/google/android/gms/internal/eu;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/eu;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/u$b;->lW:Lcom/google/android/gms/internal/eu;

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iput-object p1, v0, Lcom/google/android/gms/internal/u$b;->lQ:Lcom/google/android/gms/internal/fb;

    invoke-static {}, Lcom/google/android/gms/internal/gp;->dr()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/em;

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lQ:Lcom/google/android/gms/internal/fb;

    iget-object v3, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v3, v3, Lcom/google/android/gms/internal/u$b;->lW:Lcom/google/android/gms/internal/eu;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/em;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/fb;Lcom/google/android/gms/internal/eu;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/em;->start()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/internal/gn$a;)V
    .locals 10

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iput-object v3, v0, Lcom/google/android/gms/internal/u$b;->lJ:Lcom/google/android/gms/internal/gu;

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iput-object p1, v0, Lcom/google/android/gms/internal/u$b;->lN:Lcom/google/android/gms/internal/gn$a;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/u;->a(Ljava/util/List;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/gn$a;->wJ:Lcom/google/android/gms/internal/fz;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/fz;->vj:Z

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/v;

    invoke-direct {v0}, Lcom/google/android/gms/internal/v;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/v;)Lcom/google/android/gms/internal/hk;

    move-result-object v2

    new-instance v1, Lcom/google/android/gms/internal/v$b;

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/v$b;-><init>(Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/hk;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/v;->a(Lcom/google/android/gms/internal/v$a;)V

    new-instance v1, Lcom/google/android/gms/internal/u$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/u$2;-><init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/v;)V

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/hk;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/google/android/gms/internal/u$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/u$3;-><init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/v;)V

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/hk;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v0, p1, Lcom/google/android/gms/internal/gn$a;->lL:Lcom/google/android/gms/internal/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, p1, Lcom/google/android/gms/internal/gn$a;->lL:Lcom/google/android/gms/internal/ay;

    iput-object v1, v0, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/gn$a;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/gn;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/cv;Lcom/google/android/gms/internal/de;Ljava/lang/String;Lcom/google/android/gms/internal/cy;Lcom/google/android/gms/internal/bz$a;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/gn;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/gn$a;->wJ:Lcom/google/android/gms/internal/fz;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/fz;->uZ:Z

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/gn$a;->wJ:Lcom/google/android/gms/internal/fz;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/fz;->vi:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/gn$a;->wJ:Lcom/google/android/gms/internal/fz;

    iget-object v0, v0, Lcom/google/android/gms/internal/fz;->sT:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/gn$a;->wJ:Lcom/google/android/gms/internal/fz;

    iget-object v0, v0, Lcom/google/android/gms/internal/fz;->sT:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/bs;

    iget-object v1, p1, Lcom/google/android/gms/internal/gn$a;->wJ:Lcom/google/android/gms/internal/fz;

    iget-object v1, v1, Lcom/google/android/gms/internal/fz;->uX:Ljava/lang/String;

    invoke-direct {v0, p0, v3, v1}, Lcom/google/android/gms/internal/bs;-><init>(Lcom/google/android/gms/internal/w;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lU:Lcom/google/android/gms/internal/bv;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    const/4 v3, 0x1

    iput v3, v1, Lcom/google/android/gms/internal/u$b;->lZ:I

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lU:Lcom/google/android/gms/internal/bv;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/bv;->a(Lcom/google/android/gms/internal/bu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Could not call the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hf;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/u$b;->lZ:I

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aF()Lcom/google/android/gms/internal/fl;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v4, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v8, p0, Lcom/google/android/gms/internal/u;->lt:Lcom/google/android/gms/internal/dd;

    move-object v5, p0

    move-object v6, p1

    move-object v7, v2

    move-object v9, p0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/fl;->a(Landroid/content/Context;Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/internal/fl$a;)Lcom/google/android/gms/internal/gu;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/u$b;->lK:Lcom/google/android/gms/internal/gu;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdRenderer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lK:Lcom/google/android/gms/internal/gu;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    move-object v2, v3

    goto/16 :goto_0
.end method

.method public a(Lcom/google/android/gms/internal/gn;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v2, 0x3

    const/4 v8, -0x2

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iput-object v9, v0, Lcom/google/android/gms/internal/u$b;->lK:Lcom/google/android/gms/internal/gu;

    iget-object v0, p1, Lcom/google/android/gms/internal/gn;->wH:Lcom/google/android/gms/internal/bz$a;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v7, v0

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/gn;->errorCode:I

    if-eq v0, v8, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/gn;->errorCode:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/u$b;->av()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gp;->b(Ljava/util/HashSet;)V

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/gn;->errorCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v7, v5

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/gn;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Ad refresh scheduled."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    :cond_4
    iget v0, p1, Lcom/google/android/gms/internal/gn;->errorCode:I

    if-ne v0, v2, :cond_5

    iget-object v0, p1, Lcom/google/android/gms/internal/gn;->wD:Lcom/google/android/gms/internal/cw;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/android/gms/internal/gn;->wD:Lcom/google/android/gms/internal/cw;

    iget-object v0, v0, Lcom/google/android/gms/internal/cw;->qZ:Ljava/util/List;

    if-eqz v0, :cond_5

    const-string v0, "Pinging no fill URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aK()Lcom/google/android/gms/internal/db;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lH:Lcom/google/android/gms/internal/hg;

    iget-object v2, v2, Lcom/google/android/gms/internal/hg;->xP:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v4, v3, Lcom/google/android/gms/internal/u$b;->lE:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/gn;->wD:Lcom/google/android/gms/internal/cw;

    iget-object v6, v3, Lcom/google/android/gms/internal/cw;->qZ:Ljava/util/List;

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/db;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gn;Ljava/lang/String;ZLjava/util/List;)V

    :cond_5
    iget v0, p1, Lcom/google/android/gms/internal/gn;->errorCode:I

    if-eq v0, v8, :cond_6

    iget v0, p1, Lcom/google/android/gms/internal/gn;->errorCode:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/u;->a(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ay;->oA:Z

    if-nez v0, :cond_8

    if-nez v7, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget v0, v0, Lcom/google/android/gms/internal/u$b;->lZ:I

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/u;->b(Lcom/google/android/gms/internal/gn;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/u;->a(I)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/u$a;->a(Lcom/google/android/gms/internal/u$a;)Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/gn;->ve:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hb;->R(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->rs:Lcom/google/android/gms/internal/cy;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->rs:Lcom/google/android/gms/internal/cy;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/cy;->a(Lcom/google/android/gms/internal/cx;)V

    :cond_9
    iget-object v0, p1, Lcom/google/android/gms/internal/gn;->rs:Lcom/google/android/gms/internal/cy;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/internal/gn;->rs:Lcom/google/android/gms/internal/cy;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/cy;->a(Lcom/google/android/gms/internal/cx;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lw:Lcom/google/android/gms/internal/ae;

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ae;->d(Lcom/google/android/gms/internal/gn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iput-object p1, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lO:Lcom/google/android/gms/internal/go;

    iget-wide v2, p1, Lcom/google/android/gms/internal/gn;->wF:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/go;->i(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lO:Lcom/google/android/gms/internal/go;

    iget-wide v2, p1, Lcom/google/android/gms/internal/gn;->wG:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/go;->j(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lO:Lcom/google/android/gms/internal/go;

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ay;->oA:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/go;->w(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lO:Lcom/google/android/gms/internal/go;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/gn;->uZ:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/go;->x(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ay;->oA:Z

    if-nez v0, :cond_b

    if-nez v7, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget v0, v0, Lcom/google/android/gms/internal/u$b;->lZ:I

    if-nez v0, :cond_b

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/u;->d(Z)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lX:Lcom/google/android/gms/internal/gs;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    new-instance v1, Lcom/google/android/gms/internal/gs;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lE:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/gs;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/u$b;->lX:Lcom/google/android/gms/internal/gs;

    :cond_c
    iget-object v0, p1, Lcom/google/android/gms/internal/gn;->wD:Lcom/google/android/gms/internal/cw;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/google/android/gms/internal/gn;->wD:Lcom/google/android/gms/internal/cw;

    iget v1, v0, Lcom/google/android/gms/internal/cw;->rc:I

    iget-object v0, p1, Lcom/google/android/gms/internal/gn;->wD:Lcom/google/android/gms/internal/cw;

    iget v0, v0, Lcom/google/android/gms/internal/cw;->rd:I

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lX:Lcom/google/android/gms/internal/gs;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/gs;->e(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget v0, v0, Lcom/google/android/gms/internal/u$b;->lZ:I

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ay;->oA:Z

    if-nez v0, :cond_e

    iget-object v0, p1, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hl;->dT()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/google/android/gms/internal/gn;->wC:Lorg/json/JSONObject;

    if-eqz v0, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lw:Lcom/google/android/gms/internal/ae;

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/gn;)Lcom/google/android/gms/internal/af;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hl;->dT()Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/af;->a(Lcom/google/android/gms/internal/ac;)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->ci()V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hl;->dU()V

    :cond_f
    if-eqz v7, :cond_10

    iget-object v0, p1, Lcom/google/android/gms/internal/gn;->wH:Lcom/google/android/gms/internal/bz$a;

    instance-of v1, v0, Lcom/google/android/gms/internal/by;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lT:Lcom/google/android/gms/internal/cd;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/internal/u;->as()V

    :cond_10
    :goto_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/u;->aq()V

    goto/16 :goto_1

    :cond_11
    instance-of v0, v0, Lcom/google/android/gms/internal/bx;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lS:Lcom/google/android/gms/internal/cc;

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/google/android/gms/internal/u;->ar()V

    goto :goto_3

    :cond_12
    const-string v0, "No matching listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/u;->a(I)V

    goto/16 :goto_1

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lY:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/gn;->wC:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lw:Lcom/google/android/gms/internal/ae;

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v3, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v3, v3, Lcom/google/android/gms/internal/u$b;->lY:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/gn;Landroid/view/View;)Lcom/google/android/gms/internal/af;

    goto/16 :goto_1

    :cond_14
    move v0, v5

    move v1, v5

    goto/16 :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/en;

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lH:Lcom/google/android/gms/internal/hg;

    iget-object v2, v2, Lcom/google/android/gms/internal/hg;->xP:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/en;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lR:Lcom/google/android/gms/internal/ex;

    if-nez v1, :cond_5

    const-string v1, "InAppPurchaseListener is not set. Try to launch default purchase flow."

    invoke-static {v1}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Google Play Service unavailable, cannot launch default purchase flow."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lQ:Lcom/google/android/gms/internal/fb;

    if-nez v1, :cond_1

    const-string v0, "PlayStorePurchaseListener is not set."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lW:Lcom/google/android/gms/internal/eu;

    if-nez v1, :cond_2

    const-string v0, "PlayStorePurchaseVerifier is not initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/u$b;->ma:Z

    if-eqz v1, :cond_3

    const-string v0, "An in-app purchase request is already in progress, abort"

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/internal/u$b;->ma:Z

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lQ:Lcom/google/android/gms/internal/fb;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/fb;->isValidPurchase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/u$b;->ma:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Could not start In-App purchase."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iput-boolean v3, v0, Lcom/google/android/gms/internal/u$b;->ma:Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lH:Lcom/google/android/gms/internal/hg;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/hg;->xS:Z

    new-instance v3, Lcom/google/android/gms/internal/ek;

    iget-object v4, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v4, v4, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v5, v5, Lcom/google/android/gms/internal/u$b;->lW:Lcom/google/android/gms/internal/eu;

    invoke-direct {v3, v4, v5, v0, p0}, Lcom/google/android/gms/internal/ek;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/eu;Lcom/google/android/gms/internal/ew;Lcom/google/android/gms/internal/et;)V

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/eo;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/ek;)V

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lR:Lcom/google/android/gms/internal/ex;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ex;->a(Lcom/google/android/gms/internal/ew;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "Could not start In-App purchase."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/ep;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lQ:Lcom/google/android/gms/internal/fb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v7, v0, Lcom/google/android/gms/internal/u$b;->lQ:Lcom/google/android/gms/internal/fb;

    new-instance v0, Lcom/google/android/gms/internal/eq;

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/eq;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/ep;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/fb;->a(Lcom/google/android/gms/internal/fa;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/he;->xO:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/u$4;

    invoke-direct {v1, p0, p4}, Lcom/google/android/gms/internal/u$4;-><init>(Lcom/google/android/gms/internal/u;Landroid/content/Intent;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    const-string v0, "Fail to invoke PlayStorePurchaseListener."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/go;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/u$b;->a(Ljava/util/HashSet;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->bb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iput-object p1, v0, Lcom/google/android/gms/internal/u$b;->lV:Ljava/util/List;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/av;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "loadAd must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/s;->bb(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lJ:Lcom/google/android/gms/internal/gu;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lK:Lcom/google/android/gms/internal/gu;

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/u;->ls:Lcom/google/android/gms/internal/av;

    if-eqz v1, :cond_1

    const-string v1, "Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes."

    invoke-static {v1}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/u;->ls:Lcom/google/android/gms/internal/av;

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ay;->oA:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-eqz v1, :cond_4

    const-string v1, "An interstitial is already loading. Aborting."

    invoke-static {v1}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/u;->at()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Starting ad request."

    invoke-static {v1}, Lcom/google/android/gms/internal/hf;->V(Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/google/android/gms/internal/av;->oq:Z

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use AdRequest.Builder.addTestDevice(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/he;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\") to get test ads on this device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/hf;->V(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/gp;->dl()Lcom/google/android/gms/internal/gp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gp;->m(Landroid/content/Context;)Lcom/google/android/gms/internal/an;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/an;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lv:Lcom/google/android/gms/internal/aa;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aa;->cancel()V

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iput v0, v2, Lcom/google/android/gms/internal/u$b;->lZ:I

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/av;Landroid/os/Bundle;)Lcom/google/android/gms/internal/fx$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aE()Lcom/google/android/gms/internal/fs;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v3, v3, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v4, v4, Lcom/google/android/gms/internal/u$b;->lG:Lcom/google/android/gms/internal/k;

    invoke-virtual {v2, v3, v0, v4, p0}, Lcom/google/android/gms/internal/fs;->a(Landroid/content/Context;Lcom/google/android/gms/internal/fx$a;Lcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/fs$a;)Lcom/google/android/gms/internal/gu;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/u$b;->lJ:Lcom/google/android/gms/internal/gu;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/google/android/gms/internal/gn;Z)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->ls:Lcom/google/android/gms/internal/av;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->ls:Lcom/google/android/gms/internal/av;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/u;->ls:Lcom/google/android/gms/internal/av;

    :cond_0
    :goto_0
    or-int/2addr v0, p2

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ay;->oA:Z

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget v0, v0, Lcom/google/android/gms/internal/u$b;->lZ:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aL()Lcom/google/android/gms/internal/gy;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gy;->a(Landroid/webkit/WebView;)Z

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lv:Lcom/google/android/gms/internal/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aa;->aC()Z

    move-result v0

    return v0

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/gn;->uK:Lcom/google/android/gms/internal/av;

    iget-object v2, v1, Lcom/google/android/gms/internal/av;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/av;->extras:Landroid/os/Bundle;

    const-string v3, "_noRefresh"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_3
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget v0, v0, Lcom/google/android/gms/internal/u$b;->lZ:I

    if-nez v0, :cond_1

    iget-wide v2, p1, Lcom/google/android/gms/internal/gn;->rb:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lv:Lcom/google/android/gms/internal/aa;

    iget-wide v2, p1, Lcom/google/android/gms/internal/gn;->rb:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/internal/av;J)V

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/internal/gn;->wD:Lcom/google/android/gms/internal/cw;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/android/gms/internal/gn;->wD:Lcom/google/android/gms/internal/cw;

    iget-wide v2, v0, Lcom/google/android/gms/internal/cw;->rb:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lv:Lcom/google/android/gms/internal/aa;

    iget-object v2, p1, Lcom/google/android/gms/internal/gn;->wD:Lcom/google/android/gms/internal/cw;

    iget-wide v2, v2, Lcom/google/android/gms/internal/cw;->rb:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/internal/av;J)V

    goto :goto_1

    :cond_5
    iget-boolean v0, p1, Lcom/google/android/gms/internal/gn;->uZ:Z

    if-nez v0, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/gn;->errorCode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lv:Lcom/google/android/gms/internal/aa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aa;->c(Lcom/google/android/gms/internal/av;)V

    goto :goto_1
.end method

.method public aa()Lcom/google/android/gms/internal/ay;
    .locals 1

    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->bb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    return-object v0
.end method

.method public ad()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/u;->ao()V

    return-void
.end method

.method public ae()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lw:Lcom/google/android/gms/internal/ae;

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ae;->d(Lcom/google/android/gms/internal/gn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ay;->oA:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/u;->au()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/u;->lx:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/u;->an()V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lO:Lcom/google/android/gms/internal/go;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/go;->dh()V

    return-void
.end method

.method public af()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ay;->oA:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/u;->d(Z)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/u;->lx:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/u;->ap()V

    return-void
.end method

.method public ag()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/u;->onAdClicked()V

    return-void
.end method

.method public ah()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/u;->ae()V

    return-void
.end method

.method public ai()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/u;->ad()V

    return-void
.end method

.method public aj()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/u;->af()V

    return-void
.end method

.method public ak()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mediation adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v1, v1, Lcom/google/android/gms/internal/gn;->rr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " refreshed, but mediation adapters should never refresh."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/u;->d(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/u;->aq()V

    return-void
.end method

.method public al()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lI:Lcom/google/android/gms/internal/bc;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lI:Lcom/google/android/gms/internal/bc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bc;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not call onAdCollapsed."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public am()V
    .locals 4

    const-string v0, "recordManualImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->bb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-nez v0, :cond_1

    const-string v0, "Ad state was null when trying to ping manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Pinging manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->vb:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lH:Lcom/google/android/gms/internal/hg;

    iget-object v2, v2, Lcom/google/android/gms/internal/hg;->xP:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v3, v3, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v3, v3, Lcom/google/android/gms/internal/gn;->vb:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public at()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v3, v3, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v4, v4, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.permission.INTERNET"

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/gx;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ay;->oA:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    const-string v3, "Missing internet permission in AndroidManifest.xml."

    const-string v4, "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/internal/he;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ay;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v3, v3, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gx;->q(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ay;->oA:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    const-string v3, "Missing AdActivity with android:configChanges in AndroidManifest.xml."

    const-string v4, "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />"

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/internal/he;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ay;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v0, v1

    :cond_3
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ay;->oA:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/u$a;->setVisibility(I)V

    :cond_4
    return v0
.end method

.method public b(Landroid/view/View;)V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iput-object p1, v0, Lcom/google/android/gms/internal/u$b;->lY:Landroid/view/View;

    new-instance v0, Lcom/google/android/gms/internal/gn;

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lN:Lcom/google/android/gms/internal/gn$a;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/cv;Lcom/google/android/gms/internal/de;Ljava/lang/String;Lcom/google/android/gms/internal/cy;Lcom/google/android/gms/internal/bz$a;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/gn;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/av;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/u$a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gx;->dB()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/u;->lx:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/av;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "Ad is not visible. Not refreshing ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->V(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lv:Lcom/google/android/gms/internal/aa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aa;->c(Lcom/google/android/gms/internal/av;)V

    goto :goto_0
.end method

.method protected c(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/u$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iput-boolean p1, v0, Lcom/google/android/gms/internal/u$b;->mb:Z

    return-void
.end method

.method public destroy()V
    .locals 2

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->bb(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/u;->ac()V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lv:Lcom/google/android/gms/internal/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aa;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lw:Lcom/google/android/gms/internal/ae;

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ae;->e(Lcom/google/android/gms/internal/gn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/u$b;->destroy()V

    return-void
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->rr:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->bb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lJ:Lcom/google/android/gms/internal/gu;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lK:Lcom/google/android/gms/internal/gu;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdClicked()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/u;->recordClick()V

    return-void
.end method

.method public onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lP:Lcom/google/android/gms/internal/bf;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lP:Lcom/google/android/gms/internal/bf;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/bf;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hf;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->bb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget v0, v0, Lcom/google/android/gms/internal/u$b;->lZ:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aL()Lcom/google/android/gms/internal/gy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v1, v1, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gy;->a(Landroid/webkit/WebView;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->rq:Lcom/google/android/gms/internal/de;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->rq:Lcom/google/android/gms/internal/de;

    invoke-interface {v0}, Lcom/google/android/gms/internal/de;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lw:Lcom/google/android/gms/internal/ae;

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ae;->f(Lcom/google/android/gms/internal/gn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lv:Lcom/google/android/gms/internal/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aa;->pause()V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not pause mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public recordClick()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-nez v0, :cond_1

    const-string v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Pinging click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lO:Lcom/google/android/gms/internal/go;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/go;->dg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->qX:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lH:Lcom/google/android/gms/internal/hg;

    iget-object v2, v2, Lcom/google/android/gms/internal/hg;->xP:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v3, v3, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v3, v3, Lcom/google/android/gms/internal/gn;->qX:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->wD:Lcom/google/android/gms/internal/cw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->wD:Lcom/google/android/gms/internal/cw;

    iget-object v0, v0, Lcom/google/android/gms/internal/cw;->qX:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aK()Lcom/google/android/gms/internal/db;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v2, v2, Lcom/google/android/gms/internal/u$b;->lH:Lcom/google/android/gms/internal/hg;

    iget-object v2, v2, Lcom/google/android/gms/internal/hg;->xP:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v3, v3, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v4, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v4, v4, Lcom/google/android/gms/internal/u$b;->lE:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v6, v6, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v6, v6, Lcom/google/android/gms/internal/gn;->wD:Lcom/google/android/gms/internal/cw;

    iget-object v6, v6, Lcom/google/android/gms/internal/cw;->qX:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/db;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/gn;Ljava/lang/String;ZLjava/util/List;)V

    goto :goto_0
.end method

.method public recordImpression()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/u;->d(Z)V

    return-void
.end method

.method public resume()V
    .locals 2

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->bb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget v0, v0, Lcom/google/android/gms/internal/u$b;->lZ:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aL()Lcom/google/android/gms/internal/gy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v1, v1, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gy;->b(Landroid/webkit/WebView;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->rq:Lcom/google/android/gms/internal/de;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->rq:Lcom/google/android/gms/internal/de;

    invoke-interface {v0}, Lcom/google/android/gms/internal/de;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lv:Lcom/google/android/gms/internal/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aa;->resume()V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lw:Lcom/google/android/gms/internal/ae;

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ae;->g(Lcom/google/android/gms/internal/gn;)V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not resume mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "showInterstitial must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->bb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ay;->oA:Z

    if-nez v0, :cond_1

    const-string v0, "Cannot call showInterstitial on a banner ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-nez v0, :cond_2

    const-string v0, "The interstitial has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget v0, v0, Lcom/google/android/gms/internal/u$b;->lZ:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dR()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "The interstitial is already showing."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hk;->z(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hl;->dT()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->wC:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lw:Lcom/google/android/gms/internal/ae;

    iget-object v3, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v3, v3, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iget-object v4, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v4, v4, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ae;->a(Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/gn;)Lcom/google/android/gms/internal/af;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v3, v3, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v3, v3, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v3}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/hl;->dT()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/af;->a(Lcom/google/android/gms/internal/ac;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/gn;->uZ:Z

    if-eqz v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->rq:Lcom/google/android/gms/internal/de;

    invoke-interface {v0}, Lcom/google/android/gms/internal/de;->showInterstitial()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hf;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/u;->au()V

    goto/16 :goto_0

    :cond_6
    new-instance v8, Lcom/google/android/gms/internal/y;

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/u$b;->mb:Z

    invoke-direct {v8, v0, v2}, Lcom/google/android/gms/internal/y;-><init>(ZZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_7

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_7

    new-instance v8, Lcom/google/android/gms/internal/y;

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-boolean v5, v0, Lcom/google/android/gms/internal/u$b;->mb:Z

    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    if-ne v0, v3, :cond_9

    move v0, v1

    :goto_1
    invoke-direct {v8, v5, v0}, Lcom/google/android/gms/internal/y;-><init>(ZZ)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->getRequestedOrientation()I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget v5, v0, Lcom/google/android/gms/internal/gn;->orientation:I

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/dy;

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v4, v1, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v6, v1, Lcom/google/android/gms/internal/u$b;->lH:Lcom/google/android/gms/internal/hg;

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v7, v1, Lcom/google/android/gms/internal/gn;->ve:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/dy;-><init>(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/ec;Lcom/google/android/gms/internal/hk;ILcom/google/android/gms/internal/hg;Ljava/lang/String;Lcom/google/android/gms/internal/y;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    iget-object v1, v1, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/dw;->a(Landroid/content/Context;Lcom/google/android/gms/internal/dy;)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_1
.end method

.method public stopLoading()V
    .locals 2

    const-string v0, "stopLoading must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->bb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u;->lu:Lcom/google/android/gms/internal/u$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/u$b;->e(Z)V

    return-void
.end method
