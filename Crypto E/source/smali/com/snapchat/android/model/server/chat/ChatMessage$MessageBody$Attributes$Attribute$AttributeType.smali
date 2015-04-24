.class public final enum Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttributeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;

.field public static final enum LINK:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 367
    new-instance v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;

    const-string v1, "LINK"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;->LINK:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;

    .line 366
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;

    sget-object v1, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;->LINK:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;->$VALUES:[Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;

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
    .line 366
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;
    .locals 1
    .parameter

    .prologue
    .line 366
    const-class v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;->$VALUES:[Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;

    return-object v0
.end method
