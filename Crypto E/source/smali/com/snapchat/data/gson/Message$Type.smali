.class public final enum Lcom/snapchat/data/gson/Message$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/data/gson/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/data/gson/Message$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/data/gson/Message$Type;

.field public static final enum CASH_RAIN:Lcom/snapchat/data/gson/Message$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cash_rain"
    .end annotation
.end field

.field public static final enum CASH_STATE:Lcom/snapchat/data/gson/Message$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cash_state"
    .end annotation
.end field

.field public static final enum CHAT_MESSAGE:Lcom/snapchat/data/gson/Message$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_message"
    .end annotation
.end field

.field public static final enum CONNECT:Lcom/snapchat/data/gson/Message$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "connect"
    .end annotation
.end field

.field public static final enum CONNECT_RESPONSE:Lcom/snapchat/data/gson/Message$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "connect_response"
    .end annotation
.end field

.field public static final enum CONVERSATION_MESSAGE_RESPONSE:Lcom/snapchat/data/gson/Message$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_message_response"
    .end annotation
.end field

.field public static final enum DISCONNECT:Lcom/snapchat/data/gson/Message$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disconnect"
    .end annotation
.end field

.field public static final enum ERROR:Lcom/snapchat/data/gson/Message$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error"
    .end annotation
.end field

.field public static final enum INVALID_MESSAGE_TYPE:Lcom/snapchat/data/gson/Message$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invalid_message_type"
    .end annotation
.end field

.field public static final enum MESSAGE_RELEASE:Lcom/snapchat/data/gson/Message$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message_release"
    .end annotation
.end field

.field public static final enum MESSAGE_STATE:Lcom/snapchat/data/gson/Message$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message_state"
    .end annotation
.end field

.field public static final enum PING:Lcom/snapchat/data/gson/Message$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ping"
    .end annotation
.end field

.field public static final enum PING_RESPONSE:Lcom/snapchat/data/gson/Message$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ping_response"
    .end annotation
.end field

.field public static final enum PRESENCE:Lcom/snapchat/data/gson/Message$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "presence"
    .end annotation
.end field

.field public static final enum PROTOCOL_ERROR:Lcom/snapchat/data/gson/Message$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "protocol_error"
    .end annotation
.end field

.field public static final enum SNAP_STATE:Lcom/snapchat/data/gson/Message$Type;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "snap_state"
    .end annotation
.end field

.field private static constants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/data/gson/Message$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 97
    new-instance v1, Lcom/snapchat/data/gson/Message$Type;

    const-string v2, "INVALID_MESSAGE_TYPE"

    const-string v3, "invalid_message_type"

    invoke-direct {v1, v2, v0, v3}, Lcom/snapchat/data/gson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/gson/Message$Type;->INVALID_MESSAGE_TYPE:Lcom/snapchat/data/gson/Message$Type;

    .line 99
    new-instance v1, Lcom/snapchat/data/gson/Message$Type;

    const-string v2, "CONNECT"

    const-string v3, "connect"

    invoke-direct {v1, v2, v5, v3}, Lcom/snapchat/data/gson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/gson/Message$Type;->CONNECT:Lcom/snapchat/data/gson/Message$Type;

    .line 101
    new-instance v1, Lcom/snapchat/data/gson/Message$Type;

    const-string v2, "DISCONNECT"

    const-string v3, "disconnect"

    invoke-direct {v1, v2, v6, v3}, Lcom/snapchat/data/gson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/gson/Message$Type;->DISCONNECT:Lcom/snapchat/data/gson/Message$Type;

    .line 103
    new-instance v1, Lcom/snapchat/data/gson/Message$Type;

    const-string v2, "PRESENCE"

    const-string v3, "presence"

    invoke-direct {v1, v2, v7, v3}, Lcom/snapchat/data/gson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/gson/Message$Type;->PRESENCE:Lcom/snapchat/data/gson/Message$Type;

    .line 105
    new-instance v1, Lcom/snapchat/data/gson/Message$Type;

    const-string v2, "SNAP_STATE"

    const-string v3, "snap_state"

    invoke-direct {v1, v2, v8, v3}, Lcom/snapchat/data/gson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/gson/Message$Type;->SNAP_STATE:Lcom/snapchat/data/gson/Message$Type;

    .line 107
    new-instance v1, Lcom/snapchat/data/gson/Message$Type;

    const-string v2, "MESSAGE_STATE"

    const/4 v3, 0x5

    const-string v4, "message_state"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/gson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/gson/Message$Type;->MESSAGE_STATE:Lcom/snapchat/data/gson/Message$Type;

    .line 109
    new-instance v1, Lcom/snapchat/data/gson/Message$Type;

    const-string v2, "MESSAGE_RELEASE"

    const/4 v3, 0x6

    const-string v4, "message_release"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/gson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/gson/Message$Type;->MESSAGE_RELEASE:Lcom/snapchat/data/gson/Message$Type;

    .line 111
    new-instance v1, Lcom/snapchat/data/gson/Message$Type;

    const-string v2, "CHAT_MESSAGE"

    const/4 v3, 0x7

    const-string v4, "chat_message"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/gson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/gson/Message$Type;->CHAT_MESSAGE:Lcom/snapchat/data/gson/Message$Type;

    .line 113
    new-instance v1, Lcom/snapchat/data/gson/Message$Type;

    const-string v2, "PING"

    const/16 v3, 0x8

    const-string v4, "ping"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/gson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/gson/Message$Type;->PING:Lcom/snapchat/data/gson/Message$Type;

    .line 115
    new-instance v1, Lcom/snapchat/data/gson/Message$Type;

    const-string v2, "PING_RESPONSE"

    const/16 v3, 0x9

    const-string v4, "ping_response"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/gson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/gson/Message$Type;->PING_RESPONSE:Lcom/snapchat/data/gson/Message$Type;

    .line 117
    new-instance v1, Lcom/snapchat/data/gson/Message$Type;

    const-string v2, "ERROR"

    const/16 v3, 0xa

    const-string v4, "error"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/gson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/gson/Message$Type;->ERROR:Lcom/snapchat/data/gson/Message$Type;

    .line 119
    new-instance v1, Lcom/snapchat/data/gson/Message$Type;

    const-string v2, "PROTOCOL_ERROR"

    const/16 v3, 0xb

    const-string v4, "protocol_error"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/gson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/gson/Message$Type;->PROTOCOL_ERROR:Lcom/snapchat/data/gson/Message$Type;

    .line 121
    new-instance v1, Lcom/snapchat/data/gson/Message$Type;

    const-string v2, "CONVERSATION_MESSAGE_RESPONSE"

    const/16 v3, 0xc

    const-string v4, "conversation_message_response"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/gson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/gson/Message$Type;->CONVERSATION_MESSAGE_RESPONSE:Lcom/snapchat/data/gson/Message$Type;

    .line 123
    new-instance v1, Lcom/snapchat/data/gson/Message$Type;

    const-string v2, "CONNECT_RESPONSE"

    const/16 v3, 0xd

    const-string v4, "connect_response"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/gson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/gson/Message$Type;->CONNECT_RESPONSE:Lcom/snapchat/data/gson/Message$Type;

    .line 125
    new-instance v1, Lcom/snapchat/data/gson/Message$Type;

    const-string v2, "CASH_STATE"

    const/16 v3, 0xe

    const-string v4, "cash_state"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/gson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/gson/Message$Type;->CASH_STATE:Lcom/snapchat/data/gson/Message$Type;

    .line 127
    new-instance v1, Lcom/snapchat/data/gson/Message$Type;

    const-string v2, "CASH_RAIN"

    const/16 v3, 0xf

    const-string v4, "cash_rain"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/gson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/gson/Message$Type;->CASH_RAIN:Lcom/snapchat/data/gson/Message$Type;

    .line 94
    const/16 v1, 0x10

    new-array v1, v1, [Lcom/snapchat/data/gson/Message$Type;

    sget-object v2, Lcom/snapchat/data/gson/Message$Type;->INVALID_MESSAGE_TYPE:Lcom/snapchat/data/gson/Message$Type;

    aput-object v2, v1, v0

    sget-object v2, Lcom/snapchat/data/gson/Message$Type;->CONNECT:Lcom/snapchat/data/gson/Message$Type;

    aput-object v2, v1, v5

    sget-object v2, Lcom/snapchat/data/gson/Message$Type;->DISCONNECT:Lcom/snapchat/data/gson/Message$Type;

    aput-object v2, v1, v6

    sget-object v2, Lcom/snapchat/data/gson/Message$Type;->PRESENCE:Lcom/snapchat/data/gson/Message$Type;

    aput-object v2, v1, v7

    sget-object v2, Lcom/snapchat/data/gson/Message$Type;->SNAP_STATE:Lcom/snapchat/data/gson/Message$Type;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/snapchat/data/gson/Message$Type;->MESSAGE_STATE:Lcom/snapchat/data/gson/Message$Type;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/snapchat/data/gson/Message$Type;->MESSAGE_RELEASE:Lcom/snapchat/data/gson/Message$Type;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/snapchat/data/gson/Message$Type;->CHAT_MESSAGE:Lcom/snapchat/data/gson/Message$Type;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/snapchat/data/gson/Message$Type;->PING:Lcom/snapchat/data/gson/Message$Type;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/snapchat/data/gson/Message$Type;->PING_RESPONSE:Lcom/snapchat/data/gson/Message$Type;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/snapchat/data/gson/Message$Type;->ERROR:Lcom/snapchat/data/gson/Message$Type;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/snapchat/data/gson/Message$Type;->PROTOCOL_ERROR:Lcom/snapchat/data/gson/Message$Type;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/snapchat/data/gson/Message$Type;->CONVERSATION_MESSAGE_RESPONSE:Lcom/snapchat/data/gson/Message$Type;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/snapchat/data/gson/Message$Type;->CONNECT_RESPONSE:Lcom/snapchat/data/gson/Message$Type;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/snapchat/data/gson/Message$Type;->CASH_STATE:Lcom/snapchat/data/gson/Message$Type;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/snapchat/data/gson/Message$Type;->CASH_RAIN:Lcom/snapchat/data/gson/Message$Type;

    aput-object v3, v1, v2

    sput-object v1, Lcom/snapchat/data/gson/Message$Type;->$VALUES:[Lcom/snapchat/data/gson/Message$Type;

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/snapchat/data/gson/Message$Type;->constants:Ljava/util/Map;

    .line 133
    invoke-static {}, Lcom/snapchat/data/gson/Message$Type;->values()[Lcom/snapchat/data/gson/Message$Type;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 134
    sget-object v4, Lcom/snapchat/data/gson/Message$Type;->constants:Ljava/util/Map;

    iget-object v5, v3, Lcom/snapchat/data/gson/Message$Type;->value:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    iput-object p3, p0, Lcom/snapchat/data/gson/Message$Type;->value:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/data/gson/Message$Type;
    .locals 1
    .parameter

    .prologue
    .line 94
    const-class v0, Lcom/snapchat/data/gson/Message$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/data/gson/Message$Type;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/data/gson/Message$Type;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/snapchat/data/gson/Message$Type;->$VALUES:[Lcom/snapchat/data/gson/Message$Type;

    invoke-virtual {v0}, [Lcom/snapchat/data/gson/Message$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/data/gson/Message$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/snapchat/data/gson/Message$Type;->value:Ljava/lang/String;

    return-object v0
.end method
