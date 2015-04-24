.class public Lcom/snapchat/android/api2/cash/ResetAccountTask;
.super Lcom/snapchat/android/api2/framework/BasicScRequestTask;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const-string v0, "/cash/reset_account"

    return-object v0
.end method
