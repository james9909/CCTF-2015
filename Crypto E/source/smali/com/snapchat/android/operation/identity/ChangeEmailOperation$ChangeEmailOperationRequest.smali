.class public Lcom/snapchat/android/operation/identity/ChangeEmailOperation$ChangeEmailOperationRequest;
.super Lcom/snapchat/android/api2/AuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/operation/identity/ChangeEmailOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChangeEmailOperationRequest"
.end annotation


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field final synthetic b:Lcom/snapchat/android/operation/identity/ChangeEmailOperation;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/operation/identity/ChangeEmailOperation;Ljava/lang/String;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/snapchat/android/operation/identity/ChangeEmailOperation$ChangeEmailOperationRequest;->b:Lcom/snapchat/android/operation/identity/ChangeEmailOperation;

    invoke-direct {p0}, Lcom/snapchat/android/api2/AuthPayload;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/snapchat/android/operation/identity/ChangeEmailOperation$ChangeEmailOperationRequest;->a:Ljava/lang/String;

    .line 60
    return-void
.end method
