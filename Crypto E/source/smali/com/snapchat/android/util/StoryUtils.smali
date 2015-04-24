.class public Lcom/snapchat/android/util/StoryUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/StorySnap;Z)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 18
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->aB()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    const-string v1, "my_story_ads79sdf"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryLibrary;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    .line 29
    :goto_1
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StorySnap;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/StorySnap;->d(I)V

    .line 33
    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnap;->J()V

    .line 34
    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryCollection;->b(Lcom/snapchat/android/model/StorySnap;)V

    .line 35
    invoke-virtual {v1, p2}, Lcom/snapchat/android/model/StorySnap;->e(Z)V

    goto :goto_0

    .line 26
    :cond_2
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->aB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryLibrary;->c(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    goto :goto_1
.end method
