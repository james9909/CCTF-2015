.class public Lcom/snapchat/android/model/StorySnapLogbook;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/stories/StoriesListItem;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/StorySnapLogbook$ActionState;,
        Lcom/snapchat/android/model/StorySnapLogbook$StorySnapLogbookChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/snapchat/android/model/StorySnapLogbook;",
        ">;"
    }
.end annotation


# instance fields
.field private transient mActionState:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

.field private transient mChangedListener:Lcom/snapchat/android/model/StorySnapLogbook$StorySnapLogbookChangedListener;

.field private transient mIsDeletingAllowed:Z

.field private transient mStoryId:Ljava/lang/String;

.field private mStorySnap:Lcom/snapchat/android/model/StorySnap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "story"
    .end annotation
.end field

.field private mStorySnapExtra:Lcom/snapchat/android/model/StorySnapExtra;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "story_extras"
    .end annotation
.end field

.field private mStorySnapNotes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "story_notes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapNote;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->READY:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mActionState:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mIsDeletingAllowed:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mChangedListener:Lcom/snapchat/android/model/StorySnapLogbook$StorySnapLogbookChangedListener;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->READY:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mActionState:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mIsDeletingAllowed:Z

    .line 45
    iput-object v1, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mChangedListener:Lcom/snapchat/android/model/StorySnapLogbook$StorySnapLogbookChangedListener;

    .line 60
    new-instance v0, Lcom/snapchat/android/model/StorySnap;

    invoke-direct {v0, p1}, Lcom/snapchat/android/model/StorySnap;-><init>(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    .line 61
    iput-object v1, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnapNotes:Ljava/util/List;

    .line 62
    iput-object v1, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnapExtra:Lcom/snapchat/android/model/StorySnapExtra;

    .line 63
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->l()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/PostToStory;

    invoke-virtual {v0}, Lcom/snapchat/android/model/PostToStory;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStoryId:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/StorySnap;Ljava/util/List;Lcom/snapchat/android/model/StorySnapExtra;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/StorySnap;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapNote;",
            ">;",
            "Lcom/snapchat/android/model/StorySnapExtra;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->READY:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mActionState:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mIsDeletingAllowed:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mChangedListener:Lcom/snapchat/android/model/StorySnapLogbook$StorySnapLogbookChangedListener;

    .line 50
    iput-object p1, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    .line 51
    iput-object p2, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnapNotes:Ljava/util/List;

    .line 52
    iput-object p3, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnapExtra:Lcom/snapchat/android/model/StorySnapExtra;

    .line 53
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/StorySnapLogbook;)I
    .locals 2
    .parameter

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnap;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aB()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/StorySnap;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    .line 84
    return-void
.end method

.method public a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mActionState:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mChangedListener:Lcom/snapchat/android/model/StorySnapLogbook$StorySnapLogbookChangedListener;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mChangedListener:Lcom/snapchat/android/model/StorySnapLogbook$StorySnapLogbookChangedListener;

    invoke-interface {v0, p0}, Lcom/snapchat/android/model/StorySnapLogbook$StorySnapLogbookChangedListener;->c(Lcom/snapchat/android/model/StorySnapLogbook;)V

    .line 170
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/model/StorySnapLogbook$StorySnapLogbookChangedListener;)V
    .locals 0
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mChangedListener:Lcom/snapchat/android/model/StorySnapLogbook$StorySnapLogbookChangedListener;

    .line 72
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStoryId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mIsDeletingAllowed:Z

    .line 195
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mChangedListener:Lcom/snapchat/android/model/StorySnapLogbook$StorySnapLogbookChangedListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mChangedListener:Lcom/snapchat/android/model/StorySnapLogbook$StorySnapLogbookChangedListener;

    invoke-interface {v0, p0}, Lcom/snapchat/android/model/StorySnapLogbook$StorySnapLogbookChangedListener;->c(Lcom/snapchat/android/model/StorySnapLogbook;)V

    .line 198
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStoryId:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/snapchat/android/model/StorySnap;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 130
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    .line 132
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;

    if-nez v0, :cond_1

    .line 133
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :cond_1
    check-cast p1, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnap;->ay()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapNote;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnapNotes:Ljava/util/List;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public h()Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;->a:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    return v0
.end method

.method public i()Lcom/snapchat/android/model/StorySnapExtra;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnapExtra:Lcom/snapchat/android/model/StorySnapExtra;

    return-object v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ae()J

    move-result-wide v0

    return-wide v0
.end method

.method public k()Lcom/snapchat/android/model/StorySnapLogbook$ActionState;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mActionState:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    return-object v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mActionState:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->SAVING:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mActionState:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->DELETING:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/snapchat/android/model/StorySnapLogbook;->mIsDeletingAllowed:Z

    return v0
.end method

.method public r_()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method
