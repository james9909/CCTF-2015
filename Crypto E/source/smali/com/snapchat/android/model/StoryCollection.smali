.class public Lcom/snapchat/android/model/StoryCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/model/ChronologicalSnapProvider;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/snapchat/android/model/ChronologicalSnapProvider;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/snapchat/android/model/StoryCollection;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StoryCollection"


# instance fields
.field private final mCountdownController:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

.field private mHasSeenTapToSkipTeacher:Z

.field protected mIndexOfLastStoryViewed:I

.field private mSecondsLeftInCollection:I

.field protected final mStorySnaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;"
        }
    .end annotation
.end field

.field protected final mStorySnapsMutex:Ljava/lang/Object;

.field protected final mUnviewedStorySnaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;"
        }
    .end annotation
.end field

.field protected mUserHasSeenInFeed:Z

.field private final mUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;"
        }
    .end annotation
.end field

.field protected mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/StoryCollection;-><init>(Ljavax/inject/Provider;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/FriendStoryBook;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a()Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mCountdownController:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 46
    iput v3, p0, Lcom/snapchat/android/model/StoryCollection;->mSecondsLeftInCollection:I

    .line 47
    iput-boolean v3, p0, Lcom/snapchat/android/model/StoryCollection;->mHasSeenTapToSkipTeacher:Z

    .line 90
    iput-boolean v3, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 91
    iput-boolean v3, p0, Lcom/snapchat/android/model/StoryCollection;->mHasSeenTapToSkipTeacher:Z

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/snapchat/android/model/FriendStoryBook;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    .line 95
    invoke-virtual {p1}, Lcom/snapchat/android/model/FriendStoryBook;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/FriendStorySnap;

    .line 96
    invoke-virtual {v0}, Lcom/snapchat/android/model/FriendStorySnap;->a()Lcom/snapchat/android/model/StorySnap;

    move-result-object v2

    .line 97
    invoke-virtual {v0}, Lcom/snapchat/android/model/FriendStorySnap;->b()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/StorySnap;->f(Z)V

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mCountdownController:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->d(Lcom/snapchat/android/model/ReceivedSnap;)Z

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    .line 103
    sget-object v0, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserProvider:Ljavax/inject/Provider;

    .line 104
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/snapchat/android/model/StoryCollection;->mIndexOfLastStoryViewed:I

    .line 106
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->b()V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    sget-object v0, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/model/StoryCollection;-><init>(Ljava/util/List;Ljavax/inject/Provider;)V

    .line 75
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/model/StoryCollection;-><init>(Ljava/util/List;Ljava/util/List;Ljavax/inject/Provider;)V

    .line 63
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/util/List;Ljavax/inject/Provider;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a()Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mCountdownController:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 46
    iput v1, p0, Lcom/snapchat/android/model/StoryCollection;->mSecondsLeftInCollection:I

    .line 47
    iput-boolean v1, p0, Lcom/snapchat/android/model/StoryCollection;->mHasSeenTapToSkipTeacher:Z

    .line 68
    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    .line 69
    invoke-static {p2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    .line 70
    iput-object p3, p0, Lcom/snapchat/android/model/StoryCollection;->mUserProvider:Ljavax/inject/Provider;

    .line 71
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljavax/inject/Provider;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a()Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mCountdownController:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 46
    iput v1, p0, Lcom/snapchat/android/model/StoryCollection;->mSecondsLeftInCollection:I

    .line 47
    iput-boolean v1, p0, Lcom/snapchat/android/model/StoryCollection;->mHasSeenTapToSkipTeacher:Z

    .line 79
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 80
    :cond_0
    iput-object p2, p0, Lcom/snapchat/android/model/StoryCollection;->mUserProvider:Ljavax/inject/Provider;

    .line 81
    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    .line 83
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->C()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/snapchat/android/model/StoryCollection;->mIndexOfLastStoryViewed:I

    .line 86
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->b()V

    goto :goto_0
.end method

.method protected constructor <init>(Ljavax/inject/Provider;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a()Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mCountdownController:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 46
    iput v1, p0, Lcom/snapchat/android/model/StoryCollection;->mSecondsLeftInCollection:I

    .line 47
    iput-boolean v1, p0, Lcom/snapchat/android/model/StoryCollection;->mHasSeenTapToSkipTeacher:Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/snapchat/android/model/StoryCollection;->mUserProvider:Ljavax/inject/Provider;

    .line 59
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/LinkedHashMap;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 486
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 487
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 489
    :cond_0
    return-object v1
.end method

.method private a(ILjava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 580
    iput v0, p0, Lcom/snapchat/android/model/StoryCollection;->mSecondsLeftInCollection:I

    move v1, v0

    .line 581
    :goto_0
    if-ge v1, p1, :cond_0

    .line 582
    iget v2, p0, Lcom/snapchat/android/model/StoryCollection;->mSecondsLeftInCollection:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->M()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    add-int/2addr v0, v2

    iput v0, p0, Lcom/snapchat/android/model/StoryCollection;->mSecondsLeftInCollection:I

    .line 581
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 584
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Z)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 384
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 385
    add-int/lit8 v3, v0, -0x3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v4, v0

    .line 388
    :goto_0
    if-lt v4, v5, :cond_5

    .line 389
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 390
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->am()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/snapchat/android/util/cache/Storage;->b()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    .line 391
    :goto_1
    if-eqz p2, :cond_3

    .line 392
    if-eqz v3, :cond_2

    .line 388
    :cond_0
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 390
    goto :goto_1

    .line 393
    :cond_2
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    :goto_2
    return v1

    .line 395
    :cond_3
    if-nez v3, :cond_0

    .line 396
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->U()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    move v1, v2

    goto :goto_2

    .line 400
    :cond_5
    if-nez p2, :cond_6

    move v0, v1

    :goto_3
    move v1, v0

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3
.end method

.method private b()V
    .locals 4

    .prologue
    .line 127
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 130
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->F()Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    return-void
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 628
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 629
    if-nez v0, :cond_0

    move v0, v1

    .line 632
    :goto_0
    return v0

    .line 630
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/User;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 631
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 632
    :cond_1
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->H()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected A()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected B()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public C()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public D()Lcom/snapchat/android/model/StorySnap;
    .locals 4

    .prologue
    .line 250
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 251
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->C()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/snapchat/android/model/StoryCollection;->mIndexOfLastStoryViewed:I

    .line 253
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    iget v2, p0, Lcom/snapchat/android/model/StoryCollection;->mIndexOfLastStoryViewed:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 255
    iget v2, p0, Lcom/snapchat/android/model/StoryCollection;->mIndexOfLastStoryViewed:I

    iget-object v3, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcom/snapchat/android/model/StoryCollection;->a(ILjava/util/List;)V

    .line 256
    monitor-exit v1

    return-object v0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public E()Z
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/snapchat/android/model/StoryCollection;->mIndexOfLastStoryViewed:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public F()Lcom/snapchat/android/model/StorySnap;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 326
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    :try_start_0
    iget v0, p0, Lcom/snapchat/android/model/StoryCollection;->mIndexOfLastStoryViewed:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/model/StoryCollection;->mIndexOfLastStoryViewed:I

    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 328
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    iget v2, p0, Lcom/snapchat/android/model/StoryCollection;->mIndexOfLastStoryViewed:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    monitor-exit v1

    .line 330
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public G()Lcom/snapchat/android/model/StorySnap;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 335
    iget-object v3, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v3

    .line 350
    :goto_0
    return-object v0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 339
    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v4, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-direct {p0, v2, v4}, Lcom/snapchat/android/model/StoryCollection;->a(ILjava/util/List;)V

    .line 340
    const-string v2, "StoryCollection"

    const-string v4, "Unviewed story snaps size %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    const-string v2, "StoryCollection"

    const-string v4, "Returning story snap %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    .line 342
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/StorySnap;

    .line 344
    const-string v4, "StoryCollection"

    const-string v5, "Unviewed storySnap #%d %s is loaded/loading? %s %s being viewed/viewed? %s %s"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnap;->U()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnap;->Z()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnap;->D()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnap;->F()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 350
    :cond_1
    monitor-exit v3

    goto/16 :goto_0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public H()Z
    .locals 3

    .prologue
    .line 360
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public I()Z
    .locals 3

    .prologue
    .line 366
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public J()Z
    .locals 3

    .prologue
    .line 372
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public K()Z
    .locals 3

    .prologue
    .line 378
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected L()J
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 572
    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ae()J

    move-result-wide v0

    .line 576
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public M()Z
    .locals 3

    .prologue
    .line 599
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 601
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1

    .line 604
    :goto_0
    return v0

    .line 603
    :cond_1
    monitor-exit v1

    .line 604
    const/4 v0, 0x0

    goto :goto_0

    .line 603
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public N()Z
    .locals 3

    .prologue
    .line 614
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->c()Z

    move-result v0

    monitor-exit v1

    .line 618
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aJ()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public O()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 636
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 637
    if-nez v0, :cond_0

    move v0, v1

    .line 640
    :goto_0
    return v0

    .line 638
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/User;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 639
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 640
    :cond_1
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->J()Z

    move-result v0

    goto :goto_0
.end method

.method public P()Z
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->O()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Q()Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    sget-object v0, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->LOCAL:Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    .line 667
    :goto_0
    return-object v0

    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    sget-object v0, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->LIVE:Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    goto :goto_0

    .line 667
    :cond_1
    sget-object v0, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->RECENT_UPDATES:Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    goto :goto_0
.end method

.method public a(ILcom/snapchat/android/model/ReceivedSnap;Z)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 445
    sget-object v0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->LOAD_STORY_SNAP_BY_DEFAULT:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/snapchat/android/model/StoryCollection;->a(ILcom/snapchat/android/model/ReceivedSnap;ZLcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;)I

    move-result v0

    return v0
.end method

.method public a(ILcom/snapchat/android/model/ReceivedSnap;ZLcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;)I
    .locals 7
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 451
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/snapchat/android/model/StoryCollection;->a(ILcom/snapchat/android/model/ReceivedSnap;ZLcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v0

    return v0
.end method

.method public a(ILcom/snapchat/android/model/ReceivedSnap;ZLcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 465
    check-cast p2, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/model/StoryCollection;->a(ILcom/snapchat/android/model/StorySnap;)Ljava/util/List;

    move-result-object v0

    .line 468
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 469
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->U()Z

    move-result v4

    if-nez v4, :cond_1

    .line 470
    add-int/lit8 v1, v1, 0x1

    .line 471
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->Z()Z

    move-result v4

    if-nez v4, :cond_1

    .line 472
    invoke-virtual {v0, p4}, Lcom/snapchat/android/model/StorySnap;->a(Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;)V

    .line 473
    new-instance v4, Lcom/snapchat/android/api/LoadStorySnapMediaTask;

    invoke-direct {v4, v0, p3, p5, p6}, Lcom/snapchat/android/api/LoadStorySnapMediaTask;-><init>(Lcom/snapchat/android/model/StorySnap;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)V

    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v5, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v0, v5}, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    move p3, v2

    :goto_1
    move v1, v0

    .line 478
    goto :goto_0

    .line 480
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/model/StoryCollection;)I
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 567
    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryCollection;->L()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->L()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/util/primitives/LongUtils;->a(JJ)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 355
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 356
    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/StorySnap;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/snapchat/android/model/StorySnap;)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/snapchat/android/model/StorySnap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 405
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->m()Ljava/util/List;

    move-result-object v3

    .line 407
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 409
    if-eqz p2, :cond_1

    move v2, v1

    .line 410
    :goto_0
    if-ltz v2, :cond_1

    .line 411
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/model/StorySnap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    add-int/lit8 v0, v2, -0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 419
    :goto_1
    add-int/lit8 v1, v0, 0x1

    sub-int/2addr v1, p1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v3, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 410
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/model/FriendStoryBook;Ljava/util/List;Z)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/FriendStoryBook;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 494
    iget-object v3, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 495
    :try_start_0
    const-string v0, "StoryCollection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating stories with result from server. Delta? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 498
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 499
    invoke-direct {p0, p2}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 501
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->F()Lcom/snapchat/android/model/StorySnap;

    move-result-object v7

    .line 503
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 504
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 506
    invoke-virtual {p1}, Lcom/snapchat/android/model/FriendStoryBook;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/FriendStorySnap;

    .line 507
    invoke-virtual {v0}, Lcom/snapchat/android/model/FriendStorySnap;->a()Lcom/snapchat/android/model/StorySnap;

    move-result-object v1

    .line 508
    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    .line 509
    if-eqz v9, :cond_5

    .line 510
    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnap;->f()Lcom/snapchat/android/model/SponsoredStoryMetadata;

    move-result-object v2

    .line 511
    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/StorySnap;

    .line 512
    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/StorySnap;->a(Lcom/snapchat/android/model/SponsoredStoryMetadata;)V

    move-object v2, v1

    .line 522
    :goto_1
    if-eqz p3, :cond_1

    if-nez v9, :cond_2

    .line 524
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_3
    const/4 v1, 0x1

    .line 529
    :goto_2
    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->e()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 533
    invoke-virtual {v0}, Lcom/snapchat/android/model/FriendStorySnap;->b()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/StorySnap;->f(Z)V

    .line 534
    :cond_4
    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->F()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 535
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 514
    :cond_5
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 515
    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 516
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    goto :goto_1

    .line 518
    :cond_6
    const-string v2, "StoryCollection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Story "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was found in database but not in the data model."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    goto :goto_1

    .line 527
    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 539
    :cond_8
    invoke-virtual {v0}, Lcom/snapchat/android/model/FriendStorySnap;->b()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->F()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const/4 v0, 0x1

    .line 540
    :goto_3
    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/StorySnap;->f(Z)V

    .line 541
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 542
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 539
    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    .line 546
    :cond_b
    if-eqz p3, :cond_c

    .line 547
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 548
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 551
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->x()V

    .line 556
    :cond_c
    if-eqz v7, :cond_d

    .line 557
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/model/StoryCollection;->mIndexOfLastStoryViewed:I

    .line 559
    :cond_d
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 560
    return-void
.end method

.method public a(Lcom/snapchat/android/model/StorySnap;)V
    .locals 2
    .parameter

    .prologue
    .line 138
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 142
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_0
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 111
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/snapchat/android/model/StorySnap;
    .locals 4
    .parameter

    .prologue
    .line 231
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 233
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    monitor-exit v1

    .line 238
    :goto_0
    return-object v0

    .line 237
    :cond_1
    monitor-exit v1

    .line 238
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/snapchat/android/model/StorySnap;)V
    .locals 7
    .parameter

    .prologue
    .line 224
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 226
    const-string v2, "StoryCollection"

    const-string v3, "Removing %s from unviewed story snaps, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    monitor-exit v1

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/snapchat/android/model/StoryCollection;->mHasSeenTapToSkipTeacher:Z

    .line 120
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    check-cast p1, Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/StoryCollection;->a(Lcom/snapchat/android/model/StoryCollection;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->E()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 672
    if-nez p1, :cond_1

    .line 676
    :cond_0
    :goto_0
    return v0

    .line 673
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    check-cast p1, Lcom/snapchat/android/model/StoryCollection;

    iget-object v1, p1, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Lcom/snapchat/android/model/ReceivedSnap;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v3, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x0

    monitor-exit v3

    .line 301
    :goto_0
    return-object v0

    .line 278
    :cond_0
    iget v0, p0, Lcom/snapchat/android/model/StoryCollection;->mIndexOfLastStoryViewed:I

    if-lez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/snapchat/android/model/StoryCollection;->mIndexOfLastStoryViewed:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/model/StoryCollection;->mIndexOfLastStoryViewed:I

    .line 288
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    iget v2, p0, Lcom/snapchat/android/model/StoryCollection;->mIndexOfLastStoryViewed:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 290
    iget v2, p0, Lcom/snapchat/android/model/StoryCollection;->mIndexOfLastStoryViewed:I

    iget-object v4, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-direct {p0, v2, v4}, Lcom/snapchat/android/model/StoryCollection;->a(ILjava/util/List;)V

    .line 291
    const-string v2, "StoryCollection"

    const-string v4, "Last storySnap viewed is %d / %d and next storySnap is loaded/loading? %s %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/snapchat/android/model/StoryCollection;->mIndexOfLastStoryViewed:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->C()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->U()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->Z()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    .line 294
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 295
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/StorySnap;

    .line 296
    const-string v4, "StoryCollection"

    const-string v5, "storySnap #%d %s is loaded/loading? %s %s being viewed/viewed? %s %s"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnap;->U()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnap;->Z()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnap;->D()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnap;->F()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 285
    :cond_1
    const/4 v0, 0x0

    monitor-exit v3

    goto/16 :goto_0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 301
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 681
    .line 682
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x24d

    .line 683
    mul-int/lit8 v0, v0, 0x1f

    const-string v1, "storyCollection"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 684
    return v0
.end method

.method public i()Lcom/snapchat/android/model/ReceivedSnap;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 311
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_0
    iget v0, p0, Lcom/snapchat/android/model/StoryCollection;->mIndexOfLastStoryViewed:I

    add-int/lit8 v0, v0, -0x1

    .line 313
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    monitor-exit v1

    .line 316
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/snapchat/android/model/StoryCollection;->mSecondsLeftInCollection:I

    return v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->A()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .locals 4

    .prologue
    .line 202
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 204
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 206
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aC()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 210
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->b()V

    .line 211
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->K()Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->I()Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    goto :goto_0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/snapchat/android/model/StoryCollection;->mHasSeenTapToSkipTeacher:Z

    return v0
.end method

.method public x()V
    .locals 2

    .prologue
    .line 148
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 150
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    return-object v0
.end method

.method public z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->B()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
