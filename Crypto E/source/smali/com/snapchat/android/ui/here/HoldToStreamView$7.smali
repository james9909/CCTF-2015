.class Lcom/snapchat/android/ui/here/HoldToStreamView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/here/HoldToStreamView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/snapchat/android/ui/here/HoldToStreamView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/here/HoldToStreamView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 732
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    iput-boolean p2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->d(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;->a:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Z)V

    .line 737
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    iget-object v1, v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Landroid/view/View;

    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->c(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;->a:Z

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;->c(Z)V

    .line 741
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->e(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    .line 742
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->f(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    .line 743
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;->a:Z

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->g(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    .line 745
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->c(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;->o()V

    .line 749
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->i(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/snapchat/android/analytics/HereAnalytics;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;->a:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Z)V

    .line 750
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->invalidate()V

    .line 751
    return-void

    .line 737
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;->b:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->h(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    goto :goto_1
.end method
