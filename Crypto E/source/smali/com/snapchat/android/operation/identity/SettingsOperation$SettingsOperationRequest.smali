.class public Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationRequest;
.super Lcom/snapchat/android/api2/AuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/operation/identity/SettingsOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsOperationRequest"
.end annotation


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "password"
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phoneNumber"
    .end annotation
.end field

.field final synthetic d:Lcom/snapchat/android/operation/identity/SettingsOperation;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/operation/identity/SettingsOperation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationRequest;->d:Lcom/snapchat/android/operation/identity/SettingsOperation;

    invoke-direct {p0}, Lcom/snapchat/android/api2/AuthPayload;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationRequest;->a:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationRequest;->a:Ljava/lang/String;

    const-string v1, "pwConfirmPhoneNumber"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iput-object p3, p0, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationRequest;->c:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationRequest;->b:Ljava/lang/String;

    .line 80
    :cond_0
    return-void
.end method
