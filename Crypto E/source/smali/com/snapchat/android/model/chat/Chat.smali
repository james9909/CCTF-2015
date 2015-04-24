.class public abstract Lcom/snapchat/android/model/chat/Chat;
.super Lcom/snapchat/android/model/chat/StatefulChatFeedItem;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/model/chat/IIterableChatFeedItem;
.implements Lcom/snapchat/android/model/chat/ISavableChatFeedItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/chat/Chat$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAckId:Ljava/lang/String;

.field protected mChatMessage:Lcom/snapchat/android/model/server/chat/ChatMessage;

.field protected mDisplayedTimestamp:J

.field protected mId:Ljava/lang/String;

.field protected mIsDisplayedToRecipient:Z

.field protected mIsReleasedByRecipient:Z

.field protected mIsSavedByRecipient:Z

.field protected mIsSavedBySender:Z

.field protected mIterToken:Ljava/lang/String;

.field protected mRecipientMessageStateVersionNumber:I

.field protected mReleaseDelay:I

.field protected mReleasedTimestamp:J

.field protected mSenderMessageStateVersionNumber:I

.field protected mSeqNum:J

.field protected mStatusText:Ljava/lang/String;

.field protected mTimestamp:Ljava/lang/Long;

.field protected mUserText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/snapchat/android/model/chat/Chat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/model/chat/Chat;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/model/chat/Chat$Builder;)V
    .locals 4
    .parameter

    .prologue
    .line 77
    invoke-static {p1}, Lcom/snapchat/android/model/chat/Chat$Builder;->a(Lcom/snapchat/android/model/chat/Chat$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/snapchat/android/model/chat/Chat$Builder;->b(Lcom/snapchat/android/model/chat/Chat$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/model/chat/Chat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    invoke-static {p1}, Lcom/snapchat/android/model/chat/Chat$Builder;->c(Lcom/snapchat/android/model/chat/Chat$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/Chat;->mId:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V
    .locals 4
    .parameter

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getTo()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/model/chat/Chat;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;)V

    .line 52
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getChatMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/Chat;->mId:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBody()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/Chat;->mUserText:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getSavedState()Ljava/util/Map;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState;

    .line 58
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState;->isSaved()Z

    move-result v2

    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/Chat;->mIsSavedBySender:Z

    .line 59
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/model/chat/Chat;->mSenderMessageStateVersionNumber:I

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->J()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/snapchat/android/model/chat/Chat;->D()Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->J()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState;

    .line 64
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState;->isSaved()Z

    move-result v1

    iput-boolean v1, p0, Lcom/snapchat/android/model/chat/Chat;->mIsSavedByRecipient:Z

    .line 65
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/model/chat/Chat;->mRecipientMessageStateVersionNumber:I

    .line 68
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getSeqNum()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/Chat;->mSeqNum:J

    .line 69
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/Chat;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_2
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/Chat;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-static {p2}, Lcom/snapchat/android/util/ListUtils;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/snapchat/android/model/chat/Chat;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/model/chat/Chat;->mReleaseDelay:I

    .line 87
    iput-object p3, p0, Lcom/snapchat/android/model/chat/Chat;->mTimestamp:Ljava/lang/Long;

    .line 88
    return-void
.end method

.method private D()Z
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/snapchat/android/model/chat/Chat;->mIterToken:Ljava/lang/String;

    return-object v0
.end method

.method public B()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 160
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iput-boolean v1, p0, Lcom/snapchat/android/model/chat/Chat;->mIsSavedBySender:Z

    .line 162
    iget v0, p0, Lcom/snapchat/android/model/chat/Chat;->mSenderMessageStateVersionNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/model/chat/Chat;->mSenderMessageStateVersionNumber:I

    .line 168
    :goto_0
    return v0

    .line 164
    :cond_0
    iput-boolean v1, p0, Lcom/snapchat/android/model/chat/Chat;->mIsSavedByRecipient:Z

    .line 165
    iget v0, p0, Lcom/snapchat/android/model/chat/Chat;->mRecipientMessageStateVersionNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/model/chat/Chat;->mRecipientMessageStateVersionNumber:I

    goto :goto_0
.end method

.method public C()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iput-boolean v1, p0, Lcom/snapchat/android/model/chat/Chat;->mIsSavedBySender:Z

    .line 176
    iget v0, p0, Lcom/snapchat/android/model/chat/Chat;->mSenderMessageStateVersionNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/model/chat/Chat;->mSenderMessageStateVersionNumber:I

    .line 182
    :goto_0
    return v0

    .line 178
    :cond_0
    iput-boolean v1, p0, Lcom/snapchat/android/model/chat/Chat;->mIsSavedByRecipient:Z

    .line 179
    iget v0, p0, Lcom/snapchat/android/model/chat/Chat;->mRecipientMessageStateVersionNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/model/chat/Chat;->mRecipientMessageStateVersionNumber:I

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I
    .locals 4
    .parameter

    .prologue
    .line 391
    iget-object v0, p0, Lcom/snapchat/android/model/chat/Chat;->mTimestamp:Ljava/lang/Long;

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 392
    if-nez v0, :cond_0

    .line 393
    instance-of v1, p1, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v1, :cond_0

    .line 394
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/Chat;->mSeqNum:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast p1, Lcom/snapchat/android/model/chat/Chat;

    iget-wide v2, p1, Lcom/snapchat/android/model/chat/Chat;->mSeqNum:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 397
    :cond_0
    return v0
.end method

.method public a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const-wide/16 v6, 0x3e8

    const v4, 0x7f020039

    .line 365
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->ae()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-gez v0, :cond_0

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->ae()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sub-long v0, v6, v0

    .line 367
    new-instance v2, Lcom/snapchat/android/model/chat/Chat$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/model/chat/Chat$1;-><init>(Lcom/snapchat/android/model/chat/Chat;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;

    const v1, 0x7f020113

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;-><init>(I)V

    .line 383
    :goto_0
    return-object v0

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;

    invoke-direct {v0, v4}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;-><init>(I)V

    goto :goto_0

    .line 377
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 378
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->V()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;

    invoke-direct {v0, v4}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;-><init>(I)V

    goto :goto_0

    .line 379
    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->at()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;

    const v1, 0x7f02003a

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;-><init>(I)V

    goto :goto_0

    .line 380
    :cond_4
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;

    const v1, 0x7f02003e

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;-><init>(I)V

    goto :goto_0

    .line 382
    :cond_5
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->at()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;

    const v1, 0x7f020031

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;-><init>(I)V

    goto :goto_0

    .line 383
    :cond_6
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;

    const v1, 0x7f020042

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;-><init>(I)V

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    const v0, 0x7f0c0145

    .line 436
    :goto_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 431
    :cond_0
    const v0, 0x7f0c00c2

    goto :goto_0

    .line 434
    :cond_1
    invoke-super {p0}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput p1, p0, Lcom/snapchat/android/model/chat/Chat;->mSenderMessageStateVersionNumber:I

    .line 228
    return-void
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/Chat;->a(Z)V

    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/model/chat/Chat;->d(J)V

    .line 204
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/Chat;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    iget v0, p1, Lcom/snapchat/android/model/chat/Chat;->mSenderMessageStateVersionNumber:I

    iget v1, p0, Lcom/snapchat/android/model/chat/Chat;->mSenderMessageStateVersionNumber:I

    if-le v0, v1, :cond_0

    .line 94
    iget-boolean v0, p1, Lcom/snapchat/android/model/chat/Chat;->mIsSavedBySender:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/Chat;->mIsSavedBySender:Z

    .line 95
    iget v0, p1, Lcom/snapchat/android/model/chat/Chat;->mSenderMessageStateVersionNumber:I

    iput v0, p0, Lcom/snapchat/android/model/chat/Chat;->mSenderMessageStateVersionNumber:I

    .line 98
    :cond_0
    iget v0, p1, Lcom/snapchat/android/model/chat/Chat;->mRecipientMessageStateVersionNumber:I

    iget v1, p0, Lcom/snapchat/android/model/chat/Chat;->mRecipientMessageStateVersionNumber:I

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lcom/snapchat/android/model/chat/Chat;->D()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-boolean v0, p1, Lcom/snapchat/android/model/chat/Chat;->mIsSavedByRecipient:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/Chat;->mIsSavedByRecipient:Z

    .line 100
    iget v0, p1, Lcom/snapchat/android/model/chat/Chat;->mRecipientMessageStateVersionNumber:I

    iput v0, p0, Lcom/snapchat/android/model/chat/Chat;->mRecipientMessageStateVersionNumber:I

    .line 102
    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/model/chat/Chat;->mTimestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/Chat;->mTimestamp:Ljava/lang/Long;

    .line 103
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/Chat;->K()Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/Chat;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 104
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/Chat;->mIsReleasedByRecipient:Z

    if-nez v0, :cond_2

    .line 105
    iget-boolean v0, p1, Lcom/snapchat/android/model/chat/Chat;->mIsReleasedByRecipient:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/Chat;->mIsReleasedByRecipient:Z

    .line 106
    iget-wide v0, p1, Lcom/snapchat/android/model/chat/Chat;->mReleasedTimestamp:J

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/Chat;->mReleasedTimestamp:J

    .line 108
    :cond_2
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/Chat;->mIsDisplayedToRecipient:Z

    if-nez v0, :cond_3

    .line 109
    iget-boolean v0, p1, Lcom/snapchat/android/model/chat/Chat;->mIsDisplayedToRecipient:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/Chat;->mIsDisplayedToRecipient:Z

    .line 110
    iget-wide v0, p1, Lcom/snapchat/android/model/chat/Chat;->mDisplayedTimestamp:J

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/Chat;->mDisplayedTimestamp:J

    .line 112
    :cond_3
    iget-wide v0, p1, Lcom/snapchat/android/model/chat/Chat;->mSeqNum:J

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/Chat;->mSeqNum:J

    .line 113
    return-void
.end method

.method public a(Lcom/snapchat/android/model/server/chat/ChatMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/snapchat/android/model/chat/Chat;->mChatMessage:Lcom/snapchat/android/model/server/chat/ChatMessage;

    .line 191
    return-void
.end method

.method public a(Lcom/snapchat/android/model/server/chat/MessageStateMessage;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getFrom()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->getVersion()I

    move-result v3

    .line 118
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->getState()Ljava/lang/String;

    move-result-object v4

    .line 119
    sget-object v5, Lcom/snapchat/android/model/server/chat/MessageStateMessage$StateType;->SAVED:Lcom/snapchat/android/model/server/chat/MessageStateMessage$StateType;

    invoke-virtual {v5}, Lcom/snapchat/android/model/server/chat/MessageStateMessage$StateType;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->o()I

    move-result v2

    if-le v3, v2, :cond_0

    .line 122
    if-eqz p2, :cond_1

    .line 123
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/Chat;->b(Z)V

    .line 124
    invoke-virtual {p0, v3}, Lcom/snapchat/android/model/chat/Chat;->a(I)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/Chat;->b(Z)V

    .line 127
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/Chat;->a(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 126
    goto :goto_1

    .line 131
    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->p()I

    move-result v2

    if-le v3, v2, :cond_0

    .line 132
    if-eqz p2, :cond_4

    .line 133
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/Chat;->c(Z)V

    .line 134
    invoke-virtual {p0, v3}, Lcom/snapchat/android/model/chat/Chat;->b(I)V

    goto :goto_0

    .line 136
    :cond_4
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_2
    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/Chat;->c(Z)V

    .line 137
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/Chat;->b(I)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 136
    goto :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/snapchat/android/model/chat/Chat;->mIterToken:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/Chat;->mIsReleasedByRecipient:Z

    .line 199
    return-void
.end method

.method public ae()J
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/snapchat/android/model/chat/Chat;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public ap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/snapchat/android/model/chat/Chat;->mUserText:Ljava/lang/String;

    return-object v0
.end method

.method public aq()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public ar()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public at()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/Chat;->mIsReleasedByRecipient:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/snapchat/android/model/chat/Chat;->mStatusText:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput p1, p0, Lcom/snapchat/android/model/chat/Chat;->mRecipientMessageStateVersionNumber:I

    .line 236
    return-void
.end method

.method public b(J)V
    .locals 1
    .parameter

    .prologue
    .line 219
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/Chat;->mSeqNum:J

    .line 220
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/snapchat/android/model/chat/Chat;->mAckId:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/Chat;->mIsSavedBySender:Z

    .line 244
    return-void
.end method

.method public c(Lcom/snapchat/android/model/chat/ChatConversation;)J
    .locals 2
    .parameter

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->y()J

    move-result-wide v0

    .line 416
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->ae()J

    move-result-wide v0

    goto :goto_0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput p1, p0, Lcom/snapchat/android/model/chat/Chat;->mReleaseDelay:I

    .line 313
    return-void
.end method

.method public c(J)V
    .locals 1
    .parameter

    .prologue
    .line 278
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/Chat;->mTimestamp:Ljava/lang/Long;

    .line 279
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/snapchat/android/model/chat/Chat;->mStatusText:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/Chat;->mIsSavedByRecipient:Z

    .line 252
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->W()Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    check-cast p1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/chat/Chat;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/snapchat/android/model/chat/Chat;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public d(J)V
    .locals 1
    .parameter

    .prologue
    .line 286
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/Chat;->mReleasedTimestamp:J

    .line 287
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/snapchat/android/model/chat/Chat;->mId:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public e(J)V
    .locals 1
    .parameter

    .prologue
    .line 302
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/Chat;->mDisplayedTimestamp:J

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/Chat;->mIsDisplayedToRecipient:Z

    .line 304
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 402
    instance-of v0, p1, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/snapchat/android/model/chat/Chat;->mId:Ljava/lang/String;

    check-cast p1, Lcom/snapchat/android/model/chat/Chat;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/Chat;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 405
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/snapchat/android/model/server/chat/ChatMessage;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/snapchat/android/model/chat/Chat;->mChatMessage:Lcom/snapchat/android/model/server/chat/ChatMessage;

    return-object v0
.end method

.method public f(J)Z
    .locals 5
    .parameter

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/snapchat/android/model/chat/Chat;->mDisplayedTimestamp:J

    iget v2, p0, Lcom/snapchat/android/model/chat/Chat;->mReleaseDelay:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/Chat;->mIsReleasedByRecipient:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/snapchat/android/model/chat/Chat;->mAckId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/snapchat/android/model/chat/Chat;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/Chat;->mSeqNum:J

    return-wide v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->u()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/Chat;->mIsSavedBySender:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/Chat;->mIsSavedByRecipient:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 339
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 340
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 344
    :goto_0
    return v0

    .line 341
    :cond_0
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/Chat;->mIsSavedBySender:Z

    goto :goto_0

    .line 344
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/Chat;->mIsSavedByRecipient:Z

    goto :goto_0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/snapchat/android/model/chat/Chat;->mSenderMessageStateVersionNumber:I

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/snapchat/android/model/chat/Chat;->mRecipientMessageStateVersionNumber:I

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/Chat;->mIsSavedBySender:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/Chat;->mIsSavedByRecipient:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x27

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chat{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/Chat;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAckId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/Chat;->mAckId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRecipient=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->m()Ljava/util/List;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/snapchat/android/util/StringUtils;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSender=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSavedBySender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/model/chat/Chat;->mIsSavedBySender:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSavedByRecipient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/model/chat/Chat;->mIsSavedByRecipient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSenderMessageStateVersionNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/model/chat/Chat;->mSenderMessageStateVersionNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRecipientMessageStateVersionNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/model/chat/Chat;->mRecipientMessageStateVersionNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsReleasedByRecipient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/model/chat/Chat;->mIsReleasedByRecipient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/Chat;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReleasedTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/snapchat/android/model/chat/Chat;->mReleasedTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/snapchat/android/model/chat/Chat;->mUserText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/chat/Chat;->mUserText:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatusText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/Chat;->mStatusText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSeqNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/snapchat/android/model/chat/Chat;->mSeqNum:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSendReceiveStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->K()Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIterToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/Chat;->mIterToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/Chat;->mUserText:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/snapchat/android/model/chat/Chat;->mUserText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public w()J
    .locals 2

    .prologue
    .line 282
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/Chat;->mReleasedTimestamp:J

    return-wide v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/Chat;->mIsDisplayedToRecipient:Z

    return v0
.end method

.method public y()J
    .locals 2

    .prologue
    .line 298
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/Chat;->mDisplayedTimestamp:J

    return-wide v0
.end method

.method public z()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/snapchat/android/model/chat/Chat;->mReleaseDelay:I

    return v0
.end method
