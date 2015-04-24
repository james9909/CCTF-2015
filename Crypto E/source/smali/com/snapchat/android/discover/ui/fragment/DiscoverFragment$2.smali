.class Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;
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
    .line 116
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$2;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$2;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$2;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->a:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V

    .line 121
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$2;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f()V

    .line 123
    :cond_0
    return-void
.end method
