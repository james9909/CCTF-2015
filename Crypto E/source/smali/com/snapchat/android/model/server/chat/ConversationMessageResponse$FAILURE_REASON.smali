.class public final enum Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FAILURE_REASON"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;

.field public static final enum INTERNAL_ERROR:Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;

.field public static final enum INVALID_MESSAGE:Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;

.field public static final enum NEED_AUTHENTICATION:Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;

    const-string v1, "NEED_AUTHENTICATION"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;->NEED_AUTHENTICATION:Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;

    .line 9
    new-instance v0, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;->INTERNAL_ERROR:Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;

    .line 10
    new-instance v0, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;

    const-string v1, "INVALID_MESSAGE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;->INVALID_MESSAGE:Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;

    sget-object v1, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;->NEED_AUTHENTICATION:Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;->INTERNAL_ERROR:Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;->INVALID_MESSAGE:Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;->$VALUES:[Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;
    .locals 1
    .parameter

    .prologue
    .line 7
    const-class v0, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;->$VALUES:[Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;

    return-object v0
.end method
