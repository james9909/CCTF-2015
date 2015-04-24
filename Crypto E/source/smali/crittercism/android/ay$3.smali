.class final Lcrittercism/android/ay$3;
.super Lcrittercism/android/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/ay;

.field final synthetic b:Lorg/json/JSONObject;


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1029
    iget-object v0, p0, Lcrittercism/android/ay$3;->a:Lcrittercism/android/ay;

    iget-object v0, v0, Lcrittercism/android/ay;->g:Lcrittercism/android/df;

    .line 1030
    invoke-virtual {v0}, Lcrittercism/android/df;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget-object v0, p0, Lcrittercism/android/ay$3;->a:Lcrittercism/android/ay;

    iget-object v0, v0, Lcrittercism/android/ay;->z:Lcrittercism/android/de;

    iget-object v1, p0, Lcrittercism/android/ay$3;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcrittercism/android/de;->a(Lorg/json/JSONObject;)V

    .line 1037
    iget-object v0, p0, Lcrittercism/android/ay$3;->a:Lcrittercism/android/ay;

    iget-object v0, v0, Lcrittercism/android/ay;->z:Lcrittercism/android/de;

    invoke-virtual {v0}, Lcrittercism/android/de;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcrittercism/android/ay$3;->a:Lcrittercism/android/ay;

    invoke-virtual {v0}, Lcrittercism/android/ay;->w()V

    goto :goto_0
.end method
