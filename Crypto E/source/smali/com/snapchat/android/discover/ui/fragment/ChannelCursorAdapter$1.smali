.class Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$1;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 87
    check-cast p1, Lcom/snapchat/android/discover/ui/ChannelView;

    .line 88
    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/ChannelView;->getChannelPage()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$1;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->a(Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/ChannelView;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$1;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    invoke-static {v1, v2}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->a(Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;Z)Z

    .line 92
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$1;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->b(Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;)Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$ChannelViewCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$ChannelViewCallback;->b()V

    .line 93
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$1;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->c(Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->c(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$1;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->d(Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;)Lcom/snapchat/android/discover/ui/OpenChannelAnimator;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimator;->a(Lcom/snapchat/android/discover/ui/ChannelView;)V

    .line 95
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$1;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->e(Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;)Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Lcom/snapchat/android/discover/model/ChannelPage;)V

    .line 104
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->n()Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    invoke-virtual {p1, v2}, Lcom/snapchat/android/discover/ui/ChannelView;->setProgressBarVisibility(Z)V

    .line 99
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$1;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->f(Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;)Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V

    .line 100
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$1;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->e(Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;)Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Lcom/snapchat/android/discover/model/ChannelPage;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$1;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    invoke-static {v1, v0}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->a(Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;Lcom/snapchat/android/discover/model/ChannelPage;)V

    goto :goto_0
.end method
