.class public final Lcom/google/android/gms/internal/ad;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# instance fields
.field private final mH:Ljava/lang/String;

.field private final mI:Lorg/json/JSONObject;

.field private final mJ:Ljava/lang/String;

.field private final mK:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/hg;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/internal/hg;->xP:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ad;->mK:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ad;->mI:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/google/android/gms/internal/ad;->mJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ad;->mH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public aM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->mH:Ljava/lang/String;

    return-object v0
.end method

.method public aN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->mK:Ljava/lang/String;

    return-object v0
.end method

.method public aO()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->mI:Lorg/json/JSONObject;

    return-object v0
.end method

.method public aP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->mJ:Ljava/lang/String;

    return-object v0
.end method
