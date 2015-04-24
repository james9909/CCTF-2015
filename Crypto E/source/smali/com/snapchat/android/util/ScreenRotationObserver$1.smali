.class Lcom/snapchat/android/util/ScreenRotationObserver$1;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/ScreenRotationObserver;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/ScreenRotationObserver;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/ScreenRotationObserver;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/snapchat/android/util/ScreenRotationObserver$1;->a:Lcom/snapchat/android/util/ScreenRotationObserver;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/snapchat/android/util/ScreenRotationObserver$1;->a:Lcom/snapchat/android/util/ScreenRotationObserver;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/ScreenRotationObserver;->a(I)V

    .line 75
    return-void
.end method
