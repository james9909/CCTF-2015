.class Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


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
    .line 105
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iput-boolean v6, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->t:Z

    .line 109
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iput-boolean v6, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->u:Z

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->j:Z

    .line 115
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-object v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-wide v2, v1, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->r:D

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    float-to-double v4, v1

    mul-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;D)V

    .line 116
    return v6
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;Z)Z

    .line 121
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;Z)Z

    .line 126
    return-void
.end method
