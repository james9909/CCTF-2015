.class Lcom/snapchat/videotranscoder/task/Task$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/videotranscoder/task/Task;->a(Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/videotranscoder/task/Task;

.field final synthetic b:Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;

.field final synthetic c:Lcom/snapchat/videotranscoder/task/Task$DoneCallback;

.field final synthetic d:Lcom/snapchat/videotranscoder/task/Task;


# direct methods
.method constructor <init>(Lcom/snapchat/videotranscoder/task/Task;Lcom/snapchat/videotranscoder/task/Task;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;Lcom/snapchat/videotranscoder/task/Task$DoneCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/Task$1;->d:Lcom/snapchat/videotranscoder/task/Task;

    iput-object p2, p0, Lcom/snapchat/videotranscoder/task/Task$1;->a:Lcom/snapchat/videotranscoder/task/Task;

    iput-object p3, p0, Lcom/snapchat/videotranscoder/task/Task$1;->b:Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;

    iput-object p4, p0, Lcom/snapchat/videotranscoder/task/Task$1;->c:Lcom/snapchat/videotranscoder/task/Task$DoneCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/Task$1;->a:Lcom/snapchat/videotranscoder/task/Task;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/Task$1;->b:Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/task/Task;->a(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    .line 79
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/Task$1;->c:Lcom/snapchat/videotranscoder/task/Task$DoneCallback;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/Task$1;->c:Lcom/snapchat/videotranscoder/task/Task$DoneCallback;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/Task$1;->a:Lcom/snapchat/videotranscoder/task/Task;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/Task;->a()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snapchat/videotranscoder/task/Task$DoneCallback;->a(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    :try_end_0
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/snapchat/videotranscoder/task/TranscodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string v1, "Task"

    const-string v2, "Task failed during setup"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/Task$1;->c:Lcom/snapchat/videotranscoder/task/Task$DoneCallback;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/Task$1;->c:Lcom/snapchat/videotranscoder/task/Task$DoneCallback;

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->c:Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-interface {v0, v1}, Lcom/snapchat/videotranscoder/task/Task$DoneCallback;->a(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    goto :goto_0

    .line 87
    :catch_1
    move-exception v0

    .line 88
    const-string v1, "Task"

    const-string v2, "Task failed during transcoding"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/Task$1;->c:Lcom/snapchat/videotranscoder/task/Task$DoneCallback;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/Task$1;->c:Lcom/snapchat/videotranscoder/task/Task$DoneCallback;

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->f:Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-interface {v0, v1}, Lcom/snapchat/videotranscoder/task/Task$DoneCallback;->a(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    goto :goto_0
.end method
