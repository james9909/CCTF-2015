.class Lcom/snapchat/android/ui/VideoFilterView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/VideoFilterView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/VideoFilterView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/VideoFilterView;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/snapchat/android/ui/VideoFilterView$2;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 263
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$2;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v0}, Lcom/snapchat/android/ui/VideoFilterView;->b(Lcom/snapchat/android/ui/VideoFilterView;)Lcom/snapchat/videotranscoder/task/TaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/VideoFilterView$2;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v1}, Lcom/snapchat/android/ui/VideoFilterView;->a(Lcom/snapchat/android/ui/VideoFilterView;)Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/ui/VideoFilterView$RenderDoneCallBack;

    iget-object v3, p0, Lcom/snapchat/android/ui/VideoFilterView$2;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-direct {v2, v3, v5}, Lcom/snapchat/android/ui/VideoFilterView$RenderDoneCallBack;-><init>(Lcom/snapchat/android/ui/VideoFilterView;Lcom/snapchat/android/ui/VideoFilterView$1;)V

    new-instance v3, Lcom/snapchat/android/ui/VideoFilterView$ProgressUpdateCallback;

    iget-object v4, p0, Lcom/snapchat/android/ui/VideoFilterView$2;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-direct {v3, v4, v5}, Lcom/snapchat/android/ui/VideoFilterView$ProgressUpdateCallback;-><init>(Lcom/snapchat/android/ui/VideoFilterView;Lcom/snapchat/android/ui/VideoFilterView$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/videotranscoder/task/TaskExecutor;->a(Lcom/snapchat/videotranscoder/task/Task;Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    .line 264
    return-void
.end method
