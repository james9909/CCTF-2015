.class final Lcom/crittercism/app/CritterUserDataRequest$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/app/CritterUserDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/app/CritterUserDataRequest;


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest$1;->a:Lcom/crittercism/app/CritterUserDataRequest;

    invoke-static {v0}, Lcom/crittercism/app/CritterUserDataRequest;->a(Lcom/crittercism/app/CritterUserDataRequest;)Lcrittercism/android/cu;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/cu;->run()V

    .line 103
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest$1;->a:Lcom/crittercism/app/CritterUserDataRequest;

    iget-object v1, p0, Lcom/crittercism/app/CritterUserDataRequest$1;->a:Lcom/crittercism/app/CritterUserDataRequest;

    invoke-static {v1}, Lcom/crittercism/app/CritterUserDataRequest;->a(Lcom/crittercism/app/CritterUserDataRequest;)Lcrittercism/android/cu;

    move-result-object v1

    iget-object v1, v1, Lcrittercism/android/cu;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/crittercism/app/CritterUserDataRequest;->a(Lcom/crittercism/app/CritterUserDataRequest;Ljava/util/Map;)Ljava/util/Map;

    .line 104
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest$1;->a:Lcom/crittercism/app/CritterUserDataRequest;

    invoke-static {v0}, Lcom/crittercism/app/CritterUserDataRequest;->b(Lcom/crittercism/app/CritterUserDataRequest;)Lcrittercism/android/ay;

    move-result-object v0

    iget-object v0, v0, Lcrittercism/android/ay;->g:Lcrittercism/android/df;

    invoke-virtual {v0}, Lcrittercism/android/df;->c()Z

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/crittercism/app/CritterUserDataRequest$1;->a:Lcom/crittercism/app/CritterUserDataRequest;

    invoke-static {v1}, Lcom/crittercism/app/CritterUserDataRequest;->d(Lcom/crittercism/app/CritterUserDataRequest;)Lcom/crittercism/app/CritterCallback;

    move-result-object v1

    new-instance v2, Lcom/crittercism/app/CritterUserData;

    iget-object v3, p0, Lcom/crittercism/app/CritterUserDataRequest$1;->a:Lcom/crittercism/app/CritterUserDataRequest;

    invoke-static {v3}, Lcom/crittercism/app/CritterUserDataRequest;->c(Lcom/crittercism/app/CritterUserDataRequest;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/crittercism/app/CritterUserData;-><init>(Ljava/util/Map;Z)V

    invoke-interface {v1, v2}, Lcom/crittercism/app/CritterCallback;->a(Lcom/crittercism/app/CritterUserData;)V

    .line 106
    return-void
.end method
