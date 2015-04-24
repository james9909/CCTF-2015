.class public Lcom/snapchat/android/operation/identity/SettingsOperation;
.super Lcom/snapchat/android/operation/BasicScRequestOperation;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;,
        Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationResponse;,
        Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/operation/BasicScRequestOperation;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;

.field private final c:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/snapchat/android/model/UserPrefs;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->a()Lcom/snapchat/android/model/UserPrefs;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/operation/identity/SettingsOperation;-><init>(Landroid/content/Intent;Lcom/snapchat/android/model/UserPrefs;)V

    .line 60
    return-void
.end method

.method protected constructor <init>(Landroid/content/Intent;Lcom/snapchat/android/model/UserPrefs;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/snapchat/android/operation/BasicScRequestOperation;-><init>(Landroid/content/Intent;)V

    .line 51
    iput-object p2, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->g:Lcom/snapchat/android/model/UserPrefs;

    .line 52
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->c:Ljava/lang/String;

    .line 53
    const-string v0, "param"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->e:Ljava/lang/String;

    .line 54
    const-string v0, "password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->f:Ljava/lang/String;

    .line 55
    const-class v0, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationResponse;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/operation/identity/SettingsOperation;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 56
    return-void
.end method

.method private a(Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;)V
    .locals 3
    .parameter

    .prologue
    .line 154
    iget-object v1, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->c:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 169
    :cond_1
    :goto_1
    return-void

    .line 154
    :sswitch_0
    const-string v2, "pwConfirmPhoneNumber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "verifyEmail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 156
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->g:Lcom/snapchat/android/model/UserPrefs;

    iget-boolean v1, p1, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;->a:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/UserPrefs;->D(Z)V

    goto :goto_1

    .line 162
    :pswitch_1
    iget-boolean v0, p1, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->g:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->g:Lcom/snapchat/android/model/UserPrefs;

    iget-object v1, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->g:Lcom/snapchat/android/model/UserPrefs;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/UserPrefs;->u(Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :sswitch_data_0
    .sparse-switch
        -0x7591c95d -> :sswitch_1
        0x5432b9de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationResponse;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 6
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

    .line 131
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 132
    new-instance v0, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;

    iget-boolean v1, p1, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationResponse;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Boolean;)Z

    move-result v2

    iget-object v3, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->e:Ljava/lang/String;

    iget-object v5, p1, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationResponse;->b:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;-><init>(Lcom/snapchat/android/operation/identity/SettingsOperation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->b:Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->b:Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;

    invoke-direct {p0, v0}, Lcom/snapchat/android/operation/identity/SettingsOperation;->a(Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;)V

    .line 146
    return-void

    .line 139
    :cond_0
    new-instance v0, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;

    iget-object v3, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->e:Ljava/lang/String;

    const v1, 0x7f0c0164

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;-><init>(Lcom/snapchat/android/operation/identity/SettingsOperation;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->b:Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    check-cast p1, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationResponse;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/operation/identity/SettingsOperation;->a(Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationResponse;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationRequest;

    iget-object v1, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->f:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationRequest;-><init>(Lcom/snapchat/android/operation/identity/SettingsOperation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "/ph/settings"

    return-object v0
.end method

.method public g()Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/snapchat/android/operation/identity/SettingsOperation;->b:Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;

    return-object v0
.end method
