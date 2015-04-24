.class public Lcom/snapchat/android/model/StoryGroup$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/StoryGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCustomDescription:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mShouldFetchCustomDescription:Z

.field private mStoryId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/snapchat/android/model/StoryGroup$Builder;->mStoryId:Ljava/lang/String;

    .line 173
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/model/StoryGroup$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup$Builder;->mStoryId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/model/StoryGroup$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup$Builder;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/model/StoryGroup$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/snapchat/android/model/StoryGroup$Builder;->mShouldFetchCustomDescription:Z

    return v0
.end method

.method static synthetic d(Lcom/snapchat/android/model/StoryGroup$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/snapchat/android/model/StoryGroup$Builder;->mCustomDescription:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/snapchat/android/model/StoryGroup$Builder;
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/snapchat/android/model/StoryGroup$Builder;->mDisplayName:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public a(Z)Lcom/snapchat/android/model/StoryGroup$Builder;
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/snapchat/android/model/StoryGroup$Builder;->mShouldFetchCustomDescription:Z

    .line 182
    return-object p0
.end method

.method public a()Lcom/snapchat/android/model/StoryGroup;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lcom/snapchat/android/model/StoryGroup;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/model/StoryGroup;-><init>(Lcom/snapchat/android/model/StoryGroup$Builder;Lcom/snapchat/android/model/StoryGroup$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryGroup$Builder;
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/snapchat/android/model/StoryGroup$Builder;->mCustomDescription:Ljava/lang/String;

    .line 187
    return-object p0
.end method
