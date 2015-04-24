.class Lcom/snapchat/android/util/chat/SecureChatSessionPinger$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/snapchat/android/util/chat/SecureChatSessionPinger;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSessionPinger;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$3;->b:Lcom/snapchat/android/util/chat/SecureChatSessionPinger;

    iput-object p2, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$3;->b:Lcom/snapchat/android/util/chat/SecureChatSessionPinger;

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->a(Lcom/snapchat/android/util/chat/SecureChatSessionPinger;Ljava/lang/String;)V

    .line 125
    return-void
.end method
