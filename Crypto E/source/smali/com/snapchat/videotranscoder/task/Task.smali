.class public abstract Lcom/snapchat/videotranscoder/task/Task;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;,
        Lcom/snapchat/videotranscoder/task/Task$DoneCallback;,
        Lcom/snapchat/videotranscoder/task/Task$Status;
    }
.end annotation


# instance fields
.field private volatile a:Lcom/snapchat/videotranscoder/task/Task$Status;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->a:Lcom/snapchat/videotranscoder/task/Task$Status;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/Task;->a:Lcom/snapchat/videotranscoder/task/Task$Status;

    .line 41
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/videotranscoder/task/Task$Status;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/Task;->a:Lcom/snapchat/videotranscoder/task/Task$Status;

    return-object v0
.end method

.method public a(Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 73
    .line 75
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/snapchat/videotranscoder/task/Task$1;

    invoke-direct {v1, p0, p0, p2, p1}, Lcom/snapchat/videotranscoder/task/Task$1;-><init>(Lcom/snapchat/videotranscoder/task/Task;Lcom/snapchat/videotranscoder/task/Task;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;Lcom/snapchat/videotranscoder/task/Task$DoneCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 96
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 97
    return-void
.end method

.method public abstract a(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
.end method

.method protected a(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/Task;->a:Lcom/snapchat/videotranscoder/task/Task$Status;

    .line 63
    return-void
.end method

.method public abstract b()Lcom/snapchat/videotranscoder/task/Task$Status;
.end method
