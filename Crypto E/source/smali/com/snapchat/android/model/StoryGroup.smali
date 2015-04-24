.class public Lcom/snapchat/android/model/StoryGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/StoryGroup$1;,
        Lcom/snapchat/android/model/StoryGroup$ActionState;,
        Lcom/snapchat/android/model/StoryGroup$Builder;,
        Lcom/snapchat/android/model/StoryGroup$StoryGroupChangedListener;
    }
.end annotation


# instance fields
.field private transient mActionState:Lcom/snapchat/android/model/StoryGroup$ActionState;

.field private transient mAllStorySnapLogbooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation
.end field

.field private transient mChangedListener:Lcom/snapchat/android/model/StoryGroup$StoryGroupChangedListener;

.field protected mCustomDescription:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field protected mCustomTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field protected mDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_name"
    .end annotation
.end field

.field private transient mSaveProgress:I

.field protected mShouldFetchCustomDescription:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "has_custom_description"
    .end annotation
.end field

.field protected mStoryId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "group_id"
    .end annotation
.end field

.field protected mStorySnapLogbooks:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    .line 35
    sget-object v0, Lcom/snapchat/android/model/StoryGroup$ActionState;->READY:Lcom/snapchat/android/model/StoryGroup$ActionState;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mActionState:Lcom/snapchat/android/model/StoryGroup$ActionState;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/model/StoryGroup;->mSaveProgress:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mChangedListener:Lcom/snapchat/android/model/StoryGroup$StoryGroupChangedListener;

    .line 52
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/model/StoryGroup$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    .line 35
    sget-object v0, Lcom/snapchat/android/model/StoryGroup$ActionState;->READY:Lcom/snapchat/android/model/StoryGroup$ActionState;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mActionState:Lcom/snapchat/android/model/StoryGroup$ActionState;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/model/StoryGroup;->mSaveProgress:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mChangedListener:Lcom/snapchat/android/model/StoryGroup$StoryGroupChangedListener;

    .line 64
    invoke-static {p1}, Lcom/snapchat/android/model/StoryGroup$Builder;->a(Lcom/snapchat/android/model/StoryGroup$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lcom/snapchat/android/model/StoryGroup$Builder;->b(Lcom/snapchat/android/model/StoryGroup$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mDisplayName:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lcom/snapchat/android/model/StoryGroup$Builder;->c(Lcom/snapchat/android/model/StoryGroup$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/StoryGroup;->mShouldFetchCustomDescription:Z

    .line 67
    invoke-static {p1}, Lcom/snapchat/android/model/StoryGroup$Builder;->d(Lcom/snapchat/android/model/StoryGroup$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mCustomDescription:Ljava/lang/String;

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/model/StoryGroup$Builder;Lcom/snapchat/android/model/StoryGroup$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/StoryGroup;-><init>(Lcom/snapchat/android/model/StoryGroup$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    .line 35
    sget-object v0, Lcom/snapchat/android/model/StoryGroup$ActionState;->READY:Lcom/snapchat/android/model/StoryGroup$ActionState;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mActionState:Lcom/snapchat/android/model/StoryGroup$ActionState;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/model/StoryGroup;->mSaveProgress:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mChangedListener:Lcom/snapchat/android/model/StoryGroup$StoryGroupChangedListener;

    .line 55
    iput-object p1, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    .line 35
    sget-object v0, Lcom/snapchat/android/model/StoryGroup$ActionState;->READY:Lcom/snapchat/android/model/StoryGroup$ActionState;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mActionState:Lcom/snapchat/android/model/StoryGroup$ActionState;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/model/StoryGroup;->mSaveProgress:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mChangedListener:Lcom/snapchat/android/model/StoryGroup$StoryGroupChangedListener;

    .line 59
    iput-object p1, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/snapchat/android/model/StoryGroup;->mDisplayName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mChangedListener:Lcom/snapchat/android/model/StoryGroup$StoryGroupChangedListener;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mChangedListener:Lcom/snapchat/android/model/StoryGroup$StoryGroupChangedListener;

    invoke-interface {v0, p0}, Lcom/snapchat/android/model/StoryGroup$StoryGroupChangedListener;->a(Lcom/snapchat/android/model/StoryGroup;)V

    .line 253
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Z)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryGroup;->k()Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryGroup;->l()Ljava/util/List;

    move-result-object v1

    .line 134
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v2

    .line 136
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v3

    .line 137
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/snapchat/android/model/StoryGroup;->mAllStorySnapLogbooks:Ljava/util/List;

    .line 139
    iget-object v2, p0, Lcom/snapchat/android/model/StoryGroup;->mAllStorySnapLogbooks:Ljava/util/List;

    iget-object v3, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/snapchat/android/util/SnapUtils;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mAllStorySnapLogbooks:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/SnapUtils;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mAllStorySnapLogbooks:Ljava/util/List;

    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mAllStorySnapLogbooks:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 229
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Save progress out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    iput p1, p0, Lcom/snapchat/android/model/StoryGroup;->mSaveProgress:I

    .line 235
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryGroup;->a()V

    .line 236
    return-void
.end method

.method public a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/snapchat/android/model/StoryGroup;->mActionState:Lcom/snapchat/android/model/StoryGroup$ActionState;

    .line 213
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryGroup;->a()V

    .line 214
    return-void
.end method

.method public a(Lcom/snapchat/android/model/StoryGroup$StoryGroupChangedListener;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/snapchat/android/model/StoryGroup;->mChangedListener:Lcom/snapchat/android/model/StoryGroup$StoryGroupChangedListener;

    .line 76
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/snapchat/android/model/StoryGroup;->mCustomDescription:Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryGroup;->a()V

    .line 103
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/snapchat/android/model/StoryGroup;->mCustomTitle:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryGroup;->a()V

    .line 113
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mDisplayName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    .line 88
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/snapchat/android/model/StoryGroup;->mShouldFetchCustomDescription:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mCustomDescription:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mCustomTitle:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 117
    iget-object v2, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public k()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/SnapWomb;->a(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/SnapWomb;->b(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public m()I
    .locals 3

    .prologue
    .line 160
    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/snapchat/android/model/StoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/SnapWomb;->a(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/snapchat/android/model/StoryGroup;->mStoryId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/SnapWomb;->b(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public n()Lcom/snapchat/android/model/StoryGroup$ActionState;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup;->mActionState:Lcom/snapchat/android/model/StoryGroup$ActionState;

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/snapchat/android/model/StoryGroup;->mSaveProgress:I

    return v0
.end method
