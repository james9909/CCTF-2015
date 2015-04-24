.class public Lcom/snapchat/android/util/chat/SnapchatUrlSpan;
.super Landroid/text/style/URLSpan;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

.field private b:Lcom/snapchat/android/util/chat/UrlType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/android/model/chat/ISavableChatFeedItem;Lcom/snapchat/android/util/chat/UrlType;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;->a:Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    .line 17
    iput-object p3, p0, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;->b:Lcom/snapchat/android/util/chat/UrlType;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/util/chat/UrlType;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;->b:Lcom/snapchat/android/util/chat/UrlType;

    return-object v0
.end method

.method public b()Lcom/snapchat/android/model/chat/ISavableChatFeedItem;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;->a:Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatLinkClickedEvent;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/eventbus/ChatLinkClickedEvent;-><init>(Lcom/snapchat/android/util/chat/SnapchatUrlSpan;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 23
    return-void
.end method
