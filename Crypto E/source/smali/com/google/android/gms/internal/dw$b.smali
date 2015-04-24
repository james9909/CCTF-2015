.class final Lcom/google/android/gms/internal/dw$b;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final lC:Lcom/google/android/gms/internal/hb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/hb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/hb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dw$b;->lC:Lcom/google/android/gms/internal/hb;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dw$b;->lC:Lcom/google/android/gms/internal/hb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hb;->c(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    return v0
.end method
