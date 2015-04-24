.class Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->onEditionClose(Lcom/snapchat/android/discover/util/eventbus/EditionClosedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    iget-object v0, v0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->a()V

    .line 309
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    iget-object v0, v0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    new-instance v1, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5$1;-><init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    return-void
.end method
