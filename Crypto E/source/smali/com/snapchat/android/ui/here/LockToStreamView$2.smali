.class Lcom/snapchat/android/ui/here/LockToStreamView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/here/LockToStreamView;->e(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/here/LockToStreamView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/here/LockToStreamView;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/snapchat/android/ui/here/LockToStreamView$2;->a:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 378
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView$2;->a:Lcom/snapchat/android/ui/here/LockToStreamView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(Lcom/snapchat/android/ui/here/LockToStreamView;Z)Z

    .line 379
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView$2;->a:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->c()V

    .line 380
    return-void
.end method
