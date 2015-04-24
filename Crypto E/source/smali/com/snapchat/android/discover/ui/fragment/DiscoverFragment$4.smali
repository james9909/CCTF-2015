.class Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a(Lcom/snapchat/android/discover/ui/ChannelView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/ChannelView;

.field final synthetic b:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;Lcom/snapchat/android/discover/ui/ChannelView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->b:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->a:Lcom/snapchat/android/discover/ui/ChannelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->b:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    new-instance v1, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-direct {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;-><init>()V

    invoke-static {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    .line 272
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->a:Lcom/snapchat/android/discover/ui/ChannelView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/ChannelView;->getChannelPage()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    .line 274
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 276
    sget-object v2, Lcom/snapchat/android/discover/model/ChannelPage;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 277
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->b:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 278
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;->b:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-static {v2}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 279
    return-void
.end method
