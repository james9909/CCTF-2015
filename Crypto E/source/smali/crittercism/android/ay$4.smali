.class final Lcrittercism/android/ay$4;
.super Lcrittercism/android/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/ay;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/ay;

.field final synthetic b:Lcrittercism/android/ay;


# direct methods
.method constructor <init>(Lcrittercism/android/ay;Lcrittercism/android/ay;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1056
    iput-object p1, p0, Lcrittercism/android/ay$4;->b:Lcrittercism/android/ay;

    iput-object p2, p0, Lcrittercism/android/ay$4;->a:Lcrittercism/android/ay;

    invoke-direct {p0}, Lcrittercism/android/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 1058
    iget-object v0, p0, Lcrittercism/android/ay$4;->a:Lcrittercism/android/ay;

    iget-object v0, v0, Lcrittercism/android/ay;->g:Lcrittercism/android/df;

    .line 1059
    invoke-virtual {v0}, Lcrittercism/android/df;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    :goto_0
    return-void

    .line 1063
    :cond_0
    new-instance v0, Lcrittercism/android/ce;

    iget-object v1, p0, Lcrittercism/android/ay$4;->a:Lcrittercism/android/ay;

    invoke-direct {v0, v1}, Lcrittercism/android/ce;-><init>(Lcrittercism/android/au;)V

    .line 1064
    const-string v1, "metadata"

    iget-object v2, p0, Lcrittercism/android/ay$4;->a:Lcrittercism/android/ay;

    iget-object v2, v2, Lcrittercism/android/ay;->z:Lcrittercism/android/de;

    invoke-virtual {v2}, Lcrittercism/android/de;->a()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, v0, Lcrittercism/android/ce;->a:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    new-instance v1, Lcrittercism/android/cj;

    iget-object v2, p0, Lcrittercism/android/ay$4;->b:Lcrittercism/android/ay;

    iget-object v2, v2, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    invoke-virtual {v2}, Lcrittercism/android/ba;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/android_v2/update_user_metadata"

    invoke-direct {v1, v2, v3}, Lcrittercism/android/cj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcrittercism/android/cj;->a()Ljava/net/URL;

    move-result-object v1

    .line 1067
    new-instance v2, Lcrittercism/android/ck;

    invoke-direct {v2, v1}, Lcrittercism/android/ck;-><init>(Ljava/net/URL;)V

    .line 1069
    new-instance v1, Lcrittercism/android/cl;

    iget-object v3, p0, Lcrittercism/android/ay$4;->a:Lcrittercism/android/ay;

    iget-object v3, v3, Lcrittercism/android/ay;->z:Lcrittercism/android/de;

    invoke-direct {v1, v3}, Lcrittercism/android/cl;-><init>(Lcrittercism/android/de;)V

    .line 1070
    new-instance v3, Lcrittercism/android/cs;

    invoke-direct {v3, v0, v2, v1}, Lcrittercism/android/cs;-><init>(Lcrittercism/android/ce;Lcrittercism/android/ck;Lcrittercism/android/cg;)V

    invoke-virtual {v3}, Lcrittercism/android/cs;->run()V

    goto :goto_0
.end method
