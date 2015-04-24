.class public final Lcom/snapchat/android/chat/ConversationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/chat/ConversationUtils$1;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/model/Snap;
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-static {p0}, Lcom/snapchat/android/chat/ConversationUtils;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 186
    if-nez v0, :cond_0

    move-object v0, v1

    .line 196
    :goto_0
    return-object v0

    .line 187
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v2

    .line 189
    monitor-enter v2

    .line 190
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 191
    instance-of v4, v0, Lcom/snapchat/android/model/Snap;

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    check-cast v0, Lcom/snapchat/android/model/Snap;

    monitor-exit v2

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 196
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 3
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 54
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Lcom/snapchat/android/util/ListViewAdapterList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/snapchat/android/util/ListViewAdapterList",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 79
    invoke-static {v0}, Lcom/snapchat/android/chat/ConversationUtils;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    new-instance v3, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v0, v5}, Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {v1}, Lcom/snapchat/android/util/ListViewAdapterList;->a(Ljava/util/List;)Lcom/snapchat/android/util/ListViewAdapterList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatConversation;)Ljava/lang/String;
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 262
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 263
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/snapchat/android/util/FriendUtils;->d(Ljava/lang/String;Lcom/snapchat/android/model/User;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    add-int/lit8 v1, v1, 0x1

    array-length v5, v3

    if-eq v1, v5, :cond_0

    .line 265
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 135
    if-nez v0, :cond_0

    .line 136
    const-string v0, "ConversationUtils"

    const-string v2, "User has been logged out"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    .line 142
    if-le v5, v2, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversationManager;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    move-object v4, v0

    .line 146
    :goto_1
    if-nez v4, :cond_2

    .line 147
    const-string v0, "ConversationUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conversation is null : Recipients size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Recipient String = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->J()Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    move-result-object v0

    sget-object v3, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->WILL_UPLOAD_AFTER_SAVE:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    if-eq v0, v3, :cond_5

    move v3, v2

    .line 153
    :goto_2
    if-nez v3, :cond_3

    if-ne v5, v2, :cond_6

    :cond_3
    move v0, v2

    :goto_3
    invoke-virtual {v4, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->o(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Ljava/lang/String;)Lcom/snapchat/android/model/SentSnap;

    move-result-object v0

    .line 156
    if-nez v0, :cond_4

    .line 157
    new-instance v0, Lcom/snapchat/android/model/SentSnap;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/SentSnap;-><init>(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 160
    :cond_4
    if-ne v5, v2, :cond_7

    if-nez v3, :cond_7

    .line 161
    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/SentSnap;->a(Z)V

    .line 166
    :goto_4
    sget-object v2, Lcom/snapchat/android/chat/ConversationUtils$1;->a:[I

    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->K()Lcom/snapchat/android/model/Mediabryo$SendStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/Mediabryo$SendStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 178
    :goto_5
    invoke-static {}, Lcom/snapchat/android/chat/FeedIconManager;->a()Lcom/snapchat/android/chat/FeedIconManager;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 180
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/snapchat/android/model/SentSnap;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 181
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    move v3, v1

    .line 152
    goto :goto_2

    :cond_6
    move v0, v1

    .line 153
    goto :goto_3

    .line 163
    :cond_7
    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/SentSnap;->a(Z)V

    goto :goto_4

    .line 168
    :pswitch_0
    invoke-virtual {v4, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/SentSnap;)V

    goto :goto_5

    .line 171
    :pswitch_1
    invoke-virtual {v4, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Lcom/snapchat/android/model/SentSnap;)V

    goto :goto_5

    .line 175
    :pswitch_2
    invoke-virtual {v4, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Lcom/snapchat/android/model/SentSnap;)V

    goto :goto_5

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/snapchat/android/model/Friend;)Z
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/chat/ConversationUtils;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Lcom/snapchat/android/model/UnviewedContentCount;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v1

    .line 105
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 106
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->ak()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->as()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->al()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 111
    :cond_1
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->ak()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->as()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->al()Z

    move-result v5

    if-nez v5, :cond_2

    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 116
    :cond_2
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->al()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->as()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->ak()Z

    move-result v0

    if-nez v0, :cond_4

    .line 119
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 121
    goto :goto_0

    .line 122
    :cond_3
    new-instance v0, Lcom/snapchat/android/model/UnviewedContentCount$Builder;

    invoke-direct {v0}, Lcom/snapchat/android/model/UnviewedContentCount$Builder;-><init>()V

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/UnviewedContentCount$Builder;->a(I)Lcom/snapchat/android/model/UnviewedContentCount$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/UnviewedContentCount$Builder;->b(I)Lcom/snapchat/android/model/UnviewedContentCount$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/UnviewedContentCount$Builder;->c(I)Lcom/snapchat/android/model/UnviewedContentCount$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/UnviewedContentCount$Builder;->a()Lcom/snapchat/android/model/UnviewedContentCount;

    move-result-object v0

    return-object v0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    .line 65
    :cond_1
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/snapchat/android/chat/ConversationUtils;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v1

    .line 207
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 208
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v4

    .line 210
    monitor-enter v4

    .line 211
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 212
    instance-of v6, v0, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v6, :cond_1

    .line 213
    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    .line 214
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/Chat;->J()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/Chat;->at()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 217
    :cond_1
    instance-of v6, v0, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v6, :cond_0

    .line 218
    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    .line 219
    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 226
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 233
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v0

    .line 235
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 236
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->Q()V

    goto :goto_0

    .line 238
    :cond_0
    return-void
.end method

.method public static d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v0

    .line 244
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 245
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->aF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 247
    :cond_0
    return-object v1
.end method
