.class Lcom/snapchat/android/ui/CashSwiperView$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/CashSwiperView$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/CashSwiperView$8;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/CashSwiperView$8;)V
    .locals 0
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$8$1;->a:Lcom/snapchat/android/ui/CashSwiperView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$8$1;->a:Lcom/snapchat/android/ui/CashSwiperView$8;

    iget-object v0, v0, Lcom/snapchat/android/ui/CashSwiperView$8;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->h(Lcom/snapchat/android/ui/CashSwiperView;)V

    .line 516
    return-void
.end method
