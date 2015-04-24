.class public Lcom/snapchat/android/operation/identity/ReauthOperation;
.super Lcom/snapchat/android/operation/BasicScRequestOperation;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/operation/identity/ReauthOperation$ReauthOperationResponse;,
        Lcom/snapchat/android/operation/identity/ReauthOperation$ReauthOperationRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/operation/BasicScRequestOperation;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Lcom/snapchat/android/operation/identity/ReauthOperation$ReauthOperationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/snapchat/android/operation/BasicScRequestOperation;-><init>(Landroid/content/Intent;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/operation/identity/ReauthOperation;->c:Z

    .line 28
    const-string v0, "password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/identity/ReauthOperation;->b:Ljava/lang/String;

    .line 29
    const-class v0, Lcom/snapchat/android/operation/identity/ReauthOperation$ReauthOperationResponse;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/operation/identity/ReauthOperation;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/operation/identity/ReauthOperation$ReauthOperationResponse;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/operation/identity/ReauthOperation;->c:Z

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_0
    iput-boolean v1, p0, Lcom/snapchat/android/operation/identity/ReauthOperation;->c:Z

    .line 76
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/snapchat/android/operation/identity/ReauthOperation$ReauthOperationResponse;->a:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/snapchat/android/operation/identity/ReauthOperation;->e:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const v0, 0x7f0c0164

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/snapchat/android/operation/identity/ReauthOperation$ReauthOperationResponse;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/operation/identity/ReauthOperation;->a(Lcom/snapchat/android/operation/identity/ReauthOperation$ReauthOperationResponse;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/snapchat/android/operation/identity/ReauthOperation$ReauthOperationRequest;

    iget-object v1, p0, Lcom/snapchat/android/operation/identity/ReauthOperation;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/operation/identity/ReauthOperation$ReauthOperationRequest;-><init>(Lcom/snapchat/android/operation/identity/ReauthOperation;Ljava/lang/String;)V

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "/bq/reauth"

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/snapchat/android/operation/identity/ReauthOperation;->c:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/snapchat/android/operation/identity/ReauthOperation;->e:Ljava/lang/String;

    return-object v0
.end method
