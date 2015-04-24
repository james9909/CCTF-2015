.class public Lcom/snapchat/android/cash/CashAuthToken;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expires_at"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/cash/CashAuthToken;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(J)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-virtual {p0}, Lcom/snapchat/android/cash/CashAuthToken;->b()Ljava/lang/String;

    move-result-object v2

    .line 61
    if-nez v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    :try_start_0
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1, v2}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->x_()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 69
    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    new-instance v3, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v4, "Malformed expiration dateTime"

    invoke-direct {v3, v4}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v1

    const-string v3, "dateTime"

    invoke-virtual {v1, v3, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/snapchat/android/cash/CashAuthToken;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/cash/CashAuthToken;->a(J)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
