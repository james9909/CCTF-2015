.class Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/caption/FatCaptionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->v:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;Lcom/snapchat/android/ui/caption/CaptionColorRange;)Lcom/snapchat/android/ui/caption/CaptionColorRange;

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->v:Z

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->performLongClick()Z

    .line 95
    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->v:Z

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;Lcom/snapchat/android/ui/caption/CaptionColorRange;)Lcom/snapchat/android/ui/caption/CaptionColorRange;

    .line 100
    const/4 v0, 0x1

    return v0
.end method
