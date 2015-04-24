.class Lcom/snapchat/android/ui/VideoFilterView$ProgressUpdateCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/VideoFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressUpdateCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/VideoFilterView;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/snapchat/android/ui/VideoFilterView;)V
    .locals 1
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/snapchat/android/ui/VideoFilterView$ProgressUpdateCallback;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/VideoFilterView$ProgressUpdateCallback;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/ui/VideoFilterView;Lcom/snapchat/android/ui/VideoFilterView$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/VideoFilterView$ProgressUpdateCallback;-><init>(Lcom/snapchat/android/ui/VideoFilterView;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 307
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VideoFilterView$ProgressUpdateCallback;->b:Z

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$ProgressUpdateCallback;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v0}, Lcom/snapchat/android/ui/VideoFilterView;->f(Lcom/snapchat/android/ui/VideoFilterView;)Lcom/snapchat/android/ui/SwipeVideoViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView$ProgressUpdateCallback;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v1}, Lcom/snapchat/android/ui/VideoFilterView;->a(Lcom/snapchat/android/ui/VideoFilterView;)Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeVideoViewController;->a(Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;)V

    .line 309
    iput-boolean v3, p0, Lcom/snapchat/android/ui/VideoFilterView$ProgressUpdateCallback;->b:Z

    .line 311
    :cond_0
    const-string v0, "VideoFilterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rendering is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% complete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    return-void
.end method
