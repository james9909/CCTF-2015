.class public Lcom/snapchat/android/discover/ui/RemoteVideoLoadingOverlayPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    const v0, 0x7f0a01b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/RemoteVideoLoadingOverlayPresenter;->a:Landroid/widget/ProgressBar;

    .line 22
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/model/MediaState;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 31
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/MediaState;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/RemoteVideoLoadingOverlayPresenter;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 38
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/MediaState;->a()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/RemoteVideoLoadingOverlayPresenter;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/RemoteVideoLoadingOverlayPresenter;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
