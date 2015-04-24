.class Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker$1;->b:Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;

    iput-object p2, p0, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker$1;->b:Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->a(Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;Ljava/lang/String;)V

    .line 99
    return-void
.end method
