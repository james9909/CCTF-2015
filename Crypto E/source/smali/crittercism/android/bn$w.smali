.class public final Lcrittercism/android/bn$w;
.super Lcrittercism/android/bn$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "w"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcrittercism/android/bn$g;-><init>(I)V

    .line 580
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 583
    const-string v0, "wifi"

    return-object v0
.end method

.method public final bridge synthetic c()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 577
    invoke-super {p0}, Lcrittercism/android/bn$g;->c()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
