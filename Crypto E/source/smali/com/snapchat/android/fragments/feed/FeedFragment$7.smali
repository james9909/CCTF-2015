.class Lcom/snapchat/android/fragments/feed/FeedFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/feed/FeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$7;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 291
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$7;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->g(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$7;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->h(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    const-string v1, "PULL_TO_REFRESH"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$7;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->i(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/analytics/MediaViewAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->b()V

    .line 294
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->ak()V

    .line 295
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$7;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->g(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/model/User;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v2, v2, v1}, Lcom/snapchat/android/api/SyncAllTask;->a(Lcom/snapchat/android/model/User;ZZZ)V

    .line 298
    :cond_0
    return-void
.end method
