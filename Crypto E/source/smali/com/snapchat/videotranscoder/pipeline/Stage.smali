.class public abstract Lcom/snapchat/videotranscoder/pipeline/Stage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected e:Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;

.field public f:Z


# direct methods
.method protected constructor <init>(Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Stage;->e:Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Stage;->f:Z

    .line 16
    iput-object p1, p0, Lcom/snapchat/videotranscoder/pipeline/Stage;->e:Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;

    .line 17
    return-void
.end method


# virtual methods
.method public abstract d()V
.end method

.method public h()V
    .locals 2

    .prologue
    .line 23
    const-string v0, "STAGE"

    const-string v1, "Marking stage complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Stage;->f:Z

    .line 25
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Stage;->e:Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;

    invoke-interface {v0}, Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;->a()V

    .line 26
    return-void
.end method
