.class public Lcom/snapchat/android/rendering/image/ImageSnapRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/rendering/SnapMediaRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/LayoutInflater;

.field private final d:Lcom/snapchat/android/util/bitmap/BitmapRecycling;

.field private final e:Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay;

.field private final f:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/snapchat/android/model/ReceivedSnap;

.field private j:Lcom/snapchat/android/util/cache/CancelableCacheCompletedCallback;

.field private k:Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "ImageSnapRenderer"

    sput-object v0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 48
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    new-instance v3, Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    invoke-direct {v3}, Lcom/snapchat/android/util/bitmap/BitmapRecycling;-><init>()V

    new-instance v4, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay;

    invoke-direct {v4}, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay;-><init>()V

    invoke-static {}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a()Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/snapchat/android/util/bitmap/BitmapRecycling;Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;)V

    .line 50
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/snapchat/android/util/bitmap/BitmapRecycling;Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->b:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->c:Landroid/view/LayoutInflater;

    .line 57
    iput-object p3, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->d:Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    .line 58
    iput-object p4, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->e:Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay;

    .line 59
    iput-object p5, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->f:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/rendering/image/ImageSnapRenderer;)Lcom/snapchat/android/model/ReceivedSnap;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->i:Lcom/snapchat/android/model/ReceivedSnap;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/rendering/image/ImageSnapRenderer;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/rendering/image/ImageSnapRenderer;)Lcom/snapchat/android/analytics/SnapViewEventAnalytics;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->f:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/rendering/image/ImageSnapRenderer;)Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->k:Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 117
    sget-object v1, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->a:Ljava/lang/String;

    const-string v2, "Start %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->i:Lcom/snapchat/android/model/ReceivedSnap;

    if-nez v0, :cond_0

    const-string v0, "?"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->i:Lcom/snapchat/android/model/ReceivedSnap;

    if-nez v0, :cond_1

    .line 119
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Start called for null snap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->i:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->f:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    const-string v1, "DelayToShowImage"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->e:Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay;

    iget-object v1, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$DelayedImageDisplay;->a(Landroid/widget/ImageView;)V

    .line 130
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$2;-><init>(Lcom/snapchat/android/rendering/image/ImageSnapRenderer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 144
    :cond_2
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f04007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->g:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->g:Landroid/view/View;

    const v1, 0x7f0a02bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->h:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method public a(Lcom/snapchat/android/model/ReceivedSnap;ZLcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 87
    sget-object v0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iput-object p1, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->i:Lcom/snapchat/android/model/ReceivedSnap;

    .line 90
    iput-object p3, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->k:Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

    .line 91
    new-instance v0, Lcom/snapchat/android/util/cache/CancelableCacheCompletedCallback;

    new-instance v1, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$1;-><init>(Lcom/snapchat/android/rendering/image/ImageSnapRenderer;Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;Lcom/snapchat/android/model/ReceivedSnap;)V

    invoke-direct {v0, v1}, Lcom/snapchat/android/util/cache/CancelableCacheCompletedCallback;-><init>(Lcom/snapchat/android/util/cache/Cache$OnCompleted;)V

    iput-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->j:Lcom/snapchat/android/util/cache/CancelableCacheCompletedCallback;

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->j:Lcom/snapchat/android/util/cache/CancelableCacheCompletedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/snapchat/android/model/ReceivedSnap;->a(Landroid/content/Context;Lcom/snapchat/android/util/cache/Cache$OnCompleted;)V

    .line 113
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 148
    sget-object v1, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->a:Ljava/lang/String;

    const-string v2, "Stop %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->i:Lcom/snapchat/android/model/ReceivedSnap;

    if-nez v0, :cond_1

    const-string v0, "?"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iput-object v5, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->i:Lcom/snapchat/android/model/ReceivedSnap;

    .line 151
    iput-object v5, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->k:Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

    .line 152
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->j:Lcom/snapchat/android/util/cache/CancelableCacheCompletedCallback;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->j:Lcom/snapchat/android/util/cache/CancelableCacheCompletedCallback;

    invoke-virtual {v0}, Lcom/snapchat/android/util/cache/CancelableCacheCompletedCallback;->a()V

    .line 155
    :cond_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->i:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 71
    sget-object v1, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->a:Ljava/lang/String;

    const-string v2, "Show %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->i:Lcom/snapchat/android/model/ReceivedSnap;

    if-nez v0, :cond_0

    const-string v0, "?"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->i:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()V
    .locals 5

    .prologue
    .line 78
    sget-object v1, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->a:Ljava/lang/String;

    const-string v2, "Hide %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->i:Lcom/snapchat/android/model/ReceivedSnap;

    if-nez v0, :cond_0

    const-string v0, "?"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->d:Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    iget-object v1, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/bitmap/BitmapRecycling;->a(Landroid/widget/ImageView;)V

    .line 82
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->i:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
