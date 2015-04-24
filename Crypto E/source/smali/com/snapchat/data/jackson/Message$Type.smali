.class public final enum Lcom/snapchat/data/jackson/Message$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/data/jackson/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/data/jackson/Message$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/data/jackson/Message$Type;

.field public static final enum b:Lcom/snapchat/data/jackson/Message$Type;

.field public static final enum c:Lcom/snapchat/data/jackson/Message$Type;

.field public static final enum d:Lcom/snapchat/data/jackson/Message$Type;

.field public static final enum e:Lcom/snapchat/data/jackson/Message$Type;

.field public static final enum f:Lcom/snapchat/data/jackson/Message$Type;

.field public static final enum g:Lcom/snapchat/data/jackson/Message$Type;

.field public static final enum h:Lcom/snapchat/data/jackson/Message$Type;

.field public static final enum i:Lcom/snapchat/data/jackson/Message$Type;

.field public static final enum j:Lcom/snapchat/data/jackson/Message$Type;

.field public static final enum k:Lcom/snapchat/data/jackson/Message$Type;

.field public static final enum l:Lcom/snapchat/data/jackson/Message$Type;

.field public static final enum m:Lcom/snapchat/data/jackson/Message$Type;

.field public static final enum n:Lcom/snapchat/data/jackson/Message$Type;

.field public static final enum o:Lcom/snapchat/data/jackson/Message$Type;

.field public static final enum p:Lcom/snapchat/data/jackson/Message$Type;

.field private static r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/data/jackson/Message$Type;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic s:[Lcom/snapchat/data/jackson/Message$Type;


# instance fields
.field private final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 129
    new-instance v1, Lcom/snapchat/data/jackson/Message$Type;

    const-string v2, "INVALID_MESSAGE_TYPE"

    const-string v3, "invalid_message_type"

    invoke-direct {v1, v2, v0, v3}, Lcom/snapchat/data/jackson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/jackson/Message$Type;->a:Lcom/snapchat/data/jackson/Message$Type;

    .line 130
    new-instance v1, Lcom/snapchat/data/jackson/Message$Type;

    const-string v2, "CONNECT"

    const-string v3, "connect"

    invoke-direct {v1, v2, v5, v3}, Lcom/snapchat/data/jackson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/jackson/Message$Type;->b:Lcom/snapchat/data/jackson/Message$Type;

    .line 131
    new-instance v1, Lcom/snapchat/data/jackson/Message$Type;

    const-string v2, "DISCONNECT"

    const-string v3, "disconnect"

    invoke-direct {v1, v2, v6, v3}, Lcom/snapchat/data/jackson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/jackson/Message$Type;->c:Lcom/snapchat/data/jackson/Message$Type;

    .line 132
    new-instance v1, Lcom/snapchat/data/jackson/Message$Type;

    const-string v2, "PRESENCE"

    const-string v3, "presence"

    invoke-direct {v1, v2, v7, v3}, Lcom/snapchat/data/jackson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/jackson/Message$Type;->d:Lcom/snapchat/data/jackson/Message$Type;

    .line 133
    new-instance v1, Lcom/snapchat/data/jackson/Message$Type;

    const-string v2, "SNAP_STATE"

    const-string v3, "snap_state"

    invoke-direct {v1, v2, v8, v3}, Lcom/snapchat/data/jackson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/jackson/Message$Type;->e:Lcom/snapchat/data/jackson/Message$Type;

    .line 134
    new-instance v1, Lcom/snapchat/data/jackson/Message$Type;

    const-string v2, "MESSAGE_STATE"

    const/4 v3, 0x5

    const-string v4, "message_state"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/jackson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/jackson/Message$Type;->f:Lcom/snapchat/data/jackson/Message$Type;

    .line 135
    new-instance v1, Lcom/snapchat/data/jackson/Message$Type;

    const-string v2, "MESSAGE_RELEASE"

    const/4 v3, 0x6

    const-string v4, "message_release"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/jackson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/jackson/Message$Type;->g:Lcom/snapchat/data/jackson/Message$Type;

    .line 136
    new-instance v1, Lcom/snapchat/data/jackson/Message$Type;

    const-string v2, "CHAT_MESSAGE"

    const/4 v3, 0x7

    const-string v4, "chat_message"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/jackson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/jackson/Message$Type;->h:Lcom/snapchat/data/jackson/Message$Type;

    .line 137
    new-instance v1, Lcom/snapchat/data/jackson/Message$Type;

    const-string v2, "PING"

    const/16 v3, 0x8

    const-string v4, "ping"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/jackson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/jackson/Message$Type;->i:Lcom/snapchat/data/jackson/Message$Type;

    .line 138
    new-instance v1, Lcom/snapchat/data/jackson/Message$Type;

    const-string v2, "PING_RESPONSE"

    const/16 v3, 0x9

    const-string v4, "ping_response"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/jackson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/jackson/Message$Type;->j:Lcom/snapchat/data/jackson/Message$Type;

    .line 139
    new-instance v1, Lcom/snapchat/data/jackson/Message$Type;

    const-string v2, "ERROR"

    const/16 v3, 0xa

    const-string v4, "error"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/jackson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/jackson/Message$Type;->k:Lcom/snapchat/data/jackson/Message$Type;

    .line 140
    new-instance v1, Lcom/snapchat/data/jackson/Message$Type;

    const-string v2, "PROTOCOL_ERROR"

    const/16 v3, 0xb

    const-string v4, "protocol_error"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/jackson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/jackson/Message$Type;->l:Lcom/snapchat/data/jackson/Message$Type;

    .line 141
    new-instance v1, Lcom/snapchat/data/jackson/Message$Type;

    const-string v2, "CONVERSATION_MESSAGE_RESPONSE"

    const/16 v3, 0xc

    const-string v4, "conversation_message_response"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/jackson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/jackson/Message$Type;->m:Lcom/snapchat/data/jackson/Message$Type;

    .line 142
    new-instance v1, Lcom/snapchat/data/jackson/Message$Type;

    const-string v2, "CONNECT_RESPONSE"

    const/16 v3, 0xd

    const-string v4, "connect_response"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/jackson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/jackson/Message$Type;->n:Lcom/snapchat/data/jackson/Message$Type;

    .line 143
    new-instance v1, Lcom/snapchat/data/jackson/Message$Type;

    const-string v2, "CASH_STATE"

    const/16 v3, 0xe

    const-string v4, "cash_state"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/jackson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/jackson/Message$Type;->o:Lcom/snapchat/data/jackson/Message$Type;

    .line 144
    new-instance v1, Lcom/snapchat/data/jackson/Message$Type;

    const-string v2, "CASH_RAIN"

    const/16 v3, 0xf

    const-string v4, "cash_rain"

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/data/jackson/Message$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/snapchat/data/jackson/Message$Type;->p:Lcom/snapchat/data/jackson/Message$Type;

    .line 126
    const/16 v1, 0x10

    new-array v1, v1, [Lcom/snapchat/data/jackson/Message$Type;

    sget-object v2, Lcom/snapchat/data/jackson/Message$Type;->a:Lcom/snapchat/data/jackson/Message$Type;

    aput-object v2, v1, v0

    sget-object v2, Lcom/snapchat/data/jackson/Message$Type;->b:Lcom/snapchat/data/jackson/Message$Type;

    aput-object v2, v1, v5

    sget-object v2, Lcom/snapchat/data/jackson/Message$Type;->c:Lcom/snapchat/data/jackson/Message$Type;

    aput-object v2, v1, v6

    sget-object v2, Lcom/snapchat/data/jackson/Message$Type;->d:Lcom/snapchat/data/jackson/Message$Type;

    aput-object v2, v1, v7

    sget-object v2, Lcom/snapchat/data/jackson/Message$Type;->e:Lcom/snapchat/data/jackson/Message$Type;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/snapchat/data/jackson/Message$Type;->f:Lcom/snapchat/data/jackson/Message$Type;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/snapchat/data/jackson/Message$Type;->g:Lcom/snapchat/data/jackson/Message$Type;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/snapchat/data/jackson/Message$Type;->h:Lcom/snapchat/data/jackson/Message$Type;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/snapchat/data/jackson/Message$Type;->i:Lcom/snapchat/data/jackson/Message$Type;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/snapchat/data/jackson/Message$Type;->j:Lcom/snapchat/data/jackson/Message$Type;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/snapchat/data/jackson/Message$Type;->k:Lcom/snapchat/data/jackson/Message$Type;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/snapchat/data/jackson/Message$Type;->l:Lcom/snapchat/data/jackson/Message$Type;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/snapchat/data/jackson/Message$Type;->m:Lcom/snapchat/data/jackson/Message$Type;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/snapchat/data/jackson/Message$Type;->n:Lcom/snapchat/data/jackson/Message$Type;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/snapchat/data/jackson/Message$Type;->o:Lcom/snapchat/data/jackson/Message$Type;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/snapchat/data/jackson/Message$Type;->p:Lcom/snapchat/data/jackson/Message$Type;

    aput-object v3, v1, v2

    sput-object v1, Lcom/snapchat/data/jackson/Message$Type;->s:[Lcom/snapchat/data/jackson/Message$Type;

    .line 146
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/snapchat/data/jackson/Message$Type;->r:Ljava/util/Map;

    .line 149
    invoke-static {}, Lcom/snapchat/data/jackson/Message$Type;->values()[Lcom/snapchat/data/jackson/Message$Type;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 150
    sget-object v4, Lcom/snapchat/data/jackson/Message$Type;->r:Ljava/util/Map;

    iget-object v5, v3, Lcom/snapchat/data/jackson/Message$Type;->q:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
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
    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 155
    iput-object p3, p0, Lcom/snapchat/data/jackson/Message$Type;->q:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/data/jackson/Message$Type;
    .locals 1
    .parameter

    .prologue
    .line 126
    const-class v0, Lcom/snapchat/data/jackson/Message$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/data/jackson/Message$Type;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/data/jackson/Message$Type;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/snapchat/data/jackson/Message$Type;->s:[Lcom/snapchat/data/jackson/Message$Type;

    invoke-virtual {v0}, [Lcom/snapchat/data/jackson/Message$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/data/jackson/Message$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/snapchat/data/jackson/Message$Type;->q:Ljava/lang/String;

    return-object v0
.end method
