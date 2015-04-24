.class final Lcrittercism/android/ay$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 991
    :try_start_0
    invoke-static {}, Lcrittercism/android/ay;->t()Lcrittercism/android/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/ay;->v()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    :goto_0
    return-void

    .line 993
    :catch_0
    move-exception v0

    const-string v0, "CrittercismInstance"

    const-string v1, "NO button failed.  Email support@crittercism.com."

    invoke-static {v0, v1}, Lcrittercism/android/dg;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
