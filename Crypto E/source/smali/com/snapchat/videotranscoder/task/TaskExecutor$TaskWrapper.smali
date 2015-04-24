.class Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/videotranscoder/task/TaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskWrapper"
.end annotation


# instance fields
.field a:Lcom/snapchat/videotranscoder/task/Task;

.field b:Lcom/snapchat/videotranscoder/task/Task$DoneCallback;

.field c:Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;

.field final synthetic d:Lcom/snapchat/videotranscoder/task/TaskExecutor;


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/task/TaskExecutor;Lcom/snapchat/videotranscoder/task/Task;Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->d:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->a:Lcom/snapchat/videotranscoder/task/Task;

    .line 27
    iput-object p3, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->b:Lcom/snapchat/videotranscoder/task/Task$DoneCallback;

    .line 28
    iput-object p4, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->c:Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;

    .line 29
    return-void
.end method
