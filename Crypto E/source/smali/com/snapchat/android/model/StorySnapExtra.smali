.class public Lcom/snapchat/android/model/StorySnapExtra;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mScreenshotCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "screenshot_count"
    .end annotation
.end field

.field private mViewCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "view_count"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/snapchat/android/model/StorySnapExtra;->mViewCount:I

    .line 12
    iput v0, p0, Lcom/snapchat/android/model/StorySnapExtra;->mScreenshotCount:I

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapNote;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/snapchat/android/model/StorySnapExtra;->mViewCount:I

    .line 12
    iput v0, p0, Lcom/snapchat/android/model/StorySnapExtra;->mScreenshotCount:I

    .line 18
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/model/StorySnapExtra;->mViewCount:I

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapNote;

    .line 21
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapNote;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget v0, p0, Lcom/snapchat/android/model/StorySnapExtra;->mScreenshotCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/model/StorySnapExtra;->mScreenshotCount:I

    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/snapchat/android/model/StorySnapExtra;->mViewCount:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/snapchat/android/model/StorySnapExtra;->mScreenshotCount:I

    return v0
.end method
