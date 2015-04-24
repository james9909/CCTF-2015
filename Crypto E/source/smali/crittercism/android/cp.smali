.class final Lcrittercism/android/cp;
.super Lcrittercism/android/cq;


# instance fields
.field private a:Lcrittercism/android/bj;

.field private b:Lcrittercism/android/bj;

.field private c:Lcrittercism/android/au;

.field private d:Ljava/net/URL;

.field private e:Ljava/lang/String;

.field private f:Lcrittercism/android/cg;


# direct methods
.method constructor <init>(Lcrittercism/android/bj;Lcrittercism/android/bj;Lcrittercism/android/au;Ljava/net/URL;Lcrittercism/android/cg;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcrittercism/android/cq;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcrittercism/android/bj;->d()Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcrittercism/android/cp;->b:Lcrittercism/android/bj;

    .line 33
    iput-object p2, p0, Lcrittercism/android/cp;->a:Lcrittercism/android/bj;

    .line 34
    iput-object p3, p0, Lcrittercism/android/cp;->c:Lcrittercism/android/au;

    .line 35
    iput-object p4, p0, Lcrittercism/android/cp;->d:Ljava/net/URL;

    .line 36
    invoke-virtual {p1}, Lcrittercism/android/bj;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/cp;->e:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcrittercism/android/cp;->f:Lcrittercism/android/cg;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 41
    iget-object v0, p0, Lcrittercism/android/cp;->a:Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/cp;->b:Lcrittercism/android/bj;

    invoke-virtual {v0, v1}, Lcrittercism/android/bj;->a(Lcrittercism/android/bj;)V

    .line 42
    new-instance v0, Lcrittercism/android/ce;

    iget-object v1, p0, Lcrittercism/android/cp;->c:Lcrittercism/android/au;

    invoke-direct {v0, v1}, Lcrittercism/android/ce;-><init>(Lcrittercism/android/au;)V

    iget-object v1, p0, Lcrittercism/android/cp;->e:Ljava/lang/String;

    iget-object v2, p0, Lcrittercism/android/cp;->b:Lcrittercism/android/bj;

    iget-object v3, v0, Lcrittercism/android/ce;->a:Ljava/util/Map;

    new-instance v4, Lcrittercism/android/bf;

    invoke-direct {v4, v2}, Lcrittercism/android/bf;-><init>(Lcrittercism/android/bj;)V

    iget-object v2, v4, Lcrittercism/android/bf;->a:Lorg/json/JSONArray;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v1, Lcrittercism/android/ck;

    iget-object v2, p0, Lcrittercism/android/cp;->d:Ljava/net/URL;

    invoke-direct {v1, v2}, Lcrittercism/android/ck;-><init>(Ljava/net/URL;)V

    .line 45
    new-instance v2, Lcrittercism/android/cs;

    const/4 v3, 0x1

    iget-object v4, p0, Lcrittercism/android/cp;->f:Lcrittercism/android/cg;

    invoke-direct {v2, v0, v1, v3, v4}, Lcrittercism/android/cs;-><init>(Lcrittercism/android/ce;Lcrittercism/android/ck;ZLcrittercism/android/cg;)V

    .line 46
    invoke-virtual {v2}, Lcrittercism/android/cs;->run()V

    .line 47
    return-void
.end method
