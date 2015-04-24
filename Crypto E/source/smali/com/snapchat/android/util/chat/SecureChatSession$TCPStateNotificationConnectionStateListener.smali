.class Lcom/snapchat/android/util/chat/SecureChatSession$TCPStateNotificationConnectionStateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/SnapchatApplication$Crashable;
.implements Lcom/snapchat/android/util/chat/ChatConnectionStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/chat/SecureChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TCPStateNotificationConnectionStateListener"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$TCPStateNotificationConnectionStateListener;->a:Landroid/content/Context;

    .line 526
    invoke-static {p0}, Lcom/snapchat/android/SnapchatApplication;->a(Lcom/snapchat/android/SnapchatApplication$Crashable;)V

    .line 527
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 555
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 556
    const/16 v1, 0x539

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 557
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 522
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 551
    invoke-static {p1}, Lcom/snapchat/android/util/chat/SecureChatSession$TCPStateNotificationConnectionStateListener;->a(Landroid/content/Context;)V

    .line 552
    return-void
.end method

.method public a(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V
    .locals 3
    .parameter

    .prologue
    .line 531
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->c:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-ne p1, v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$TCPStateNotificationConnectionStateListener;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 533
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->ao:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$TCPStateNotificationConnectionStateListener;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 536
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession$TCPStateNotificationConnectionStateListener;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f02015a

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v2, "Snapchat Chat"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v2, "TCP connection established"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 542
    const/16 v2, 0x539

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->a:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-ne p1, v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$TCPStateNotificationConnectionStateListener;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession$TCPStateNotificationConnectionStateListener;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
