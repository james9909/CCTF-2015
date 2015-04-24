.class public final Lcrittercism/android/be;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/bv;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcrittercism/android/bu;->a:Lcrittercism/android/bu;

    invoke-virtual {v0}, Lcrittercism/android/bu;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/be;->b:Ljava/lang/String;

    .line 17
    new-instance v0, Lcrittercism/android/bk;

    invoke-direct {v0}, Lcrittercism/android/bk;-><init>()V

    new-instance v1, Lcrittercism/android/bn$c;

    invoke-direct {v1}, Lcrittercism/android/bn$c;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bn$b;

    invoke-direct {v1}, Lcrittercism/android/bn$b;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bn$f;

    invoke-direct {v1}, Lcrittercism/android/bn$f;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bn$k;

    invoke-direct {v1}, Lcrittercism/android/bn$k;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bn$n;

    invoke-direct {v1}, Lcrittercism/android/bn$n;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bn$p;

    invoke-direct {v1}, Lcrittercism/android/bn$p;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bn$u;

    invoke-direct {v1}, Lcrittercism/android/bn$u;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bn$v;

    invoke-direct {v1}, Lcrittercism/android/bn$v;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/bk;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/be;->a:Lorg/json/JSONObject;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    const-string v1, "app_state"

    iget-object v2, p0, Lcrittercism/android/be;->a:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 37
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 39
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcrittercism/android/be;->b:Ljava/lang/String;

    return-object v0
.end method
