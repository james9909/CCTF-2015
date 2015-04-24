.class public Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;
.super Lcom/snapchat/android/model/server/chat/SCMessage$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/ConversationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mHeader:Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 65
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/server/chat/SCMessage$Builder;-><init>(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    invoke-static {p2, v0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;

    invoke-direct {v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;-><init>()V

    invoke-virtual {v1, p3}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->setTo(Ljava/util/List;)Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->setFrom(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->setConvId(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->setAuth(Lcom/snapchat/android/model/server/chat/SignedPayload;)Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->build()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;->mHeader:Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;)Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;->mHeader:Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    return-object v0
.end method
