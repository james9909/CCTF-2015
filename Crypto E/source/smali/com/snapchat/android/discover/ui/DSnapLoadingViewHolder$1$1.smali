.class Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$1;->a(Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$1;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$1$1;->a:Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$1$1;->a:Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$1;

    iget-object v0, v0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$1;->a:Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->a(Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 138
    return-void
.end method
