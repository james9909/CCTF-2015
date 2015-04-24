.class public Lcom/snapchat/android/api2/cash/GenerateSquareAccessTokenTask$ResponsePayload;
.super Lcom/snapchat/android/api2/cash/ScCashResponsePayload;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/cash/GenerateSquareAccessTokenTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponsePayload"
.end annotation


# instance fields
.field public accessToken:Lcom/snapchat/android/cash/CashAuthToken;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload;-><init>()V

    return-void
.end method
