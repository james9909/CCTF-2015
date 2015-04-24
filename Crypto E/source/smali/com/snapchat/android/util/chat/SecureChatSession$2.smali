.class Lcom/snapchat/android/util/chat/SecureChatSession$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/chat/SecureChatSession;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/chat/SecureChatSession;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSession;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$2;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$2;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;->b:Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    if-ne v0, v1, :cond_0

    .line 250
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession START SESSION RECONNECT"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$2;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->d(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    .line 253
    :cond_0
    return-void
.end method
