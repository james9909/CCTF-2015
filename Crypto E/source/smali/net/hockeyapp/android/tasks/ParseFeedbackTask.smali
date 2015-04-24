.class public Lnet/hockeyapp/android/tasks/ParseFeedbackTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lnet/hockeyapp/android/objects/FeedbackResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->a:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->b:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->c:Landroid/os/Handler;

    .line 25
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lnet/hockeyapp/android/objects/FeedbackResponse;
    .locals 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lnet/hockeyapp/android/utils/FeedbackParser;->a()Lnet/hockeyapp/android/utils/FeedbackParser;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/utils/FeedbackParser;->a(Ljava/lang/String;)Lnet/hockeyapp/android/objects/FeedbackResponse;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lnet/hockeyapp/android/objects/FeedbackResponse;)V
    .locals 3
    .parameter

    .prologue
    .line 38
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 40
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v2, "parse_feedback_response"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 45
    iget-object v1, p0, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 47
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 16
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->a([Ljava/lang/Void;)Lnet/hockeyapp/android/objects/FeedbackResponse;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    check-cast p1, Lnet/hockeyapp/android/objects/FeedbackResponse;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/ParseFeedbackTask;->a(Lnet/hockeyapp/android/objects/FeedbackResponse;)V

    return-void
.end method
