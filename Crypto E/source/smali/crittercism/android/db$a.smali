.class public final Lcrittercism/android/db$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/db;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Lcrittercism/android/aw;)Lcrittercism/android/db;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 21
    sget-object v0, Lcrittercism/android/cb;->j:Lcrittercism/android/cb;

    invoke-virtual {v0}, Lcrittercism/android/cb;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcrittercism/android/cb;->j:Lcrittercism/android/cb;

    invoke-virtual {v3}, Lcrittercism/android/cb;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Lcrittercism/android/aw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    .line 37
    :goto_1
    if-eqz v1, :cond_1

    .line 38
    const-string v0, "optOutStatusSet"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 41
    :goto_2
    if-eqz v0, :cond_0

    .line 42
    const-string v0, "optOutStatus"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 48
    :goto_3
    new-instance v1, Lcrittercism/android/db;

    invoke-direct {v1, v0}, Lcrittercism/android/db;-><init>(Z)V

    return-object v1

    .line 33
    :catch_0
    move-exception v0

    invoke-static {}, Lcrittercism/android/dg;->b()V

    goto :goto_1

    .line 44
    :cond_0
    sget-object v0, Lcrittercism/android/cb;->m:Lcrittercism/android/cb;

    invoke-virtual {v0}, Lcrittercism/android/cb;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcrittercism/android/cb;->m:Lcrittercism/android/cb;

    invoke-virtual {v1}, Lcrittercism/android/cb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcrittercism/android/aw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
