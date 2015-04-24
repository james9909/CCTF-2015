.class public Lcom/snapchat/android/util/chat/ChatUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/chat/ChatUtils$2;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/MessageStateMessage;Z)Lcom/snapchat/android/model/chat/Chat;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->getChatMessageId()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {p0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->f(Ljava/lang/String;)Lcom/snapchat/android/model/chat/Chat;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/model/chat/Chat;->a(Lcom/snapchat/android/model/server/chat/MessageStateMessage;Z)V

    .line 120
    :goto_0
    return-object v0

    .line 106
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->getState()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/model/server/chat/MessageStateMessage$StateType;->SAVED:Lcom/snapchat/android/model/server/chat/MessageStateMessage$StateType;

    invoke-virtual {v2}, Lcom/snapchat/android/model/server/chat/MessageStateMessage$StateType;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Ljava/lang/String;)V

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/snapchat/android/util/chat/ChatUtils$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/chat/ChatUtils$1;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;J)Lcom/snapchat/android/model/chat/Chat;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 138
    :try_start_0
    invoke-static {p0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 145
    :goto_0
    sget-object v1, Lcom/snapchat/android/util/chat/ChatUtils$2;->a:[I

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 158
    new-instance v0, Lcom/snapchat/android/model/chat/ChatText$Builder;

    invoke-direct {v0, p1, p2}, Lcom/snapchat/android/model/chat/ChatText$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatText$Builder;->a()Lcom/snapchat/android/model/chat/ChatText;

    move-result-object v0

    .line 161
    :goto_1
    invoke-virtual {v0, p3}, Lcom/snapchat/android/model/chat/Chat;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 162
    invoke-virtual {v0, p4, p5}, Lcom/snapchat/android/model/chat/Chat;->c(J)V

    .line 163
    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 141
    :goto_2
    sget-object v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->TEXT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    goto :goto_0

    .line 147
    :pswitch_0
    new-instance v0, Lcom/snapchat/android/model/chat/ChatMedia$Builder;

    invoke-direct {v0, p1, p2}, Lcom/snapchat/android/model/chat/ChatMedia$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia$Builder;->a()Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v0

    goto :goto_1

    .line 153
    :pswitch_1
    new-instance v0, Lcom/snapchat/android/model/chat/ChatScreenshot$Builder;

    invoke-direct {v0, p1, p2}, Lcom/snapchat/android/model/chat/ChatScreenshot$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatScreenshot$Builder;->a()Lcom/snapchat/android/model/chat/ChatScreenshot;

    move-result-object v0

    goto :goto_1

    .line 139
    :catch_1
    move-exception v0

    goto :goto_2

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    const-string v0, ""

    .line 43
    :cond_0
    invoke-static {v0, p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 62
    const-string v1, "~"

    invoke-static {v0, v1}, Lcom/snapchat/android/util/StringUtils;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatConversation;)Z
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 124
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/snapchat/android/model/server/chat/ConversationMessage;)Z
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 172
    instance-of v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    .line 174
    :cond_0
    instance-of v0, p0, Lcom/snapchat/android/model/server/chat/MessageStateMessage;

    if-eqz v0, :cond_1

    .line 175
    check-cast p0, Lcom/snapchat/android/model/server/chat/MessageStateMessage;

    .line 176
    invoke-virtual {p0}, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->getState()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/server/chat/MessageStateMessage$StateType;->SAVED:Lcom/snapchat/android/model/server/chat/MessageStateMessage$StateType;

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/MessageStateMessage$StateType;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 73
    const-string v1, "~"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    .line 76
    array-length v5, v4

    move v2, v0

    move v3, v0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 88
    :goto_1
    return-object v0

    .line 80
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 76
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x1

    if-le v3, v0, :cond_2

    move-object v0, v1

    .line 85
    goto :goto_1

    .line 88
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 128
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
