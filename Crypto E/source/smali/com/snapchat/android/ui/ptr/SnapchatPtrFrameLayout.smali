.class public Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;
.super Lin/srain/cube/views/ptr/PtrFrameLayout;
.source "SourceFile"


# instance fields
.field private final e:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const v0, 0x3fd9999a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setResistance(F)V

    .line 40
    const v0, 0x3f99999a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setRatioOfHeaderHeightToRefresh(F)V

    .line 41
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setDurationToClose(I)V

    .line 42
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setDurationToCloseHeader(I)V

    .line 43
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setKeepHeaderWhenRefresh(Z)V

    .line 44
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->a(Z)V

    .line 46
    new-instance v0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    invoke-direct {v0, p1}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->e:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->e:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setHeaderView(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->e:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->a(Lin/srain/cube/views/ptr/PtrUIHandler;)V

    .line 49
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 55
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 56
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->e:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a()Z

    move-result v0

    return v0
.end method
