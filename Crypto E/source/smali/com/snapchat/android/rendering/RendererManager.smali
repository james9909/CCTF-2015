.class public Lcom/snapchat/android/rendering/RendererManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

.field private final b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-array v1, v3, [Lcom/snapchat/android/rendering/SnapMediaRenderer;

    iput-object v1, p0, Lcom/snapchat/android/rendering/RendererManager;->a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    .line 20
    new-array v1, v3, [Lcom/snapchat/android/rendering/SnapMediaRenderer;

    iput-object v1, p0, Lcom/snapchat/android/rendering/RendererManager;->b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    .line 22
    iput v0, p0, Lcom/snapchat/android/rendering/RendererManager;->c:I

    .line 23
    iput v0, p0, Lcom/snapchat/android/rendering/RendererManager;->d:I

    .line 26
    :goto_0
    if-ge v0, v3, :cond_0

    .line 27
    iget-object v1, p0, Lcom/snapchat/android/rendering/RendererManager;->a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    new-instance v2, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-direct {v2, p1}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 28
    iget-object v1, p0, Lcom/snapchat/android/rendering/RendererManager;->b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    new-instance v2, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;

    invoke-direct {v2, p1}, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Z)Lcom/snapchat/android/rendering/SnapMediaRenderer;
    .locals 3
    .parameter

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/snapchat/android/rendering/RendererManager;->a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    iget v1, p0, Lcom/snapchat/android/rendering/RendererManager;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/snapchat/android/rendering/RendererManager;->c:I

    rem-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    .line 43
    :goto_0
    return-object v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/rendering/RendererManager;->b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    iget v1, p0, Lcom/snapchat/android/rendering/RendererManager;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/snapchat/android/rendering/RendererManager;->d:I

    rem-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/snapchat/android/rendering/RendererManager;->a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->d()V

    .line 64
    iget-object v1, p0, Lcom/snapchat/android/rendering/RendererManager;->b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->d()V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/snapchat/android/rendering/RendererManager;->a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->a(Landroid/view/ViewGroup;)V

    .line 54
    iget-object v1, p0, Lcom/snapchat/android/rendering/RendererManager;->b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->a(Landroid/view/ViewGroup;)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/rendering/SnapMediaRenderer;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/snapchat/android/rendering/RendererManager;->a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/snapchat/android/rendering/RendererManager;->a:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->d()V

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/rendering/RendererManager;->b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/snapchat/android/rendering/RendererManager;->b:[Lcom/snapchat/android/rendering/SnapMediaRenderer;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->d()V

    .line 74
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_2
    return-void
.end method
