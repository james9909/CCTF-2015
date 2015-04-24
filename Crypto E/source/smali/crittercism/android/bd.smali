.class public final Lcrittercism/android/bd;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/bv;


# instance fields
.field public a:J

.field public b:Lorg/json/JSONArray;

.field public c:Ljava/lang/String;

.field public d:Lorg/json/JSONObject;

.field private e:Lorg/json/JSONObject;

.field private f:Lorg/json/JSONArray;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lorg/json/JSONArray;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/bd;->h:Ljava/lang/String;

    .line 55
    sget-object v0, Lcrittercism/android/bu;->a:Lcrittercism/android/bu;

    invoke-virtual {v0}, Lcrittercism/android/bu;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bd;->l:Ljava/lang/String;

    .line 58
    const-string v0, "uhe"

    iput-object v0, p0, Lcrittercism/android/bd;->c:Ljava/lang/String;

    .line 59
    new-instance v0, Lcrittercism/android/bk;

    invoke-direct {v0}, Lcrittercism/android/bk;-><init>()V

    new-instance v1, Lcrittercism/android/bn$a;

    invoke-direct {v1}, Lcrittercism/android/bn$a;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$c;

    invoke-direct {v2}, Lcrittercism/android/bn$c;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$b;

    invoke-direct {v2}, Lcrittercism/android/bn$b;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$d;

    invoke-direct {v2}, Lcrittercism/android/bn$d;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$e;

    invoke-direct {v2}, Lcrittercism/android/bn$e;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$f;

    invoke-direct {v2}, Lcrittercism/android/bn$f;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$i;

    invoke-direct {v2}, Lcrittercism/android/bn$i;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$j;

    invoke-direct {v2}, Lcrittercism/android/bn$j;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$h;

    invoke-direct {v2}, Lcrittercism/android/bn$h;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$x;

    invoke-direct {v2}, Lcrittercism/android/bn$x;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$y;

    invoke-direct {v2}, Lcrittercism/android/bn$y;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$k;

    invoke-direct {v2}, Lcrittercism/android/bn$k;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$l;

    invoke-direct {v2}, Lcrittercism/android/bn$l;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$n;

    invoke-direct {v2}, Lcrittercism/android/bn$n;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$m;

    invoke-direct {v2}, Lcrittercism/android/bn$m;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$o;

    invoke-direct {v2}, Lcrittercism/android/bn$o;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$p;

    invoke-direct {v2}, Lcrittercism/android/bn$p;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$q;

    invoke-direct {v2}, Lcrittercism/android/bn$q;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$r;

    invoke-direct {v2}, Lcrittercism/android/bn$r;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$s;

    invoke-direct {v2}, Lcrittercism/android/bn$s;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$t;

    invoke-direct {v2}, Lcrittercism/android/bn$t;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$u;

    invoke-direct {v2}, Lcrittercism/android/bn$u;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$v;

    invoke-direct {v2}, Lcrittercism/android/bn$v;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    move-result-object v1

    new-instance v2, Lcrittercism/android/bn$w;

    invoke-direct {v2}, Lcrittercism/android/bn$w;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bm;)Lcrittercism/android/bk;

    invoke-virtual {v0}, Lcrittercism/android/bk;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bd;->d:Lorg/json/JSONObject;

    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcrittercism/android/bd;->e:Lorg/json/JSONObject;

    .line 62
    iput-wide p2, p0, Lcrittercism/android/bd;->a:J

    .line 63
    invoke-static {p1}, Lcrittercism/android/bd;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bd;->g:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bd;->h:Ljava/lang/String;

    .line 69
    :cond_0
    const-string v0, "android"

    iput-object v0, p0, Lcrittercism/android/bd;->i:Ljava/lang/String;

    .line 71
    sget-object v0, Lcrittercism/android/dm;->a:Lcrittercism/android/dm;

    invoke-virtual {v0}, Lcrittercism/android/dm;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bd;->k:Ljava/lang/String;

    .line 72
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcrittercism/android/bd;->j:Lorg/json/JSONArray;

    .line 73
    invoke-static {p1}, Lcrittercism/android/bd;->b(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v1

    .line 74
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 75
    iget-object v4, p0, Lcrittercism/android/bd;->j:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 95
    .line 99
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    if-ne v0, p0, :cond_1

    .line 104
    :cond_0
    return-object v1

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 112
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 113
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 117
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 119
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    if-ne v0, p0, :cond_1

    .line 122
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 204
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 205
    const-string v0, "app_state"

    iget-object v2, p0, Lcrittercism/android/bd;->d:Lorg/json/JSONObject;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v0, "breadcrumbs"

    iget-object v2, p0, Lcrittercism/android/bd;->e:Lorg/json/JSONObject;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v0, "current_thread_id"

    iget-wide v2, p0, Lcrittercism/android/bd;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcrittercism/android/bd;->f:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "endpoints"

    iget-object v2, p0, Lcrittercism/android/bd;->f:Lorg/json/JSONArray;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_0
    const-string v0, "exception_name"

    iget-object v2, p0, Lcrittercism/android/bd;->g:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v0, "exception_reason"

    iget-object v2, p0, Lcrittercism/android/bd;->h:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v0, "platform"

    iget-object v2, p0, Lcrittercism/android/bd;->i:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcrittercism/android/bd;->b:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 215
    const-string v0, "threads"

    iget-object v2, p0, Lcrittercism/android/bd;->b:Lorg/json/JSONArray;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_1
    const-string v0, "ts"

    iget-object v2, p0, Lcrittercism/android/bd;->k:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v2, "type"

    iget-object v0, p0, Lcrittercism/android/bd;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcrittercism/android/bd;->a:J

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-bg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v0, "unsymbolized_stacktrace"

    iget-object v2, p0, Lcrittercism/android/bd;->j:Lorg/json/JSONArray;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final a(Lcrittercism/android/bj;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    new-instance v0, Lcrittercism/android/bf;

    invoke-direct {v0, p1}, Lcrittercism/android/bf;-><init>(Lcrittercism/android/bj;)V

    iget-object v0, v0, Lcrittercism/android/bf;->a:Lorg/json/JSONArray;

    iput-object v0, p0, Lcrittercism/android/bd;->f:Lorg/json/JSONArray;

    .line 92
    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 228
    invoke-virtual {p0}, Lcrittercism/android/bd;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 231
    return-void
.end method

.method public final a(Ljava/lang/String;Lcrittercism/android/bj;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    new-instance v0, Lcrittercism/android/bf;

    invoke-direct {v0, p2}, Lcrittercism/android/bf;-><init>(Lcrittercism/android/bj;)V

    iget-object v0, v0, Lcrittercism/android/bf;->a:Lorg/json/JSONArray;

    .line 84
    :try_start_0
    iget-object v1, p0, Lcrittercism/android/bd;->e:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcrittercism/android/bd;->l:Ljava/lang/String;

    return-object v0
.end method
