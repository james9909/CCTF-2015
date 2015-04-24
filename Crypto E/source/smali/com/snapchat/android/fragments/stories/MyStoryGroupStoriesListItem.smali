.class public Lcom/snapchat/android/fragments/stories/MyStoryGroupStoriesListItem;
.super Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/snapchat/android/model/MyStoryGroup;->a()Lcom/snapchat/android/model/MyStoryGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;-><init>(Lcom/snapchat/android/model/StoryGroup;)V

    .line 15
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/MyStoryGroupStoriesListItem;->b:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 19
    invoke-static {}, Lcom/snapchat/android/model/MyStoryGroup;->a()Lcom/snapchat/android/model/MyStoryGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;-><init>(Lcom/snapchat/android/model/StoryGroup;)V

    .line 20
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/MyStoryGroupStoriesListItem;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/MyStoryGroupStoriesListItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public r_()Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
