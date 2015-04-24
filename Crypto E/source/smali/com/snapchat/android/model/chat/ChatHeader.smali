.class public Lcom/snapchat/android/model/chat/ChatHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/model/chat/ChatFeedItem;


# static fields
.field private static final HEADER_ID_SUFFIX:Ljava/lang/String; = "CHAT_HEADER"


# instance fields
.field public mId:Ljava/lang/String;

.field public final mSender:Ljava/lang/String;

.field public mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatHeader;->mSender:Ljava/lang/String;

    .line 22
    if-eqz p2, :cond_0

    .line 23
    invoke-interface {p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatHeader;->mTimestamp:J

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CHAT_HEADER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatHeader;->mId:Ljava/lang/String;

    .line 29
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatHeader;->mTimestamp:J

    .line 27
    const-string v0, "TODAY_DUMMY_HEADER"

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatHeader;->mId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public V()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public W()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public X()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public Y()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;)I
    .locals 1
    .parameter

    .prologue
    .line 81
    const/4 v0, -0x1

    return v0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I
    .locals 4
    .parameter

    .prologue
    .line 152
    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatHeader;->ae()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, ""

    return-object v0
.end method

.method public ae()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatHeader;->mTimestamp:J

    return-wide v0
.end method

.method public ap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public aq()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public ar()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public at()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/snapchat/android/model/chat/ChatConversation;)J
    .locals 2
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatHeader;->ae()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/snapchat/android/model/chat/ChatConversation;)J
    .locals 2
    .parameter

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatHeader;->mTimestamp:J

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 12
    check-cast p1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/chat/ChatHeader;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatHeader;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 136
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatHeader;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatHeader;->mId:Ljava/lang/String;

    check-cast p1, Lcom/snapchat/android/model/chat/ChatHeader;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatHeader;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatHeader;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatHeader;->mSender:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method
