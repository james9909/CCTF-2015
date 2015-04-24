.class public Lcom/snapchat/android/model/server/chat/ServerChatConversation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/server/chat/ServerChatConversation$LastChatActions;,
        Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatOrSnapMessage;,
        Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatConversationMessages;,
        Lcom/snapchat/android/model/server/chat/ServerChatConversation$ConversationState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServerChatConversation"


# instance fields
.field public conversation_messages:Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatConversationMessages;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public conversation_state:Lcom/snapchat/android/model/server/chat/ServerChatConversation$ConversationState;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public iter_token:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public last_cash_transaction:Lcom/snapchat/android/model/server/ServerCashTransaction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public last_chat_actions:Lcom/snapchat/android/model/server/chat/ServerChatConversation$LastChatActions;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public last_interaction_ts:J

.field public last_snap:Lcom/snapchat/data/gson/GenericSnap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public participants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public pending_chats_for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pending_received_snaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/data/gson/GenericSnap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method public static getChatMessagesFromServerChatMessages(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatOrSnapMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatOrSnapMessage;

    .line 192
    iget-object v1, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatOrSnapMessage;->chat_message:Lcom/snapchat/android/model/server/chat/ChatMessage;

    if-eqz v1, :cond_6

    .line 193
    iget-object v5, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatOrSnapMessage;->chat_message:Lcom/snapchat/android/model/server/chat/ChatMessage;

    .line 195
    invoke-virtual {v5}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBody()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->TEXT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    invoke-virtual {v6}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    new-instance v1, Lcom/snapchat/android/model/chat/ChatText;

    invoke-direct {v1, v5}, Lcom/snapchat/android/model/chat/ChatText;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    .line 215
    :goto_1
    iget-object v0, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatOrSnapMessage;->iter_token:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/chat/Chat;->a(Ljava/lang/String;)V

    .line 216
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v5}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBody()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->MEDIA:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    invoke-virtual {v6}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    new-instance v1, Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-direct {v1, v5}, Lcom/snapchat/android/model/chat/ChatMedia;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    goto :goto_1

    .line 201
    :cond_2
    invoke-virtual {v5}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBody()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->DISCOVER_SHARE:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    invoke-virtual {v6}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 203
    new-instance v1, Lcom/snapchat/android/model/chat/ChatSharedDSnap;

    invoke-direct {v1, v5}, Lcom/snapchat/android/model/chat/ChatSharedDSnap;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    goto :goto_1

    .line 204
    :cond_3
    invoke-virtual {v5}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBody()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->SCREENSHOT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    invoke-virtual {v6}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 206
    new-instance v1, Lcom/snapchat/android/model/chat/ChatScreenshot;

    invoke-direct {v1, v5}, Lcom/snapchat/android/model/chat/ChatScreenshot;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    goto :goto_1

    .line 207
    :cond_4
    invoke-virtual {v5}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBody()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->HERE_SCREENSHOT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    invoke-virtual {v6}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 210
    new-instance v1, Lcom/snapchat/android/model/chat/ChatScreenshot;

    invoke-direct {v1, v5}, Lcom/snapchat/android/model/chat/ChatScreenshot;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    goto :goto_1

    .line 212
    :cond_5
    new-instance v1, Lcom/snapchat/android/model/chat/ChatUnknown;

    invoke-direct {v1, v5}, Lcom/snapchat/android/model/chat/ChatUnknown;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    goto :goto_1

    .line 217
    :cond_6
    iget-object v1, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatOrSnapMessage;->snap:Lcom/snapchat/data/gson/GenericSnap;

    if-eqz v1, :cond_7

    .line 218
    iget-object v0, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatOrSnapMessage;->snap:Lcom/snapchat/data/gson/GenericSnap;

    invoke-static {v0}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/data/gson/GenericSnap;)Lcom/snapchat/android/model/Snap;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 219
    :cond_7
    iget-object v1, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatOrSnapMessage;->cash_transaction:Lcom/snapchat/android/model/server/ServerCashTransaction;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatOrSnapMessage;->cash_transaction:Lcom/snapchat/android/model/server/ServerCashTransaction;

    invoke-static {v1}, Lcom/snapchat/android/model/CashTransaction$Builder;->a(Lcom/snapchat/android/model/server/ServerCashTransaction;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v5

    sget-object v6, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->INITIATED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v5, v6, :cond_0

    .line 226
    :cond_8
    new-instance v5, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {v5, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;-><init>(Lcom/snapchat/android/model/CashTransaction;)V

    .line 227
    iget-object v0, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatOrSnapMessage;->iter_token:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/lang/String;)V

    .line 228
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 231
    :cond_9
    return-object v2
.end method

.method public static getClientChatConversation(Lcom/snapchat/android/model/server/chat/ServerChatConversation;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 1
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->getClientChatConversation(Lcom/snapchat/android/model/server/chat/ServerChatConversation;Z)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    return-object v0
.end method

.method public static getClientChatConversation(Lcom/snapchat/android/model/server/chat/ServerChatConversation;Z)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->id:Ljava/lang/String;

    .line 160
    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    .line 162
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    .line 164
    :cond_0
    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v0, v4, v2

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 171
    :goto_2
    new-instance v2, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {v2, v1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    invoke-virtual {v0, v2, p0, p1, v3}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ServerChatConversation;ZZ)V

    .line 180
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->A()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    const-string v0, "ServerChatConversation"

    const-string v1, "CHAT-LOG: ServerChatConversation sending release message for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    new-instance v0, Lcom/snapchat/android/chat/ChatMessageReleaser;

    invoke-direct {v0}, Lcom/snapchat/android/chat/ChatMessageReleaser;-><init>()V

    sget-object v1, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->DELETE:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/chat/ChatMessageReleaser;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;)V

    :cond_1
    move-object v0, v2

    .line 185
    goto :goto_0

    .line 164
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerChatConversation{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", participants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->participants:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", last_snap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->last_snap:Lcom/snapchat/data/gson/GenericSnap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", last_interaction_ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->last_interaction_ts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pending_chats_for="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->pending_chats_for:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pending_received_snaps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->pending_received_snaps:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", conversation_messages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->conversation_messages:Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatConversationMessages;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iter_token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->iter_token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", conversation_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->conversation_state:Lcom/snapchat/android/model/server/chat/ServerChatConversation$ConversationState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
