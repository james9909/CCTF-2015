.class Lcom/snapchat/android/chat/FeedIconManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/snapchat/android/model/chat/ChatFeedItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic b:Lcom/snapchat/android/chat/FeedIconManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/chat/FeedIconManager;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/snapchat/android/chat/FeedIconManager$1;->b:Lcom/snapchat/android/chat/FeedIconManager;

    iput-object p2, p0, Lcom/snapchat/android/chat/FeedIconManager$1;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 145
    iget-object v0, p0, Lcom/snapchat/android/chat/FeedIconManager$1;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-interface {p1, v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->c(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v0

    .line 146
    iget-object v2, p0, Lcom/snapchat/android/chat/FeedIconManager$1;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-interface {p2, v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->c(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v2

    .line 147
    sub-long v0, v2, v0

    .line 148
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 149
    const/4 v0, -0x1

    .line 153
    :goto_0
    return v0

    .line 150
    :cond_0
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 151
    const/4 v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    check-cast p1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast p2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/chat/FeedIconManager$1;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem;)I

    move-result v0

    return v0
.end method
