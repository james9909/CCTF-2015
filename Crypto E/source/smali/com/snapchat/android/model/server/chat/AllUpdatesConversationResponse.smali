.class public Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public conversations_response:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/chat/ServerChatConversation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public conversations_response_info:Lcom/snapchat/android/model/server/chat/ConversationsResponseInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public discover:Lcom/snapchat/android/discover/model/server/DiscoverResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public friends_response:Lcom/snapchat/android/model/server/FriendsResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public identity_check_response:Lcom/snapchat/data/gson/identity/IdentityCheckResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mRequestTaskId:I

.field public messaging_gateway_info:Lcom/snapchat/android/model/server/MessagingGatewayInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public stories_response:Lcom/snapchat/android/model/server/StoriesResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public updates_response:Lcom/snapchat/android/model/server/UpdatesResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/server/UpdatesResponse;Lcom/snapchat/android/model/server/FriendsResponse;Lcom/snapchat/android/model/server/StoriesResponse;Ljava/util/List;Lcom/snapchat/android/model/server/chat/ConversationsResponseInfo;Lcom/snapchat/android/model/server/MessagingGatewayInfo;Lcom/snapchat/android/discover/model/server/DiscoverResponse;Lcom/snapchat/data/gson/identity/IdentityCheckResponse;I)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/server/UpdatesResponse;",
            "Lcom/snapchat/android/model/server/FriendsResponse;",
            "Lcom/snapchat/android/model/server/StoriesResponse;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/chat/ServerChatConversation;",
            ">;",
            "Lcom/snapchat/android/model/server/chat/ConversationsResponseInfo;",
            "Lcom/snapchat/android/model/server/MessagingGatewayInfo;",
            "Lcom/snapchat/android/discover/model/server/DiscoverResponse;",
            "Lcom/snapchat/data/gson/identity/IdentityCheckResponse;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->updates_response:Lcom/snapchat/android/model/server/UpdatesResponse;

    .line 47
    iput-object p2, p0, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->friends_response:Lcom/snapchat/android/model/server/FriendsResponse;

    .line 48
    iput-object p3, p0, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->stories_response:Lcom/snapchat/android/model/server/StoriesResponse;

    .line 49
    iput-object p4, p0, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->conversations_response:Ljava/util/List;

    .line 50
    iput-object p5, p0, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->conversations_response_info:Lcom/snapchat/android/model/server/chat/ConversationsResponseInfo;

    .line 51
    iput-object p6, p0, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->messaging_gateway_info:Lcom/snapchat/android/model/server/MessagingGatewayInfo;

    .line 52
    iput-object p7, p0, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->discover:Lcom/snapchat/android/discover/model/server/DiscoverResponse;

    .line 53
    iput-object p8, p0, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->identity_check_response:Lcom/snapchat/data/gson/identity/IdentityCheckResponse;

    .line 54
    iput p9, p0, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->mRequestTaskId:I

    .line 55
    return-void
.end method


# virtual methods
.method public getRequestTaskId()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->mRequestTaskId:I

    return v0
.end method
