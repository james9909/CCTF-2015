.class Lcom/snapchat/android/LandingPageActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/LandingPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1852
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity$8;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1855
    check-cast p2, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatBinder;

    .line 1856
    invoke-virtual {p2}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatBinder;->a()Lcom/snapchat/android/util/chat/SecureChatService;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    .line 1857
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$8;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-static {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->c(Lcom/snapchat/android/LandingPageActivity;Z)Z

    .line 1858
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$8;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->p:Lcom/snapchat/android/model/User;

    if-nez v0, :cond_1

    .line 1859
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$8;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-static {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->d(Lcom/snapchat/android/LandingPageActivity;Z)Z

    .line 1863
    :cond_0
    :goto_0
    return-void

    .line 1860
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$8;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$8;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->p:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->z()Lcom/snapchat/android/model/server/MessagingGatewayInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1861
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$8;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->v()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1867
    const/4 v0, 0x0

    sput-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    .line 1868
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$8;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-static {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->c(Lcom/snapchat/android/LandingPageActivity;Z)Z

    .line 1869
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$8;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-static {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->d(Lcom/snapchat/android/LandingPageActivity;Z)Z

    .line 1870
    invoke-static {}, Lcom/snapchat/android/chat/SendingMailman;->a()Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/chat/SendingMailman;->c()V

    .line 1871
    return-void
.end method
