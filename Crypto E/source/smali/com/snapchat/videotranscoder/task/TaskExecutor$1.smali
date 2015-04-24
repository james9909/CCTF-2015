.class Lcom/snapchat/videotranscoder/task/TaskExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/videotranscoder/task/Task$DoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/videotranscoder/task/TaskExecutor;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

.field final synthetic b:Lcom/snapchat/videotranscoder/task/TaskExecutor;


# direct methods
.method constructor <init>(Lcom/snapchat/videotranscoder/task/TaskExecutor;Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor$1;->b:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    iput-object p2, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor$1;->a:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor$1;->b:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor$1;->a:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    invoke-static {v0, v1, p1}, Lcom/snapchat/videotranscoder/task/TaskExecutor;->a(Lcom/snapchat/videotranscoder/task/TaskExecutor;Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 94
    return-void
.end method
