.class Lcom/snapchat/android/ui/CashSwiperView$DollarGestureDetectorListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/CashSwiperView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DollarGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/CashSwiperView;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/ui/CashSwiperView;)V
    .locals 0
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$DollarGestureDetectorListener;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/ui/CashSwiperView;Lcom/snapchat/android/ui/CashSwiperView$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 737
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/CashSwiperView$DollarGestureDetectorListener;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 740
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$DollarGestureDetectorListener;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/snapchat/android/util/ViewUtils;->b(FLandroid/content/Context;)F

    move-result v0

    const v1, -0x3b448000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$DollarGestureDetectorListener;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0, p4}, Lcom/snapchat/android/ui/CashSwiperView;->b(Lcom/snapchat/android/ui/CashSwiperView;F)V

    .line 743
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
