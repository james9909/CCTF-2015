.class Lcom/snapchat/android/util/chat/SecureChatService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/chat/SecureChatService;->a(Lcom/snapchat/android/model/server/chat/SCMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/server/chat/SCMessage;

.field final synthetic b:Lcom/snapchat/android/util/chat/SecureChatService;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/chat/SecureChatService;Lcom/snapchat/android/model/server/chat/SCMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatService$2;->b:Lcom/snapchat/android/util/chat/SecureChatService;

    iput-object p2, p0, Lcom/snapchat/android/util/chat/SecureChatService$2;->a:Lcom/snapchat/android/model/server/chat/SCMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService$2;->b:Lcom/snapchat/android/util/chat/SecureChatService;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatService;->b(Lcom/snapchat/android/util/chat/SecureChatService;)Lcom/snapchat/android/chat/ReceivingMailman;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatService$2;->a:Lcom/snapchat/android/model/server/chat/SCMessage;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/chat/ReceivingMailman;->a(Lcom/snapchat/android/model/server/chat/SCMessage;)V

    .line 179
    return-void
.end method
