.class public Lcom/snapchat/android/operation/identity/ValidateEmailOperation;
.super Lcom/snapchat/android/operation/BasicScRequestOperation;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/operation/identity/ValidateEmailOperation$ValidateEmailPayload;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/operation/BasicScRequestOperation;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Lcom/snapchat/data/gson/identity/ValidateEmailResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/snapchat/android/operation/BasicScRequestOperation;-><init>(Landroid/content/Intent;)V

    .line 31
    const-string v0, "email"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/identity/ValidateEmailOperation;->b:Ljava/lang/String;

    .line 32
    const-class v0, Lcom/snapchat/data/gson/identity/ValidateEmailResponse;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/operation/identity/ValidateEmailOperation;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/operation/identity/ValidateEmailOperation;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/snapchat/android/operation/identity/ValidateEmailOperation;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/snapchat/data/gson/identity/ValidateEmailResponse;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 56
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ValidationEmailEvent;

    iget-object v2, p0, Lcom/snapchat/android/operation/identity/ValidateEmailOperation;->b:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/snapchat/android/util/eventbus/ValidationEmailEvent;-><init>(Ljava/lang/String;Lcom/snapchat/data/gson/identity/ValidateEmailResponse;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 63
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/snapchat/data/gson/identity/ValidateEmailResponse;

    invoke-direct {v0}, Lcom/snapchat/data/gson/identity/ValidateEmailResponse;-><init>()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/data/gson/identity/ValidateEmailResponse;->a(Ljava/lang/Boolean;)Lcom/snapchat/data/gson/identity/ValidateEmailResponse;

    move-result-object v0

    const v1, 0x7f0c0132

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/data/gson/identity/ValidateEmailResponse;->a(Ljava/lang/String;)Lcom/snapchat/data/gson/identity/ValidateEmailResponse;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/ValidationEmailEvent;

    iget-object v3, p0, Lcom/snapchat/android/operation/identity/ValidateEmailOperation;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/snapchat/android/util/eventbus/ValidationEmailEvent;-><init>(Ljava/lang/String;Lcom/snapchat/data/gson/identity/ValidateEmailResponse;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/snapchat/data/gson/identity/ValidateEmailResponse;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/operation/identity/ValidateEmailOperation;->a(Lcom/snapchat/data/gson/identity/ValidateEmailResponse;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/snapchat/android/operation/identity/ValidateEmailOperation$ValidateEmailPayload;

    invoke-direct {v0, p0}, Lcom/snapchat/android/operation/identity/ValidateEmailOperation$ValidateEmailPayload;-><init>(Lcom/snapchat/android/operation/identity/ValidateEmailOperation;)V

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "/bq/validate_email"

    return-object v0
.end method
