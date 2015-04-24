.class Lcom/snapchat/android/ui/here/HoldToStreamView$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/here/HoldToStreamView;->t()V
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
    .line 1038
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$11;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$11;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    new-instance v1, Lcom/snapchat/android/ui/here/HoldToStreamView$11$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$11$1;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView$11;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/ui/here/HoldToStreamView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1049
    return-void
.end method
