.class final enum Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ChatItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

.field public static final enum b:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

.field public static final enum c:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

.field public static final enum d:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

.field public static final enum e:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

.field public static final enum f:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

.field public static final enum g:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

.field public static final enum h:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

.field public static final enum i:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

.field private static final synthetic j:[Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 931
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    const-string v1, "CHAT_TEXT"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    const-string v1, "DATE_HEADER"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->b:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    const-string v1, "HEADER"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->c:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    const-string v1, "SNAP"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->d:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    const-string v1, "CHAT_MEDIA"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->e:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    const-string v1, "CHAT_SCREENSHOT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->f:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    const-string v1, "CHAT_UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->g:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    const-string v1, "CASH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->h:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    .line 932
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    const-string v1, "SHARED_DSNAP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->i:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    .line 930
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->b:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->c:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->d:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->e:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->f:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->g:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->h:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->i:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->j:[Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

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
    .line 930
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;
    .locals 1
    .parameter

    .prologue
    .line 930
    const-class v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;
    .locals 1

    .prologue
    .line 930
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->j:[Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    invoke-virtual {v0}, [Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    return-object v0
.end method
