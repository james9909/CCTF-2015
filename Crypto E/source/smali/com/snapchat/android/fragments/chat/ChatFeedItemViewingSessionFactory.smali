.class public Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSessionFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatSharedDSnap;Landroid/view/View;)Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatSharedDSnap;->G()Lcom/snapchat/android/model/chat/ChatSharedDSnap$MediaType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/chat/ChatSharedDSnap$MediaType;->VIDEO:Lcom/snapchat/android/model/chat/ChatSharedDSnap$MediaType;

    if-ne v0, v1, :cond_0

    .line 26
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatVideoViewingSession;

    invoke-direct {v0, p2}, Lcom/snapchat/android/fragments/chat/ChatVideoViewingSession;-><init>(Landroid/view/View;)V

    .line 28
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatImageViewingSession;

    invoke-direct {v0, p2}, Lcom/snapchat/android/fragments/chat/ChatImageViewingSession;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/view/View;)Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 17
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatSharedDSnap;

    if-eqz v0, :cond_0

    .line 18
    check-cast p1, Lcom/snapchat/android/model/chat/ChatSharedDSnap;

    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSessionFactory;->a(Lcom/snapchat/android/model/chat/ChatSharedDSnap;Landroid/view/View;)Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;

    move-result-object v0

    .line 20
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
