.class public Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final INSTANCE:Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager; = null

.field private static final TAG:Ljava/lang/String; = "RecentStoryReplyAnalyticsManager"


# instance fields
.field private mHasReplied:Z

.field private mRecentStoryReplyEvent:Lcom/snapchat/android/util/eventbus/RecentStoryReplyEvent;

.field private final mUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

    sget-object v1, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;-><init>(Ljavax/inject/Provider;)V

    sput-object v0, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->INSTANCE:Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

    return-void
.end method

.method protected constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->mHasReplied:Z

    .line 35
    iput-object p1, p0, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->mUserProvider:Ljavax/inject/Provider;

    .line 36
    return-void
.end method

.method public static a()Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->INSTANCE:Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/util/eventbus/RecentStoryReplyEvent;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v3, 0x0

    .line 54
    const-string v0, "RecentStoryReplyAnalyticsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startReplying to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/snapchat/android/util/eventbus/RecentStoryReplyEvent;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iput-object p1, p0, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->mRecentStoryReplyEvent:Lcom/snapchat/android/util/eventbus/RecentStoryReplyEvent;

    .line 56
    iput-boolean v3, p0, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->mHasReplied:Z

    .line 57
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->mRecentStoryReplyEvent:Lcom/snapchat/android/util/eventbus/RecentStoryReplyEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->mRecentStoryReplyEvent:Lcom/snapchat/android/util/eventbus/RecentStoryReplyEvent;

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "RecentStoryReplyAnalyticsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markHasReplied true "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->mRecentStoryReplyEvent:Lcom/snapchat/android/util/eventbus/RecentStoryReplyEvent;

    iget-object v2, v2, Lcom/snapchat/android/util/eventbus/RecentStoryReplyEvent;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->mHasReplied:Z

    .line 67
    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->mRecentStoryReplyEvent:Lcom/snapchat/android/util/eventbus/RecentStoryReplyEvent;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "RecentStoryReplyAnalyticsManager"

    const-string v1, "stopReplyingAndReport null event, nothing to do"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v0, "RecentStoryReplyAnalyticsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopReplyingAndReport REPORTING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->mHasReplied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-boolean v0, p0, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->mHasReplied:Z

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->e(Z)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->mRecentStoryReplyEvent:Lcom/snapchat/android/util/eventbus/RecentStoryReplyEvent;

    .line 88
    iput-boolean v3, p0, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->mHasReplied:Z

    goto :goto_0
.end method

.method public e()Lcom/snapchat/android/model/Friend;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->mRecentStoryReplyEvent:Lcom/snapchat/android/util/eventbus/RecentStoryReplyEvent;

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->mRecentStoryReplyEvent:Lcom/snapchat/android/util/eventbus/RecentStoryReplyEvent;

    iget-object v1, v0, Lcom/snapchat/android/util/eventbus/RecentStoryReplyEvent;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->mUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    invoke-static {v1, v0}, Lcom/snapchat/android/util/FriendUtils;->a(Ljava/lang/String;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    goto :goto_0
.end method
