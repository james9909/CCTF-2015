.class Lcom/snapchat/android/ui/cash/ParticleView$1;
.super Lcom/snapchat/android/ui/CashSwiperView$AnimationEndListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/cash/ParticleView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/cash/ParticleView;

.field final synthetic b:Lcom/snapchat/android/ui/cash/ParticleView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/cash/ParticleView;Lcom/snapchat/android/ui/cash/ParticleView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/snapchat/android/ui/cash/ParticleView$1;->b:Lcom/snapchat/android/ui/cash/ParticleView;

    iput-object p2, p0, Lcom/snapchat/android/ui/cash/ParticleView$1;->a:Lcom/snapchat/android/ui/cash/ParticleView;

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView$AnimationEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/ParticleView$1;->b:Lcom/snapchat/android/ui/cash/ParticleView;

    invoke-static {v0}, Lcom/snapchat/android/ui/cash/ParticleView;->a(Lcom/snapchat/android/ui/cash/ParticleView;)Lcom/snapchat/android/ui/cash/ParticleView$ParticleAnimationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/cash/ParticleView$1;->a:Lcom/snapchat/android/ui/cash/ParticleView;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/cash/ParticleView$ParticleAnimationListener;->a(Lcom/snapchat/android/ui/cash/ParticleView;)V

    .line 88
    return-void
.end method
