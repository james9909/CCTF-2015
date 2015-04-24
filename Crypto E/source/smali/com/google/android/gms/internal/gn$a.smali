.class public final Lcom/google/android/gms/internal/gn$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final errorCode:I

.field public final lL:Lcom/google/android/gms/internal/ay;

.field public final wC:Lorg/json/JSONObject;

.field public final wD:Lcom/google/android/gms/internal/cw;

.field public final wF:J

.field public final wG:J

.field public final wI:Lcom/google/android/gms/internal/fx;

.field public final wJ:Lcom/google/android/gms/internal/fz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/internal/cw;Lcom/google/android/gms/internal/ay;IJJLorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gn$a;->wI:Lcom/google/android/gms/internal/fx;

    iput-object p2, p0, Lcom/google/android/gms/internal/gn$a;->wJ:Lcom/google/android/gms/internal/fz;

    iput-object p3, p0, Lcom/google/android/gms/internal/gn$a;->wD:Lcom/google/android/gms/internal/cw;

    iput-object p4, p0, Lcom/google/android/gms/internal/gn$a;->lL:Lcom/google/android/gms/internal/ay;

    iput p5, p0, Lcom/google/android/gms/internal/gn$a;->errorCode:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/gn$a;->wF:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/gn$a;->wG:J

    iput-object p10, p0, Lcom/google/android/gms/internal/gn$a;->wC:Lorg/json/JSONObject;

    return-void
.end method
