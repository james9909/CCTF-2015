.class public final Lcrittercism/android/bn$l;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/bm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field private a:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/bn$l;->a:Lorg/json/JSONArray;

    .line 371
    invoke-static {}, Lcrittercism/android/bn;->c()Lcrittercism/android/bc;

    .line 372
    invoke-static {}, Lcrittercism/android/bn;->d()Lcrittercism/android/bq;

    .line 374
    invoke-static {}, Lcrittercism/android/bn;->c()Lcrittercism/android/bc;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/bc;->a:Z

    if-eqz v0, :cond_0

    .line 375
    invoke-static {}, Lcrittercism/android/bn;->d()Lcrittercism/android/bq;

    move-result-object v0

    invoke-interface {v0}, Lcrittercism/android/bq;->a()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bn$l;->a:Lorg/json/JSONArray;

    .line 377
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    const-string v0, "logcat"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcrittercism/android/bn$l;->a:Lorg/json/JSONArray;

    return-object v0
.end method
