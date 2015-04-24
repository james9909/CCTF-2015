.class Lcom/snapchat/android/util/chat/SecureChatSessionPinger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/chat/SecureChatSessionPinger;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSessionPinger;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$1;->a:Lcom/snapchat/android/util/chat/SecureChatSessionPinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$1;->a:Lcom/snapchat/android/util/chat/SecureChatSessionPinger;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->a(Lcom/snapchat/android/util/chat/SecureChatSessionPinger;)V

    .line 83
    return-void
.end method
