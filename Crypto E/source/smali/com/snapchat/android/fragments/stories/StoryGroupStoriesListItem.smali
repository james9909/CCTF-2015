.class public Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/stories/StoriesListItem;


# instance fields
.field protected final a:Lcom/snapchat/android/model/StoryGroup;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/StoryGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->a:Lcom/snapchat/android/model/StoryGroup;

    .line 16
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/StorySnap;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/snapchat/android/model/StoryGroup;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->a:Lcom/snapchat/android/model/StoryGroup;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 58
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    .line 60
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    if-nez v0, :cond_1

    .line 61
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_1
    check-cast p1, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    .line 65
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->m()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;->a:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    return v0
.end method

.method public r_()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->d()Ljava/lang/String;

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
