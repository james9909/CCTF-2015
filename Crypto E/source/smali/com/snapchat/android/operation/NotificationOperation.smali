.class public Lcom/snapchat/android/operation/NotificationOperation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/operation/Operation;


# instance fields
.field private final a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/snapchat/android/operation/NotificationOperation;->a:Landroid/content/Intent;

    .line 39
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/snapchat/android/operation/NotificationOperation;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/operation/NotificationOperation;->a:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/operation/NotificationOperation;->a:Landroid/content/Intent;

    const-string v1, "gcm_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 50
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 51
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->aw:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 53
    const-string v3, "snapchatUserIsLoggedIn"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 54
    iget-object v4, p0, Lcom/snapchat/android/operation/NotificationOperation;->a:Landroid/content/Intent;

    const-string v5, "clear"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 55
    iget-object v5, p0, Lcom/snapchat/android/operation/NotificationOperation;->a:Landroid/content/Intent;

    const-string v6, "display_notifications"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 56
    iget-object v6, p0, Lcom/snapchat/android/operation/NotificationOperation;->a:Landroid/content/Intent;

    const-string v7, "notification_type"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v7

    .line 60
    if-eqz v5, :cond_2

    .line 62
    invoke-virtual {v7, p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 63
    :cond_2
    if-eqz v4, :cond_4

    .line 64
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    invoke-virtual {v7, p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 69
    :cond_3
    invoke-static {v6}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-result-object v0

    invoke-virtual {v7, p1, v0}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    goto :goto_0

    .line 72
    :cond_4
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v7, p1, v0, v1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/SharedPreferences;)V

    .line 79
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    move-result-object v1

    .line 82
    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->b:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-eq v1, v2, :cond_5

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->g:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-eq v1, v2, :cond_5

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->j:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    if-ne v1, v2, :cond_0

    .line 83
    :cond_5
    const-string v1, "sender_username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    invoke-static {v0}, Lcom/snapchat/android/chat/ConversationUtils;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    new-instance v1, Lcom/snapchat/android/chat/ChatMessageReleaser;

    invoke-direct {v1}, Lcom/snapchat/android/chat/ChatMessageReleaser;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    sub-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/snapchat/android/chat/ChatMessageReleaser;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    goto/16 :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    return-void
.end method
