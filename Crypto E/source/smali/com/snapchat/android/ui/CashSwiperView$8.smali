.class Lcom/snapchat/android/ui/CashSwiperView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/CashSwiperView;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/CashSwiperView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/CashSwiperView;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$8;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 511
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$8;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->g(Lcom/snapchat/android/ui/CashSwiperView;)V

    .line 512
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$8;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->i(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/ui/CashSwiperView$8$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/CashSwiperView$8$1;-><init>(Lcom/snapchat/android/ui/CashSwiperView$8;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 518
    return-void
.end method
