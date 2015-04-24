.class Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5$1;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 312
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5$1;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;

    iget-object v0, v0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SoftNavigationBarEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SoftNavigationBarEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5$1;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;

    iget-object v0, v0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/CameraStateEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/CameraStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 314
    return-void
.end method
