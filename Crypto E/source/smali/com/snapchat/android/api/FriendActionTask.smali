.class public Lcom/snapchat/android/api/FriendActionTask;
.super Lcom/snapchat/android/api/RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api/FriendActionTask$2;,
        Lcom/snapchat/android/api/FriendActionTask$FriendActionCompleteCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FriendActionTask"

.field private static final TASK_NAME:Ljava/lang/String; = "FriendActionTask"


# instance fields
.field public mAction:Lcom/snapchat/android/model/FriendAction;

.field private mAddSourceType:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

.field private mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field private final mBus:Lcom/squareup/otto/Bus;

.field protected mDisplayName:Ljava/lang/String;

.field public mFriend:Lcom/snapchat/android/model/Friend;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mFriendActionCompleteCallback:Lcom/snapchat/android/api/FriendActionTask$FriendActionCompleteCallback;

.field protected mFriendUsername:Ljava/lang/String;

.field protected mIsJustAdded:Z

.field protected mOldDisplayName:Ljava/lang/String;

.field private mOnFriendActionMessage:Landroid/os/Message;

.field private mUser:Lcom/snapchat/android/model/User;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V
    .locals 7
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->F()Z

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/api/FriendActionTask;-><init>(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/api/FriendActionTask$FriendActionCompleteCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/api/FriendActionTask;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V

    .line 80
    iput-object p3, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriendActionCompleteCallback:Lcom/snapchat/android/api/FriendActionTask$FriendActionCompleteCallback;

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/api/FriendActionTask;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V

    .line 75
    iput-object p3, p0, Lcom/snapchat/android/api/FriendActionTask;->mOldDisplayName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    .line 57
    iput-object p3, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriendUsername:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/snapchat/android/api/FriendActionTask;->mDisplayName:Ljava/lang/String;

    .line 59
    iput-boolean p5, p0, Lcom/snapchat/android/api/FriendActionTask;->mIsJustAdded:Z

    .line 60
    iput-object p6, p0, Lcom/snapchat/android/api/FriendActionTask;->mOldDisplayName:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mUser:Lcom/snapchat/android/model/User;

    .line 62
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mBus:Lcom/squareup/otto/Bus;

    .line 63
    iput-object p2, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api/FriendActionTask;)Lcom/snapchat/android/api/FriendActionTask$FriendActionCompleteCallback;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriendActionCompleteCallback:Lcom/snapchat/android/api/FriendActionTask$FriendActionCompleteCallback;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Message;)Lcom/snapchat/android/api/FriendActionTask;
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/snapchat/android/api/FriendActionTask;->mOnFriendActionMessage:Landroid/os/Message;

    .line 96
    return-object p0
.end method

.method public a(Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;)Lcom/snapchat/android/api/FriendActionTask;
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/snapchat/android/api/FriendActionTask;->mAddSourceType:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    .line 88
    return-object p0
.end method

.method public a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)Lcom/snapchat/android/api/FriendActionTask;
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/snapchat/android/api/FriendActionTask;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 104
    return-object p0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "/bq/friend"

    return-object v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/FriendAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c000b

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    instance-of v0, v0, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    iget-object v1, p0, Lcom/snapchat/android/api/FriendActionTask;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iget-object v2, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    iget-object v3, p0, Lcom/snapchat/android/api/FriendActionTask;->mAddSourceType:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;ZLjava/lang/String;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;

    iget-object v2, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    iget-object v3, p0, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 254
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/FriendAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c000e

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v1, v2, p1}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    const-string v1, "username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "action"

    iget-object v2, p0, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/FriendAction;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "friend"

    iget-object v2, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriendUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/snapchat/android/api/FriendActionTask;->mAddSourceType:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    if-eqz v1, :cond_0

    .line 135
    const-string v1, "added_by"

    iget-object v2, p0, Lcom/snapchat/android/api/FriendActionTask;->mAddSourceType:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->a()Lcom/snapchat/android/model/Friend$AddSourceType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/Friend$AddSourceType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->SET_DISPLAY_NAME:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/FriendAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    const-string v1, "display"

    iget-object v2, p0, Lcom/snapchat/android/api/FriendActionTask;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_1
    return-object v0
.end method

.method public b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 147
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mUser:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_7

    .line 148
    const-string v0, "FriendActionTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess - OBJECT MANIPULATION - action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    instance-of v0, v0, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    if-nez v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/FriendAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 152
    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->object:Lcom/snapchat/android/model/server/ServerFriend;

    .line 154
    iget v0, v1, Lcom/snapchat/android/model/server/ServerFriend;->type:I

    if-nez v0, :cond_e

    .line 155
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-static {v1, v0}, Lcom/snapchat/android/util/FriendUtils;->a(Lcom/snapchat/android/model/server/ServerFriend;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 157
    :goto_0
    iget v2, v1, Lcom/snapchat/android/model/server/ServerFriend;->type:I

    if-ne v2, v4, :cond_0

    .line 158
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-static {v1, v0}, Lcom/snapchat/android/util/FriendUtils;->b(Lcom/snapchat/android/model/server/ServerFriend;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 160
    :cond_0
    if-eqz v0, :cond_2

    .line 161
    iget-object v1, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->D()Lcom/snapchat/android/model/Friend$SuggestState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$SuggestState;)V

    .line 164
    :cond_1
    iget-boolean v1, p0, Lcom/snapchat/android/api/FriendActionTask;->mIsJustAdded:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->f(Z)V

    .line 165
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v2, Lcom/snapchat/android/api2/GetConversationAuthTokenTask;

    invoke-direct {v2, v1}, Lcom/snapchat/android/api2/GetConversationAuthTokenTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/snapchat/android/api2/GetConversationAuthTokenTask;->g()V

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/Friend;->b(J)V

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->a()V

    .line 184
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->H()V

    .line 187
    :cond_3
    sget-object v0, Lcom/snapchat/android/api/FriendActionTask$2;->$SwitchMap$com$snapchat$android$model$FriendAction:[I

    iget-object v1, p0, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 219
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriendActionCompleteCallback:Lcom/snapchat/android/api/FriendActionTask$FriendActionCompleteCallback;

    if-eqz v0, :cond_5

    .line 220
    new-instance v0, Lcom/snapchat/android/api/FriendActionTask$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api/FriendActionTask$1;-><init>(Lcom/snapchat/android/api/FriendActionTask;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 229
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    instance-of v0, v0, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    if-nez v0, :cond_6

    .line 230
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    iget-object v1, p0, Lcom/snapchat/android/api/FriendActionTask;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iget-object v2, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    iget-object v3, p0, Lcom/snapchat/android/api/FriendActionTask;->mAddSourceType:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;ZLjava/lang/String;)V

    .line 233
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;

    iget-object v2, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    iget-object v3, p0, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 234
    invoke-static {v6}, Lcom/snapchat/android/model/UserPrefs;->u(Z)V

    .line 236
    :cond_7
    return-void

    .line 170
    :cond_8
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/FriendAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_9

    .line 171
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriendUsername:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/api/FriendActionTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FriendUtils;->g(Ljava/lang/String;Lcom/snapchat/android/model/User;)V

    goto :goto_1

    .line 172
    :cond_9
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->BLOCK:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/FriendAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->REPORT_SPAM:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/FriendAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 173
    :cond_a
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriendUsername:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/api/FriendActionTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FriendUtils;->h(Ljava/lang/String;Lcom/snapchat/android/model/User;)V

    goto :goto_1

    .line 174
    :cond_b
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->UNBLOCK:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/FriendAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 175
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->object:Lcom/snapchat/android/model/server/ServerFriend;

    .line 176
    if-eqz v0, :cond_c

    iget v0, v0, Lcom/snapchat/android/model/server/ServerFriend;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 177
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriendUsername:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/api/FriendActionTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FriendUtils;->g(Ljava/lang/String;Lcom/snapchat/android/model/User;)V

    .line 179
    :cond_c
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriendUsername:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/api/FriendActionTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FriendUtils;->i(Ljava/lang/String;Lcom/snapchat/android/model/User;)V

    goto/16 :goto_1

    .line 180
    :cond_d
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->SET_DISPLAY_NAME:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/FriendAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriendUsername:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/api/FriendActionTask;->mDisplayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/api/FriendActionTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/FriendUtils;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/User;)V

    goto/16 :goto_1

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriendUsername:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/api/FriendActionTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-static {v0, v4, v1}, Lcom/snapchat/android/util/FriendUtils;->a(Ljava/lang/String;ZLcom/snapchat/android/model/User;)V

    .line 191
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestState;->NOT_SUGGESTION:Lcom/snapchat/android/model/Friend$SuggestState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$SuggestState;)V

    goto/16 :goto_2

    .line 197
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_4

    .line 198
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mUser:Lcom/snapchat/android/model/User;

    iget-object v1, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/snapchat/android/model/User;->a(Ljava/lang/String;Z)V

    .line 199
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriendUsername:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/api/FriendActionTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-static {v0, v6, v1}, Lcom/snapchat/android/util/FriendUtils;->a(Ljava/lang/String;ZLcom/snapchat/android/model/User;)V

    goto/16 :goto_2

    .line 205
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_4

    .line 206
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/Friend;->j(Z)V

    goto/16 :goto_2

    .line 212
    :pswitch_3
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/Friend;->k(Z)V

    goto/16 :goto_2

    :cond_e
    move-object v0, v5

    goto/16 :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const-string v0, "FriendActionTask"

    return-object v0
.end method

.method public onPreExecute()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-super {p0}, Lcom/snapchat/android/api/RequestTask;->onPreExecute()V

    .line 111
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    iget-object v1, p0, Lcom/snapchat/android/api/FriendActionTask;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iget-object v2, p0, Lcom/snapchat/android/api/FriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mOnFriendActionMessage:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mOnFriendActionMessage:Landroid/os/Message;

    iget-object v1, p0, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask;->mOnFriendActionMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 119
    :cond_1
    return-void
.end method
