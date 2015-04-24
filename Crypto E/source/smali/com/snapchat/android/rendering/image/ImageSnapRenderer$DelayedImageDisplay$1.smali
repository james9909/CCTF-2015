.class Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay;->a(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver;

.field final synthetic b:Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay;


# direct methods
.method constructor <init>(Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay;Landroid/view/ViewTreeObserver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay$1;->b:Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay;

    iput-object p2, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay$1;->a:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay$1;->a:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay$1;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay$1;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 179
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
