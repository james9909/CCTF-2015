.class Lcom/snapchat/android/util/chat/SecureChatSession$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/chat/SecureChatSession;->l()V
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
    .line 219
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$1;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 222
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->V()V

    .line 223
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession executing DISCONNECT runnable"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$1;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;->a:Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    if-eq v0, v1, :cond_0

    .line 226
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession DISCONNECT returning because intended connection state != DISCONNECTED"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$1;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->b(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->a:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-ne v0, v1, :cond_1

    .line 231
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession DISCONNECT returning because connection state == DISCONNECTED"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$1;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->c(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    goto :goto_0
.end method
