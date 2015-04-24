.class public final Lcom/google/android/gms/internal/gn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gn$a;
    }
.end annotation


# instance fields
.field public final errorCode:I

.field public final orientation:I

.field public final qX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final qY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final rb:J

.field public final rp:Lcom/google/android/gms/internal/cv;

.field public final rq:Lcom/google/android/gms/internal/de;

.field public final rr:Ljava/lang/String;

.field public final rs:Lcom/google/android/gms/internal/cy;

.field public final sR:Lcom/google/android/gms/internal/hk;

.field public final uK:Lcom/google/android/gms/internal/av;

.field public final uN:Ljava/lang/String;

.field public final uY:J

.field public final uZ:Z

.field public final va:J

.field public final vb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ve:Ljava/lang/String;

.field public final wC:Lorg/json/JSONObject;

.field public final wD:Lcom/google/android/gms/internal/cw;

.field public final wE:Lcom/google/android/gms/internal/ay;

.field public final wF:J

.field public final wG:J

.field public final wH:Lcom/google/android/gms/internal/bz$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/av;Lcom/google/android/gms/internal/hk;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/cv;Lcom/google/android/gms/internal/de;Ljava/lang/String;Lcom/google/android/gms/internal/cw;Lcom/google/android/gms/internal/cy;JLcom/google/android/gms/internal/ay;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/bz$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/av;",
            "Lcom/google/android/gms/internal/hk;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/cv;",
            "Lcom/google/android/gms/internal/de;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/cw;",
            "Lcom/google/android/gms/internal/cy;",
            "J",
            "Lcom/google/android/gms/internal/ay;",
            "JJJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/google/android/gms/internal/bz$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gn;->uK:Lcom/google/android/gms/internal/av;

    iput-object p2, p0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/gn;->qX:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/internal/gn;->errorCode:I

    if-eqz p5, :cond_1

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/internal/gn;->qY:Ljava/util/List;

    if-eqz p6, :cond_2

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/internal/gn;->vb:Ljava/util/List;

    iput p7, p0, Lcom/google/android/gms/internal/gn;->orientation:I

    iput-wide p8, p0, Lcom/google/android/gms/internal/gn;->rb:J

    iput-object p10, p0, Lcom/google/android/gms/internal/gn;->uN:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/internal/gn;->uZ:Z

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/gn;->rp:Lcom/google/android/gms/internal/cv;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/gn;->rq:Lcom/google/android/gms/internal/de;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/gn;->rr:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/gn;->wD:Lcom/google/android/gms/internal/cw;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/gn;->rs:Lcom/google/android/gms/internal/cy;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/gn;->va:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/gn;->wE:Lcom/google/android/gms/internal/ay;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/google/android/gms/internal/gn;->uY:J

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/google/android/gms/internal/gn;->wF:J

    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/google/android/gms/internal/gn;->wG:J

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/internal/gn;->ve:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/internal/gn;->wC:Lorg/json/JSONObject;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/gms/internal/gn;->wH:Lcom/google/android/gms/internal/bz$a;

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/cv;Lcom/google/android/gms/internal/de;Ljava/lang/String;Lcom/google/android/gms/internal/cy;Lcom/google/android/gms/internal/bz$a;)V
    .locals 31

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gn$a;->wI:Lcom/google/android/gms/internal/fx;

    iget-object v3, v2, Lcom/google/android/gms/internal/fx;->uK:Lcom/google/android/gms/internal/av;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gn$a;->wJ:Lcom/google/android/gms/internal/fz;

    iget-object v5, v2, Lcom/google/android/gms/internal/fz;->qX:Ljava/util/List;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/android/gms/internal/gn$a;->errorCode:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gn$a;->wJ:Lcom/google/android/gms/internal/fz;

    iget-object v7, v2, Lcom/google/android/gms/internal/fz;->qY:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gn$a;->wJ:Lcom/google/android/gms/internal/fz;

    iget-object v8, v2, Lcom/google/android/gms/internal/fz;->vb:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gn$a;->wJ:Lcom/google/android/gms/internal/fz;

    iget v9, v2, Lcom/google/android/gms/internal/fz;->orientation:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gn$a;->wJ:Lcom/google/android/gms/internal/fz;

    iget-wide v10, v2, Lcom/google/android/gms/internal/fz;->rb:J

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gn$a;->wI:Lcom/google/android/gms/internal/fx;

    iget-object v12, v2, Lcom/google/android/gms/internal/fx;->uN:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gn$a;->wJ:Lcom/google/android/gms/internal/fz;

    iget-boolean v13, v2, Lcom/google/android/gms/internal/fz;->uZ:Z

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/gn$a;->wD:Lcom/google/android/gms/internal/cw;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gn$a;->wJ:Lcom/google/android/gms/internal/fz;

    iget-wide v0, v2, Lcom/google/android/gms/internal/fz;->va:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/gn$a;->lL:Lcom/google/android/gms/internal/ay;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gn$a;->wJ:Lcom/google/android/gms/internal/fz;

    iget-wide v0, v2, Lcom/google/android/gms/internal/fz;->uY:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/internal/gn$a;->wF:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/internal/gn$a;->wG:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/gn$a;->wJ:Lcom/google/android/gms/internal/fz;

    iget-object v0, v2, Lcom/google/android/gms/internal/fz;->ve:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/gn$a;->wC:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v18, p6

    move-object/from16 v30, p7

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/av;Lcom/google/android/gms/internal/hk;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/cv;Lcom/google/android/gms/internal/de;Ljava/lang/String;Lcom/google/android/gms/internal/cw;Lcom/google/android/gms/internal/cy;JLcom/google/android/gms/internal/ay;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/bz$a;)V

    return-void
.end method
