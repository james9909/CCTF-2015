.class public Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask;
.super Lcom/snapchat/android/api2/framework/BasicScRequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask$RequestPayload;
    }
.end annotation


# static fields
.field public static final CHAT_TYPING_PATH:Ljava/lang/String; = "/bq/chat_typing"

.field private static final TAG:Ljava/lang/String; = "TellThemIAmTypingTask"


# instance fields
.field private mConversation:Lcom/snapchat/android/model/chat/ChatConversation;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask;->mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 25
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask;->mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->l(Z)V

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask;)Lcom/snapchat/android/util/GsonWrapper;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask;->mGsonWrapper:Lcom/snapchat/android/util/GsonWrapper;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;->a(Lcom/snapchat/android/api2/framework/NetworkResult;)V

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask;->mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->l(Z)V

    .line 53
    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask;->e()Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask$RequestPayload;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "/bq/chat_typing"

    return-object v0
.end method

.method public e()Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask$RequestPayload;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask$RequestPayload;

    iget-object v1, p0, Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask;->mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->aj()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask$RequestPayload;-><init>(Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask;Ljava/util/List;)V

    return-object v0
.end method
