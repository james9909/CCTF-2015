.class Lcom/snapchat/android/ui/here/HoldToStreamView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/here/HoldToStreamView;->m()V
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
    .line 671
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$4;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 674
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$4;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/here/HoldToStreamView;->a(Lcom/snapchat/android/ui/here/HoldToStreamView;Z)Z

    .line 675
    return-void
.end method
