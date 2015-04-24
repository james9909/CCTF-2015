.class public Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/rendering/image/ImageSnapRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelayedImageDisplay"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)V
    .locals 2
    .parameter

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 172
    new-instance v1, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay$1;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay$1;-><init>(Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 182
    return-void
.end method
