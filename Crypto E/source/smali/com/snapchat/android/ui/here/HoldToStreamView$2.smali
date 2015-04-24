.class Lcom/snapchat/android/ui/here/HoldToStreamView$2;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/here/HoldToStreamView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/here/HoldToStreamView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$2;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/rebound/Spring;)V
    .locals 4
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$2;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Z

    if-nez v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$2;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    iget-object v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$2;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    iget-object v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->b()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 236
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$2;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->a(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    goto :goto_0
.end method
