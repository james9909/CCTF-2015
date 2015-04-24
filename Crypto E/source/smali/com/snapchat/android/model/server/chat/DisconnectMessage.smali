.class public Lcom/snapchat/android/model/server/chat/DisconnectMessage;
.super Lcom/snapchat/android/model/server/chat/SCMessage;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "disconnect"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "disconnect"

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/server/chat/SCMessage;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
