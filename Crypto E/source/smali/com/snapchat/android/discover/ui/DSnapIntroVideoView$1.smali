.class Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->a(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    sget-object v1, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->b:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    invoke-static {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->a(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;)Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    .line 158
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->a(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;->a()V

    .line 160
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 168
    const-string v0, "DSnapIntroVideoView"

    const-string v1, "Skipping intro video for %b because the media failed to load (%s)."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    iget-object v4, v4, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    iget-object v0, v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->d:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    iget-object v1, v1, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    iget-object v2, v2, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a()V

    .line 175
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    iget-object v1, v1, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0, v1, v2, v2}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V

    .line 164
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;->a:Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->b(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    return-void
.end method
