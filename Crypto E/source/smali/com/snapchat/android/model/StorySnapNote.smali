.class public Lcom/snapchat/android/model/StorySnapNote;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/snapchat/android/model/StorySnapNote;",
        ">;"
    }
.end annotation


# instance fields
.field private mStoryPointer:Lcom/snapchat/android/model/StoryPointer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "storypointer"
    .end annotation
.end field

.field private mTimestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field private mViewer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "viewer"
    .end annotation
.end field

.field private mWasScreenshot:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "screenshotted"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Long;Lcom/snapchat/android/model/StoryPointer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/snapchat/android/model/StorySnapNote;->mViewer:Ljava/lang/String;

    .line 27
    iput-boolean p2, p0, Lcom/snapchat/android/model/StorySnapNote;->mWasScreenshot:Z

    .line 28
    iput-object p3, p0, Lcom/snapchat/android/model/StorySnapNote;->mTimestamp:Ljava/lang/Long;

    .line 29
    iput-object p4, p0, Lcom/snapchat/android/model/StorySnapNote;->mStoryPointer:Lcom/snapchat/android/model/StoryPointer;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/StorySnapNote;)I
    .locals 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapNote;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapNote;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/snapchat/android/model/StorySnapNote;->mWasScreenshot:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapNote;->mViewer:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapNote;->mTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 5
    check-cast p1, Lcom/snapchat/android/model/StorySnapNote;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/StorySnapNote;->a(Lcom/snapchat/android/model/StorySnapNote;)I

    move-result v0

    return v0
.end method

.method public d()Lcom/snapchat/android/model/StoryPointer;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapNote;->mStoryPointer:Lcom/snapchat/android/model/StoryPointer;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 34
    move-object v0, p1

    check-cast v0, Lcom/snapchat/android/model/StorySnapNote;

    .line 35
    instance-of v2, p1, Lcom/snapchat/android/model/StorySnapNote;

    if-nez v2, :cond_0

    move v0, v1

    .line 46
    :goto_0
    return v0

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/model/StorySnapNote;->mViewer:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapNote;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-boolean v2, p0, Lcom/snapchat/android/model/StorySnapNote;->mWasScreenshot:Z

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapNote;->a()Z

    move-result v3

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v2, p0, Lcom/snapchat/android/model/StorySnapNote;->mStoryPointer:Lcom/snapchat/android/model/StoryPointer;

    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryPointer;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapNote;->d()Lcom/snapchat/android/model/StoryPointer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryPointer;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    iget-object v2, p0, Lcom/snapchat/android/model/StorySnapNote;->mStoryPointer:Lcom/snapchat/android/model/StoryPointer;

    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryPointer;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapNote;->d()Lcom/snapchat/android/model/StoryPointer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryPointer;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 44
    goto :goto_0

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/snapchat/android/model/StorySnapNote;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapNote;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/android/model/StorySnapNote;->mViewer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/model/StorySnapNote;->mWasScreenshot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/StorySnapNote;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/StorySnapNote;->mStoryPointer:Lcom/snapchat/android/model/StoryPointer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
