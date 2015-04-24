.class Lcom/snapchat/android/util/chat/SecureChatSession$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/model/server/chat/ConnectResponse$Server;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/snapchat/android/util/chat/SecureChatSession;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSession;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$3;->b:Lcom/snapchat/android/util/chat/SecureChatSession;

    iput-object p2, p0, Lcom/snapchat/android/util/chat/SecureChatSession$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$3;->b:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->e(Lcom/snapchat/android/util/chat/SecureChatSession;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/User;->e(Ljava/lang/String;)V

    .line 281
    return-void
.end method
