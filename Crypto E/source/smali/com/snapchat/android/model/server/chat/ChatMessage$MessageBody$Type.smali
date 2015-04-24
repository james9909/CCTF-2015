.class public final enum Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

.field public static final enum DISCOVER_SHARE:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

.field public static final enum HERE_SCREENSHOT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

.field public static final enum MEDIA:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

.field public static final enum SCREENSHOT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

.field public static final enum TEXT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    new-instance v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->TEXT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    .line 155
    new-instance v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    const-string v1, "MEDIA"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->MEDIA:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    .line 156
    new-instance v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    const-string v1, "SCREENSHOT"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->SCREENSHOT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    .line 157
    new-instance v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    const-string v1, "HERE_SCREENSHOT"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->HERE_SCREENSHOT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    .line 158
    new-instance v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    const-string v1, "DISCOVER_SHARE"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->DISCOVER_SHARE:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    .line 153
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    sget-object v1, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->TEXT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->MEDIA:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->SCREENSHOT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->HERE_SCREENSHOT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->DISCOVER_SHARE:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->$VALUES:[Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

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
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;
    .locals 1
    .parameter

    .prologue
    .line 153
    const-class v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->$VALUES:[Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    return-object v0
.end method
