.class Lcom/snapchat/android/chat/ChatConnectionMonitor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/chat/ChatConnectionMonitor;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/snapchat/android/chat/ChatConnectionMonitor;


# direct methods
.method constructor <init>(Lcom/snapchat/android/chat/ChatConnectionMonitor;Lcom/snapchat/android/model/chat/ChatConversation;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor$1;->c:Lcom/snapchat/android/chat/ChatConnectionMonitor;

    iput-object p2, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor$1;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iput-object p3, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor$1;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor$1;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->G()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor$1;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->m()V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor$1;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
