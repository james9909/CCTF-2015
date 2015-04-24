.class public Lcom/snapchat/android/util/ScreenRotationObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/ScreenRotationObserver$ScreenRotationListener;,
        Lcom/snapchat/android/util/ScreenRotationObserver$ScreenRotation;
    }
.end annotation


# instance fields
.field private a:Lcom/snapchat/android/util/ScreenRotationObserver$ScreenRotationListener;

.field private final b:Landroid/view/OrientationEventListener;

.field private final c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/util/ScreenRotationObserver;->a:Lcom/snapchat/android/util/ScreenRotationObserver$ScreenRotationListener;

    .line 72
    new-instance v0, Lcom/snapchat/android/util/ScreenRotationObserver$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/snapchat/android/util/ScreenRotationObserver$1;-><init>(Lcom/snapchat/android/util/ScreenRotationObserver;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/snapchat/android/util/ScreenRotationObserver;->b:Landroid/view/OrientationEventListener;

    .line 78
    iput p2, p0, Lcom/snapchat/android/util/ScreenRotationObserver;->c:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/util/ScreenRotationObserver;->d:I

    .line 80
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/util/ScreenRotationObserver;->d:I

    .line 131
    iget-object v0, p0, Lcom/snapchat/android/util/ScreenRotationObserver;->b:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/util/ScreenRotationObserver;->b:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 134
    :cond_0
    return-void
.end method

.method protected a(I)V
    .locals 2
    .parameter

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/ScreenRotationObserver;->b(I)I

    move-result v0

    .line 90
    iget v1, p0, Lcom/snapchat/android/util/ScreenRotationObserver;->d:I

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/snapchat/android/util/ScreenRotationObserver;->c:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 92
    iput v0, p0, Lcom/snapchat/android/util/ScreenRotationObserver;->d:I

    .line 93
    iget-object v1, p0, Lcom/snapchat/android/util/ScreenRotationObserver;->a:Lcom/snapchat/android/util/ScreenRotationObserver$ScreenRotationListener;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/snapchat/android/util/ScreenRotationObserver;->a:Lcom/snapchat/android/util/ScreenRotationObserver$ScreenRotationListener;

    invoke-interface {v1, v0}, Lcom/snapchat/android/util/ScreenRotationObserver$ScreenRotationListener;->a(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/util/ScreenRotationObserver$ScreenRotationListener;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/snapchat/android/util/ScreenRotationObserver;->a:Lcom/snapchat/android/util/ScreenRotationObserver$ScreenRotationListener;

    .line 148
    return-void
.end method

.method protected a(III)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    if-gt p2, p1, :cond_0

    if-gt p1, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 105
    const/16 v1, 0x152

    const/16 v2, 0x168

    invoke-virtual {p0, p1, v1, v2}, Lcom/snapchat/android/util/ScreenRotationObserver;->a(III)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x16

    invoke-virtual {p0, p1, v0, v1}, Lcom/snapchat/android/util/ScreenRotationObserver;->a(III)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    :cond_0
    const/4 v0, 0x1

    .line 118
    :cond_1
    :goto_0
    return v0

    .line 108
    :cond_2
    const/16 v1, 0xf8

    const/16 v2, 0x124

    invoke-virtual {p0, p1, v1, v2}, Lcom/snapchat/android/util/ScreenRotationObserver;->a(III)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    const/16 v0, 0x10

    goto :goto_0

    .line 111
    :cond_3
    const/16 v1, 0x9e

    const/16 v2, 0xca

    invoke-virtual {p0, p1, v1, v2}, Lcom/snapchat/android/util/ScreenRotationObserver;->a(III)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    const/16 v0, 0x100

    goto :goto_0

    .line 114
    :cond_4
    const/16 v1, 0x44

    const/16 v2, 0x70

    invoke-virtual {p0, p1, v1, v2}, Lcom/snapchat/android/util/ScreenRotationObserver;->a(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    const/16 v0, 0x1000

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/snapchat/android/util/ScreenRotationObserver;->b:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 141
    return-void
.end method
