.class public Lcom/snapchat/android/operation/identity/ReauthOperation$ReauthOperationRequest;
.super Lcom/snapchat/android/api2/AuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/operation/identity/ReauthOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReauthOperationRequest"
.end annotation


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "password"
    .end annotation
.end field

.field final synthetic b:Lcom/snapchat/android/operation/identity/ReauthOperation;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/operation/identity/ReauthOperation;Ljava/lang/String;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/snapchat/android/operation/identity/ReauthOperation$ReauthOperationRequest;->b:Lcom/snapchat/android/operation/identity/ReauthOperation;

    invoke-direct {p0}, Lcom/snapchat/android/api2/AuthPayload;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/snapchat/android/operation/identity/ReauthOperation$ReauthOperationRequest;->a:Ljava/lang/String;

    .line 51
    return-void
.end method
