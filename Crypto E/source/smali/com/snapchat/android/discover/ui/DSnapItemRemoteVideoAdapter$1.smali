.class Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$1;->a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$1;->a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->a(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 312
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$1;->a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->b(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MediaController;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 313
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$1;->a:Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->a(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    return-void
.end method
