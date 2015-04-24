.class public Lcom/snapchat/android/api/SharedStorySearchTask;
.super Lcom/snapchat/android/api/RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api/SharedStorySearchTask$SharedStorySearchTaskCallback;
    }
.end annotation


# static fields
.field private static final TASK_NAME:Ljava/lang/String; = "SharedStorySearchTask"


# instance fields
.field private mCallback:Lcom/snapchat/android/api/SharedStorySearchTask$SharedStorySearchTaskCallback;

.field private mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/android/api/SharedStorySearchTask$SharedStorySearchTaskCallback;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/snapchat/android/api/SharedStorySearchTask;->mQuery:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/snapchat/android/api/SharedStorySearchTask;->mCallback:Lcom/snapchat/android/api/SharedStorySearchTask$SharedStorySearchTaskCallback;

    .line 27
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "/loq/friend_search"

    return-object v0
.end method

.method protected b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string v1, "username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "query"

    iget-object v2, p0, Lcom/snapchat/android/api/SharedStorySearchTask;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-object v0
.end method

.method protected b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->result:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/snapchat/android/api/SharedStorySearchTask;->mCallback:Lcom/snapchat/android/api/SharedStorySearchTask$SharedStorySearchTaskCallback;

    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->result:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/SharedStorySearchTask$SharedStorySearchTaskCallback;->a(Ljava/util/ArrayList;)V

    .line 47
    :cond_0
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "SharedStorySearchTask"

    return-object v0
.end method
