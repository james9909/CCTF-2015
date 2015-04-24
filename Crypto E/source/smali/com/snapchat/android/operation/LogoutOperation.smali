.class public Lcom/snapchat/android/operation/LogoutOperation;
.super Lcom/snapchat/android/operation/UpdateSnapsOperation;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/snapchat/android/operation/UpdateSnapsOperation;-><init>(Landroid/content/Intent;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/snapchat/android/operation/UpdateSnapsOperation;->a(Lcom/snapchat/android/api2/framework/NetworkResult;)V

    .line 29
    const-string v0, "LogoutOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult - wasSuccessful "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/snapchat/android/operation/LogoutOperation;->a:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->F()V

    .line 33
    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "/ph/logout"

    return-object v0
.end method
