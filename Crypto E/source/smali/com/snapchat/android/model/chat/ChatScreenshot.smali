.class public Lcom/snapchat/android/model/chat/ChatScreenshot;
.super Lcom/snapchat/android/model/chat/Chat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/chat/ChatScreenshot$1;,
        Lcom/snapchat/android/model/chat/ChatScreenshot$Builder;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "screenshot"


# direct methods
.method private constructor <init>(Lcom/snapchat/android/model/chat/ChatScreenshot$Builder;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/chat/Chat;-><init>(Lcom/snapchat/android/model/chat/Chat$Builder;)V

    .line 24
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    const v1, 0x7f0c018b

    invoke-virtual {v0, v1}, Lcom/snapchat/android/SnapchatApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatScreenshot;->mStatusText:Ljava/lang/String;

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/model/chat/ChatScreenshot$Builder;Lcom/snapchat/android/model/chat/ChatScreenshot$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/chat/ChatScreenshot;-><init>(Lcom/snapchat/android/model/chat/ChatScreenshot$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V
    .locals 2
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/chat/Chat;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    .line 19
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    const v1, 0x7f0c018b

    invoke-virtual {v0, v1}, Lcom/snapchat/android/SnapchatApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatScreenshot;->mStatusText:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public X()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->MOST_RECENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/model/chat/Chat;->a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;

    .line 40
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;

    const v1, 0x7f020036

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;-><init>(I)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c018b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/snapchat/android/model/chat/ChatConversation;)J
    .locals 2
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatScreenshot;->ae()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "screenshot"

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method
