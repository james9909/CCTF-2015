.class public Lcom/snapchat/android/operation/SnapTagOperation;
.super Lcom/snapchat/android/operation/BasicScRequestOperation;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/operation/SnapTagOperation$Payload;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/operation/BasicScRequestOperation;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Lcom/snapchat/data/gson/SnaptagResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/snapchat/android/operation/BasicScRequestOperation;-><init>(Landroid/content/Intent;)V

    .line 52
    const-string v0, "snapTag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/StringUtils;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/SnapTagOperation;->b:Ljava/lang/String;

    .line 53
    const-string v0, "SnapTagOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapTag - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/operation/SnapTagOperation;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    const-class v0, Lcom/snapchat/data/gson/SnaptagResponse;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/operation/SnapTagOperation;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/data/gson/SnaptagResponse;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/snapchat/data/gson/SnaptagResponse;->d()Lcom/snapchat/data/gson/Friend;

    move-result-object v0

    .line 100
    invoke-virtual {p1}, Lcom/snapchat/data/gson/SnaptagResponse;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "add_friend"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Lcom/snapchat/android/operation/SnapTagOperation;->b(Lcom/snapchat/data/gson/SnaptagResponse;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/operation/SnapTagOperation;->c(Lcom/snapchat/data/gson/SnaptagResponse;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/data/gson/SnaptagResponse;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 90
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lcom/snapchat/android/operation/SnapTagOperation;->a(Lcom/snapchat/data/gson/SnaptagResponse;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0, p2}, Lcom/snapchat/android/operation/SnapTagOperation;->b(Lcom/snapchat/android/api2/framework/NetworkResult;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    check-cast p1, Lcom/snapchat/data/gson/SnaptagResponse;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/operation/SnapTagOperation;->a(Lcom/snapchat/data/gson/SnaptagResponse;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/snapchat/android/operation/SnapTagOperation$Payload;

    iget-object v1, p0, Lcom/snapchat/android/operation/SnapTagOperation;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/snapchat/android/operation/SnapTagOperation$Payload;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected b(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v5, 0x0

    .line 156
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;

    const/4 v2, 0x0

    const v3, 0x7f0c01f7

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v2, v3}, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method protected b(Lcom/snapchat/data/gson/SnaptagResponse;)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 109
    invoke-virtual {p1}, Lcom/snapchat/data/gson/SnaptagResponse;->d()Lcom/snapchat/data/gson/Friend;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/snapchat/data/gson/Friend;->a()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;

    sget-object v2, Lcom/snapchat/android/util/EmojiUtils;->b:[B

    invoke-static {v2}, Lcom/snapchat/android/util/EmojiUtils;->a([B)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v7, v2, v5}, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v3

    .line 120
    if-eqz v3, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/snapchat/data/gson/SnaptagResponse;->e()Ljava/lang/String;

    move-result-object v2

    .line 123
    const-string v6, "already_friend"

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;

    invoke-virtual {p1}, Lcom/snapchat/data/gson/SnaptagResponse;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v7, v2, v5}, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {v3, v1}, Lcom/snapchat/android/model/User;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v2

    .line 129
    if-nez v2, :cond_3

    .line 130
    new-instance v2, Lcom/snapchat/android/model/Friend;

    invoke-direct {v2, v0}, Lcom/snapchat/android/model/Friend;-><init>(Lcom/snapchat/data/gson/Friend;)V

    .line 131
    invoke-virtual {v3, v2}, Lcom/snapchat/android/model/User;->d(Lcom/snapchat/android/model/Friend;)V

    .line 133
    :cond_3
    invoke-virtual {v2, v4}, Lcom/snapchat/android/model/Friend;->b(Z)V

    .line 135
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v3, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;

    const v6, 0x7f020003

    invoke-virtual {p1}, Lcom/snapchat/data/gson/SnaptagResponse;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v1, v7}, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 140
    sget-object v0, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->CAMERA_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    sget-object v3, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->QR_CODE:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->POST:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method protected c(Lcom/snapchat/data/gson/SnaptagResponse;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/data/gson/SnaptagResponse;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "/bq/snaptag"

    return-object v0
.end method
