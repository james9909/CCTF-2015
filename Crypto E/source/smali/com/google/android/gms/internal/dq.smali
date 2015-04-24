.class public Lcom/google/android/gms/internal/dq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dq$1;,
        Lcom/google/android/gms/internal/dq$a;
    }
.end annotation


# instance fields
.field private final sd:Z

.field private final se:Z

.field private final sf:Z

.field private final sg:Z

.field private final sh:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/dq$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/dq$a;->a(Lcom/google/android/gms/internal/dq$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dq;->sd:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/dq$a;->b(Lcom/google/android/gms/internal/dq$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dq;->se:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/dq$a;->c(Lcom/google/android/gms/internal/dq$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dq;->sf:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/dq$a;->d(Lcom/google/android/gms/internal/dq$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dq;->sg:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/dq$a;->e(Lcom/google/android/gms/internal/dq$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dq;->sh:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/dq$a;Lcom/google/android/gms/internal/dq$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/dq;-><init>(Lcom/google/android/gms/internal/dq$a;)V

    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "sms"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/dq;->sd:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tel"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/dq;->se:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "calendar"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/dq;->sf:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "storePicture"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/dq;->sg:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "inlineVideo"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/dq;->sh:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error occured while obtaining the MRAID capabilities."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
