.class public Lcom/snapchat/android/operation/identity/ChangeEmailOperation;
.super Lcom/snapchat/android/operation/BasicScRequestOperation;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/operation/identity/ChangeEmailOperation$ChangeEmailOperationRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/operation/BasicScRequestOperation;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Lcom/snapchat/data/gson/identity/SettingOperationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/snapchat/android/model/UserPrefs;

.field private e:Lcom/snapchat/data/gson/identity/SettingOperationResponse;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->a()Lcom/snapchat/android/model/UserPrefs;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;-><init>(Landroid/content/Intent;Lcom/snapchat/android/model/UserPrefs;)V

    .line 43
    return-void
.end method

.method protected constructor <init>(Landroid/content/Intent;Lcom/snapchat/android/model/UserPrefs;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/snapchat/android/operation/BasicScRequestOperation;-><init>(Landroid/content/Intent;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->f:Z

    .line 36
    iput-object p2, p0, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->c:Lcom/snapchat/android/model/UserPrefs;

    .line 37
    const-string v0, "email"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->b:Ljava/lang/String;

    .line 38
    const-class v0, Lcom/snapchat/data/gson/identity/SettingOperationResponse;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/data/gson/identity/SettingOperationResponse;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 3
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

    .line 77
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_3

    :cond_0
    if-eqz p1, :cond_3

    .line 78
    iput-object p1, p0, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->e:Lcom/snapchat/data/gson/identity/SettingOperationResponse;

    .line 79
    invoke-virtual {p1}, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->c:Lcom/snapchat/android/model/UserPrefs;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->c:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aJ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->c:Lcom/snapchat/android/model/UserPrefs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/UserPrefs;->u(Ljava/lang/String;)V

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->c:Lcom/snapchat/android/model/UserPrefs;

    iget-object v1, p0, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/UserPrefs;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_4

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->f:Z

    goto :goto_0

    .line 91
    :cond_4
    new-instance v0, Lcom/snapchat/data/gson/identity/SettingOperationResponse;

    invoke-direct {v0}, Lcom/snapchat/data/gson/identity/SettingOperationResponse;-><init>()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->a(Ljava/lang/Boolean;)Lcom/snapchat/data/gson/identity/SettingOperationResponse;

    move-result-object v0

    const v1, 0x7f0c0164

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->a(Ljava/lang/String;)Lcom/snapchat/data/gson/identity/SettingOperationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->e:Lcom/snapchat/data/gson/identity/SettingOperationResponse;

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    check-cast p1, Lcom/snapchat/data/gson/identity/SettingOperationResponse;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->a(Lcom/snapchat/data/gson/identity/SettingOperationResponse;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/snapchat/android/operation/identity/ChangeEmailOperation$ChangeEmailOperationRequest;

    iget-object v1, p0, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/operation/identity/ChangeEmailOperation$ChangeEmailOperationRequest;-><init>(Lcom/snapchat/android/operation/identity/ChangeEmailOperation;Ljava/lang/String;)V

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "/loq/and/change_email"

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->f:Z

    return v0
.end method

.method public i()Lcom/snapchat/data/gson/identity/SettingOperationResponse;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->e:Lcom/snapchat/data/gson/identity/SettingOperationResponse;

    return-object v0
.end method
