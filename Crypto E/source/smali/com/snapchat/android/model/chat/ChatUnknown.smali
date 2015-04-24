.class public Lcom/snapchat/android/model/chat/ChatUnknown;
.super Lcom/snapchat/android/model/chat/Chat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/chat/ChatUnknown$1;,
        Lcom/snapchat/android/model/chat/ChatUnknown$Builder;
    }
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/String; = "unknown"


# direct methods
.method private constructor <init>(Lcom/snapchat/android/model/chat/ChatUnknown$Builder;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/chat/Chat;-><init>(Lcom/snapchat/android/model/chat/Chat$Builder;)V

    .line 18
    invoke-direct {p0}, Lcom/snapchat/android/model/chat/ChatUnknown;->D()V

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/model/chat/ChatUnknown$Builder;Lcom/snapchat/android/model/chat/ChatUnknown$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/chat/ChatUnknown;-><init>(Lcom/snapchat/android/model/chat/ChatUnknown$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/chat/Chat;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    .line 13
    invoke-direct {p0}, Lcom/snapchat/android/model/chat/ChatUnknown;->D()V

    .line 14
    return-void
.end method

.method private D()V
    .locals 4

    .prologue
    .line 22
    const v0, 0x7f0c0218

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatUnknown;->J()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatUnknown;->mStatusText:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatUnknown;->B()I

    .line 25
    return-void
.end method


# virtual methods
.method public X()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->MOST_RECENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
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
    .line 45
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatUnknown;->ae()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "unknown"

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public s()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method
