.class public Lcom/snapchat/android/profile/ui/ProfileScrolledListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;


# instance fields
.field private final a:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/profile/ui/ProfileViewFlipper;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/snapchat/android/profile/ui/ProfileScrolledListener;->a:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    .line 24
    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 28
    iget-object v0, p0, Lcom/snapchat/android/profile/ui/ProfileScrolledListener;->a:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/profile/ui/ProfileScrolledListener;->a:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->setFullscreenWindowParams(Z)V

    .line 37
    iget-object v0, p0, Lcom/snapchat/android/profile/ui/ProfileScrolledListener;->a:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    if-eq p3, v1, :cond_0

    .line 39
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public c(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 45
    iget-object v0, p0, Lcom/snapchat/android/profile/ui/ProfileScrolledListener;->a:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/profile/ui/ProfileScrolledListener;->a:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    instance-of v1, v0, Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;

    if-eqz v1, :cond_2

    .line 51
    check-cast v0, Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;

    .line 52
    if-nez p1, :cond_5

    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;->a(Z)V

    .line 55
    :cond_2
    if-nez p1, :cond_4

    .line 57
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MAIN_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-static {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)V

    .line 58
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->av()Z

    move-result v0

    if-nez v0, :cond_3

    .line 59
    invoke-static {v2}, Lcom/snapchat/android/model/UserPrefs;->z(Z)V

    .line 63
    :cond_3
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 64
    if-nez v0, :cond_6

    move v0, v3

    .line 66
    :goto_2
    if-eqz v0, :cond_8

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->aw()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    .line 68
    :goto_3
    if-eqz v0, :cond_4

    .line 69
    invoke-static {v2}, Lcom/snapchat/android/model/UserPrefs;->A(Z)V

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/profile/ui/ProfileScrolledListener;->a:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/snapchat/android/profile/ui/ProfileScrolledListener;->a:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    if-eqz p1, :cond_9

    move v0, v2

    :goto_4
    invoke-virtual {v1, v0}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->setFullscreenWindowParams(Z)V

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/profile/ui/ProfileScrolledListener;->a:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;

    if-ne p1, v2, :cond_a

    :goto_5
    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    move v1, v3

    .line 52
    goto :goto_1

    .line 64
    :cond_6
    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->d()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_2

    :cond_8
    move v0, v3

    .line 66
    goto :goto_3

    :cond_9
    move v0, v3

    .line 77
    goto :goto_4

    :cond_a
    move v2, v3

    .line 80
    goto :goto_5
.end method
