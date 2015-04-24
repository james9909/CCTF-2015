.class Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 323
    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "progress"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    const-string v0, "DSnapItemRemoteVideoAdapter"

    const-string v4, "%s got BrightCove event: %s"

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;

    invoke-static {v6}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->c(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    :goto_0
    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->getType()Ljava/lang/String;

    move-result-object v4

    const/4 v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 350
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->g(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)V

    .line 351
    return-void

    .line 326
    :cond_1
    const-string v0, "DSnapItemRemoteVideoAdapter"

    const-string v4, "%s got BrightCove event: %s"

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;

    invoke-static {v6}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->c(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 329
    :sswitch_0
    const-string v3, "didPlay"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v3, "sourceNotFound"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v5, "sourceNotPlayable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v3, "error"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "completed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    .line 331
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;

    invoke-static {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->a(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;Z)Z

    .line 332
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->d(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)V

    .line 333
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->f(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;

    invoke-static {v3}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->e(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 339
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;

    invoke-static {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->a(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;Z)Z

    .line 340
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->d(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)V

    .line 341
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->f(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;

    invoke-static {v2}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->e(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;ZZ)V

    .line 343
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;

    invoke-static {v0, p1}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->a(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;Lcom/brightcove/player/event/Event;)V

    goto/16 :goto_2

    .line 346
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->d(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)V

    goto/16 :goto_2

    .line 329
    :sswitch_data_0
    .sparse-switch
        -0x539f09b5 -> :sswitch_4
        -0x1d405c9a -> :sswitch_2
        0x5c4d208 -> :sswitch_3
        0xb5049aa -> :sswitch_1
        0x62c32c53 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
