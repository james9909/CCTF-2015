.class Lcom/snapchat/android/fragments/sendto/SendToFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/sendto/SendToFragment;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/sendto/SendToFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 218
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->d()V

    .line 219
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    .line 220
    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    .line 222
    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->r()Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

    move-result-object v1

    if-eqz v1, :cond_4

    move v3, v4

    .line 223
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/User;->a()V

    .line 226
    :cond_1
    invoke-static {}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/Mediabryo;->a(Ljava/util/LinkedHashSet;)V

    .line 227
    invoke-static {}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v1

    instance-of v1, v1, Lcom/snapchat/android/model/Snapbryo;

    if-eqz v1, :cond_3

    .line 228
    invoke-static {}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/Snapbryo;

    .line 229
    iget-object v2, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 231
    invoke-static {v4}, Lcom/snapchat/android/model/UserPrefs;->h(Z)V

    .line 232
    invoke-static {}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/Snapbryo;

    iget-object v6, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v6}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/LinkedHashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v4

    :goto_2
    const-string v7, "SEND_TO_SCREEN"

    invoke-static {v2, v3, v6, v7}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;ZZLjava/lang/String;)V

    .line 235
    :cond_2
    iget-object v2, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/Snapbryo;->a(Ljava/util/ArrayList;)V

    .line 237
    :cond_3
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->f(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v3

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    if-lez v1, :cond_6

    move v1, v4

    :goto_3
    iget-object v2, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    move v2, v4

    :goto_4
    invoke-virtual {v3, v1, v2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(ZZ)V

    .line 238
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/SnapReadyForSendingEvent;

    invoke-static {}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lcom/snapchat/android/util/eventbus/SnapReadyForSendingEvent;-><init>(Lcom/snapchat/android/model/Mediabryo;Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 239
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/CancelReplyEvent;

    invoke-direct {v2}, Lcom/snapchat/android/util/eventbus/CancelReplyEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 240
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/CancelInChatSnapEvent;

    invoke-direct {v2, v5}, Lcom/snapchat/android/util/eventbus/CancelInChatSnapEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 241
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/CancelQuickSnapEvent;

    invoke-direct {v2, v5}, Lcom/snapchat/android/util/eventbus/CancelQuickSnapEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 244
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/CameraStateEvent;

    invoke-direct {v2, v4}, Lcom/snapchat/android/util/eventbus/CameraStateEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 247
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->g(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_4
    move v3, v5

    .line 222
    goto/16 :goto_1

    :cond_5
    move v6, v5

    .line 232
    goto :goto_2

    :cond_6
    move v1, v5

    .line 237
    goto :goto_3

    :cond_7
    move v2, v5

    goto :goto_4
.end method
