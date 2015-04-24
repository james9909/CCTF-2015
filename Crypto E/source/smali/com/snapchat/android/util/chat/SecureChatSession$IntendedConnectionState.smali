.class final enum Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/chat/SecureChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "IntendedConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

.field public static final enum b:Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

.field private static final synthetic c:[Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;->a:Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    .line 93
    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;->b:Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;->a:Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;->b:Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;->c:[Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;
    .locals 1
    .parameter

    .prologue
    .line 91
    const-class v0, Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;->c:[Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    return-object v0
.end method
