.class Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Landroid/view/View;Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$1;->b:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$1;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$1;->b:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;)V

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$1;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 58
    return-void
.end method
