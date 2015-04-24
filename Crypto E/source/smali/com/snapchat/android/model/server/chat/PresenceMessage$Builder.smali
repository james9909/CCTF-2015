.class public Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;
.super Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/PresenceMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mIsDisplayingVideo:Z

.field private mPresences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportsHere:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V
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
            "Lcom/snapchat/android/model/server/chat/SignedPayload;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    const-string v0, "presence"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    .line 81
    sget-boolean v0, Lcom/snapchat/android/util/ApiHelper;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;->mSupportsHere:Z

    .line 86
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;->mPresences:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;->mSupportsHere:Z

    return v0
.end method

.method static synthetic access$200(Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;->mIsDisplayingVideo:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/snapchat/android/model/server/chat/PresenceMessage;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/snapchat/android/model/server/chat/PresenceMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/model/server/chat/PresenceMessage;-><init>(Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;Lcom/snapchat/android/model/server/chat/PresenceMessage$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/snapchat/android/model/server/chat/SCMessage;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;->build()Lcom/snapchat/android/model/server/chat/PresenceMessage;

    move-result-object v0

    return-object v0
.end method

.method public setIsDisplayingVideo(Z)Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;->mIsDisplayingVideo:Z

    .line 95
    return-object p0
.end method

.method public setPresences(Ljava/util/Map;)Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;->mPresences:Ljava/util/Map;

    .line 90
    return-object p0
.end method
