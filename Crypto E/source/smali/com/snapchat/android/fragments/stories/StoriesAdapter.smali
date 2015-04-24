.class public Lcom/snapchat/android/fragments/stories/StoriesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;
.implements Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;
.implements Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;,
        Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoryItemTouchListener;,
        Lcom/snapchat/android/fragments/stories/StoriesAdapter$HeaderViewHolder;,
        Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
        ">;",
        "Landroid/widget/Filterable;",
        "Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;",
        "Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;",
        "Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface",
        "<",
        "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/snapchat/android/util/debug/ExceptionReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Lcom/snapchat/android/model/SnapWomb;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/LayoutInflater;

.field private g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/snapchat/android/fragments/stories/StoriesSectionizer;

.field private i:Landroid/widget/Filter;

.field private final j:Landroid/view/inputmethod/InputMethodManager;

.field private final k:Lcom/snapchat/android/util/StoriesThumbnailCache;

.field private l:I

.field private final m:Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;

.field private final n:Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;

.field private final o:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;Lcom/snapchat/android/model/SnapWomb;Lcom/snapchat/android/util/StoriesThumbnailCache;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
            ">;",
            "Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;",
            "Lcom/snapchat/android/model/SnapWomb;",
            "Lcom/snapchat/android/util/StoriesThumbnailCache;",
            ")V"
        }
    .end annotation

    .prologue
    .line 140
    const v0, 0x7f04008c

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->g:Ljava/util/HashSet;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->l:I

    .line 119
    new-instance v0, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->m:Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;

    .line 120
    new-instance v0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->n:Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;

    .line 141
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 142
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->f:Landroid/view/LayoutInflater;

    .line 143
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    .line 144
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesSectionizer;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/stories/StoriesSectionizer;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->h:Lcom/snapchat/android/fragments/stories/StoriesSectionizer;

    .line 145
    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->e:Ljava/util/List;

    .line 146
    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    .line 147
    iput-object p3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->o:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    .line 148
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->j:Landroid/view/inputmethod/InputMethodManager;

    .line 149
    iput-object p4, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->d:Lcom/snapchat/android/model/SnapWomb;

    .line 150
    iput-object p5, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->k:Lcom/snapchat/android/util/StoriesThumbnailCache;

    .line 151
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->l:I

    return p1
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter

    .prologue
    const/16 v1, 0x66

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1015
    if-nez p1, :cond_0

    .line 1016
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1019
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1022
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1024
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1025
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1027
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v3, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1028
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1030
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v1, v2, v2, v3, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1031
    const/high16 v3, 0x43b4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1033
    return-object v6
.end method

.method private a(Lcom/snapchat/android/model/StorySnapLogbook;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 731
    sget-object v1, Lcom/snapchat/android/util/cache/Caches;->b:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/StorySnap;->ay()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/snapchat/android/util/cache/Cache;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/EncryptionAlgorithm;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 733
    if-nez v1, :cond_0

    .line 738
    :goto_0
    return-object v0

    .line 734
    :cond_0
    invoke-direct {p0, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 735
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 736
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->k:Lcom/snapchat/android/util/StoriesThumbnailCache;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesListItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/snapchat/android/util/StoriesThumbnailCache;->a(Lcom/snapchat/android/model/StorySnap;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->o:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    return-object v0
.end method

.method private a(Lcom/snapchat/android/fragments/stories/StoriesListItem;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 973
    instance-of v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v0, :cond_1

    .line 974
    check-cast p1, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    .line 975
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ay()Ljava/lang/String;

    move-result-object v0

    .line 976
    if-nez v0, :cond_0

    const-string v0, ""

    .line 985
    :cond_0
    :goto_0
    return-object v0

    .line 978
    :cond_1
    instance-of v0, p1, Lcom/snapchat/android/model/RecentStoryCollection;

    if-eqz v0, :cond_2

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&recent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 980
    :cond_2
    instance-of v0, p1, Lcom/snapchat/android/fragments/stories/MyStoryGroupStoriesListItem;

    if-eqz v0, :cond_3

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&myStoryGroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 982
    :cond_3
    instance-of v0, p1, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    if-eqz v0, :cond_4

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sharedStoryGroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 985
    :cond_4
    invoke-interface {p1}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 513
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    .line 515
    invoke-virtual {p2}, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Ljava/lang/String;)V

    .line 516
    iget-object v1, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 517
    iget-object v1, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->B:Landroid/widget/Button;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;

    invoke-direct {v2, p0, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->B:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 538
    return-void
.end method

.method private a(Landroid/view/View;Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 460
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    .line 462
    invoke-virtual {p2}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->e()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v1

    .line 463
    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$StoryGroupChangedListener;)V

    .line 465
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->o:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    invoke-virtual {p2}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;->a(Ljava/lang/String;)Z

    move-result v2

    .line 466
    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(Z)V

    .line 467
    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->v()V

    .line 469
    instance-of v2, p2, Lcom/snapchat/android/fragments/stories/MyStoryGroupStoriesListItem;

    if-nez v2, :cond_0

    .line 470
    iget-object v2, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->B:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 471
    iget-object v2, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->B:Landroid/widget/Button;

    const v3, 0x7f0201c3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 472
    iget-object v2, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->B:Landroid/widget/Button;

    new-instance v3, Lcom/snapchat/android/fragments/stories/StoriesAdapter$8;

    invoke-direct {v3, p0, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$8;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    :cond_0
    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;

    invoke-direct {v2, p0, v0, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->y:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;

    invoke-direct {v2, p0, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StoryGroup;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    return-void
.end method

.method private a(Landroid/view/View;Lcom/snapchat/android/model/Friend;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 573
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    .line 574
    iget-object v1, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->z:Landroid/widget/Button;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesAdapter$14;

    invoke-direct {v2, p0, p2, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$14;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    iget-object v1, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->B:Landroid/widget/Button;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesAdapter$15;

    invoke-direct {v2, p0, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$15;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget v1, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->H:I

    iget v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->l:I

    if-ne v1, v2, :cond_1

    .line 589
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->H()Z

    move-result v1

    if-nez v1, :cond_0

    .line 590
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(Z)V

    .line 596
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->H()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 597
    iget-object v1, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->B:Landroid/widget/Button;

    const v2, 0x7f0201c4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 598
    iget-object v1, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->B:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 599
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(I)V

    .line 614
    :goto_1
    return-void

    .line 593
    :cond_1
    invoke-virtual {v0, v3}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(Z)V

    goto :goto_0

    .line 600
    :cond_2
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->E()Z

    move-result v1

    if-nez v1, :cond_4

    .line 601
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->g()Z

    move-result v1

    if-nez v1, :cond_3

    .line 603
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->o:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p2, v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;Ljava/util/Set;)V

    .line 604
    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->z()V

    .line 606
    :cond_3
    new-instance v1, Lcom/snapchat/android/ui/listeners/StoriesListItemOnClickListener;

    new-instance v2, Lcom/snapchat/android/fragments/stories/FriendStoriesListItemSelector;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->o:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    invoke-direct {v2, v0, p2, p0, v3}, Lcom/snapchat/android/fragments/stories/FriendStoriesListItemSelector;-><init>(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/fragments/stories/StoriesListItem;Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->o:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    invoke-direct {v1, v2, v0, p2}, Lcom/snapchat/android/ui/listeners/StoriesListItemOnClickListener;-><init>(Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener$SelectableListItemInterface;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;Lcom/snapchat/android/fragments/stories/StoriesListItem;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 612
    :cond_4
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->o:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p2, v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;Ljava/util/Set;)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;Lcom/snapchat/android/model/RecentStoryCollection;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 542
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    .line 543
    invoke-virtual {p2}, Lcom/snapchat/android/model/RecentStoryCollection;->z()Ljava/util/List;

    move-result-object v1

    .line 544
    invoke-virtual {p2}, Lcom/snapchat/android/model/RecentStoryCollection;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/android/util/FriendUtils;->a(Ljava/lang/String;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;

    move-result-object v2

    .line 546
    invoke-virtual {v2}, Lcom/snapchat/android/model/Friend;->H()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 547
    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(I)V

    .line 548
    iget-object v3, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->B:Landroid/widget/Button;

    const v4, 0x7f0201c4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 549
    iget-object v3, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->B:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 551
    :cond_0
    iget-object v3, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->B:Landroid/widget/Button;

    new-instance v4, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;

    invoke-direct {v4, p0, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 559
    new-instance v1, Lcom/snapchat/android/ui/listeners/RecentUpdatesStoriesListItemOnClickListener;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->o:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    invoke-direct {v1, v0, v2, p2}, Lcom/snapchat/android/ui/listeners/RecentUpdatesStoriesListItemOnClickListener;-><init>(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;Lcom/snapchat/android/model/RecentStoryCollection;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    :goto_0
    return-void

    .line 562
    :cond_1
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$13;

    invoke-direct {v0, p0, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$13;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/RecentStoryCollection;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    .line 402
    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v4

    .line 403
    iget v0, v1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->H:I

    iget v5, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->l:I

    if-ne v0, v5, :cond_2

    move v0, v2

    :goto_0
    invoke-direct {p0, v1, p2, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/model/StorySnapLogbook;Z)V

    .line 405
    iget-object v0, v1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->v:Landroid/widget/Button;

    new-instance v5, Lcom/snapchat/android/fragments/stories/StoriesAdapter$5;

    invoke-direct {v5, p0, p2, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$5;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v0, v1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->s:Landroid/widget/Button;

    new-instance v5, Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;

    invoke-direct {v5, p0, p2, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$6;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget v0, v1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->H:I

    iget v5, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->l:I

    if-ne v0, v5, :cond_3

    .line 422
    invoke-virtual {v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(Z)V

    .line 423
    iget-object v0, v1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->E:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    .line 424
    invoke-virtual {v1}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->y()V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->f:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v1, p2, v0, v2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/model/StorySnapLogbook;Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 428
    iget-object v0, v1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->E:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->n:Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->n:Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->a(Z)V

    .line 440
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lcom/snapchat/android/model/StorySnap;->aE()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 441
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$7;

    invoke-direct {v0, p0, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$7;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    :goto_2
    return-void

    :cond_2
    move v0, v3

    .line 403
    goto :goto_0

    .line 434
    :cond_3
    iget-object v0, v1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->E:Landroid/widget/ScrollView;

    if-eqz v0, :cond_4

    .line 435
    iget-object v0, v1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->E:Landroid/widget/ScrollView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 437
    :cond_4
    invoke-virtual {v1, v3}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(Z)V

    goto :goto_1

    .line 449
    :cond_5
    new-instance v6, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;

    const/high16 v0, 0x42f0

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v7, v0

    new-instance v0, Lcom/snapchat/android/fragments/stories/StoryViewersStoriesListItemSelector;

    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->f:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/stories/StoryViewersStoriesListItemSelector;-><init>(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;Landroid/view/LayoutInflater;Landroid/content/Context;)V

    invoke-direct {v6, v7, v0}, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;-><init>(ILcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener$SelectableListItemInterface;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->b(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Z)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->b(Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    return-void
.end method

.method private a(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/model/StorySnapLogbook;Z)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 691
    invoke-virtual {p2, p1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$StorySnapLogbookChangedListener;)V

    .line 693
    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    .line 694
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    const/4 p3, 0x1

    .line 698
    :cond_0
    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnapLogbook;->i()Lcom/snapchat/android/model/StorySnapExtra;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 699
    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnapLogbook;->i()Lcom/snapchat/android/model/StorySnapExtra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapExtra;->a()I

    move-result v0

    .line 700
    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnapLogbook;->i()Lcom/snapchat/android/model/StorySnapExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnapExtra;->b()I

    move-result v1

    .line 702
    if-lez v0, :cond_3

    .line 703
    iget-object v2, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->n:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 704
    iget-object v2, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->o:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 705
    iget-object v2, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->o:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/snapchat/android/util/NumberFormatUtils;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    :goto_0
    if-lez v1, :cond_4

    .line 712
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 713
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 714
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->q:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/snapchat/android/util/NumberFormatUtils;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 722
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 723
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 725
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 726
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 728
    :cond_2
    return-void

    .line 707
    :cond_3
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 708
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 716
    :cond_4
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 717
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 803
    iget-object v1, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->j:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 804
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->b(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Z)V

    .line 805
    return-void

    .line 803
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 617
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v1

    .line 618
    if-nez v1, :cond_0

    .line 653
    :goto_0
    return-void

    .line 622
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 623
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->r_()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    :cond_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 629
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FriendUtils;->e(Ljava/lang/String;Lcom/snapchat/android/model/User;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 630
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    const v4, 0x7f0c00fe

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    const v4, 0x7f0c00be

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    const v4, 0x7f0c00fd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 635
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$16;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 652
    :cond_2
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 275
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 277
    const v1, 0x7f0c00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 278
    const v1, 0x7f0c022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 279
    const v1, 0x7f0c003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 281
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;->show()V

    .line 292
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->j:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->d(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c(Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    return-void
.end method

.method private b(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 808
    iget-object v1, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->i:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const v0, 0x3f333333

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 809
    return-void

    .line 808
    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private b(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 656
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->BLOCK:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v3, p1

    move-object v7, v5

    move-object v8, p2

    move-object v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 659
    return-void
.end method

.method private b(Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 302
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ay()Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->d:Lcom/snapchat/android/model/SnapWomb;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/model/SnapWomb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->o:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;->c()V

    .line 338
    :goto_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ay()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(Ljava/lang/String;)V

    .line 339
    return-void

    .line 311
    :cond_0
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;Landroid/content/Context;Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    return-void
.end method

.method private c(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 662
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v3, p1

    move-object v7, v5

    move-object v8, p2

    move-object v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 665
    return-void
.end method

.method private c(Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 346
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ao()I

    move-result v1

    if-nez v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnap;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 351
    if-nez v1, :cond_0

    .line 352
    const v1, 0x7f0c016f

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 395
    :goto_0
    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/StorySnap;)V

    .line 396
    return-void

    .line 354
    :cond_0
    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1, p1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/snapchat/android/model/StorySnapLogbook;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->c:Ljava/util/concurrent/ExecutorService;

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v1, v3}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->P()Ljava/lang/String;

    move-result-object v1

    .line 376
    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesAdapter$4;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1, p1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$4;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/model/StorySnapLogbook;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->c:Ljava/util/concurrent/ExecutorService;

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v1, v3}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->b(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    return-void
.end method

.method private d(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 668
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Landroid/content/Context;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    .line 683
    invoke-virtual {v0}, Lcom/snapchat/android/util/EditNameDialog;->show()V

    .line 684
    invoke-virtual {v0}, Lcom/snapchat/android/util/EditNameDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 685
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 182
    iget v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->l:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->m:Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->n:Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 186
    :goto_0
    iput v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->l:I

    .line 187
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->m:Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->a()V

    .line 188
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->n:Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->b()V

    .line 189
    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 192
    :cond_1
    return-void

    .line 182
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->l:I

    .line 196
    return-void
.end method

.method public a(Lcom/snapchat/android/fragments/stories/StoriesListItem;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 742
    iget-object v0, p2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 743
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesListItem;)Ljava/lang/String;

    move-result-object v2

    .line 744
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->k:Lcom/snapchat/android/util/StoriesThumbnailCache;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/StoriesThumbnailCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 745
    iget-object v3, p2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->i:Landroid/widget/ImageView;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 746
    if-nez v0, :cond_3

    .line 747
    iget-object v3, p2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->i:Landroid/widget/ImageView;

    const v4, 0x7f0201e4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 752
    :goto_0
    instance-of v3, p1, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    move-object v0, p1

    .line 753
    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    .line 754
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aF()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aE()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 755
    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/model/StorySnapLogbook;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 756
    if-eqz v0, :cond_1

    iget-object v3, p2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->i:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->k:Lcom/snapchat/android/util/StoriesThumbnailCache;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, p1, v2}, Lcom/snapchat/android/util/StoriesThumbnailCache;->a(Landroid/content/Context;Lcom/snapchat/android/fragments/stories/StoriesListItem;Ljava/lang/String;)V

    .line 762
    instance-of v0, p1, Lcom/snapchat/android/model/RecentStoryCollection;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 763
    check-cast v0, Lcom/snapchat/android/model/RecentStoryCollection;

    .line 764
    invoke-virtual {v0}, Lcom/snapchat/android/model/RecentStoryCollection;->p()Z

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Z)V

    .line 765
    invoke-virtual {v0}, Lcom/snapchat/android/model/RecentStoryCollection;->y()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 766
    iget-object v2, p2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->i:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 767
    invoke-virtual {v0}, Lcom/snapchat/android/model/RecentStoryCollection;->N()Z

    move-result v2

    if-nez v2, :cond_2

    .line 768
    iget-object v2, p2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 769
    instance-of v1, v0, Lcom/snapchat/android/model/SponsoredStoryCollection;

    if-eqz v1, :cond_4

    .line 770
    iget-object v1, p2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->k:Landroid/widget/ImageView;

    const v2, 0x7f0201e5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 771
    iget-object v1, p2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->k:Landroid/widget/ImageView;

    new-instance v2, Lcom/snapchat/android/fragments/stories/StoriesAdapter$18;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$18;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/RecentStoryCollection;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    :cond_2
    :goto_1
    return-void

    .line 749
    :cond_3
    iget-object v3, p2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->i:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 779
    :cond_4
    iget-object v0, p2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->k:Landroid/widget/ImageView;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 780
    iget-object v0, p2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$19;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$19;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/fragments/stories/StoriesListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 790
    :cond_5
    instance-of v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v0, :cond_8

    .line 791
    check-cast p1, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v2

    .line 792
    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->aF()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->Z()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const/4 v0, 0x1

    :goto_2
    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Z)V

    .line 793
    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->aE()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->i:Landroid/widget/ImageView;

    const v1, 0x3f333333

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    :cond_7
    move v0, v1

    .line 792
    goto :goto_2

    .line 794
    :cond_8
    instance-of v0, p1, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_2

    .line 795
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    invoke-interface {p1}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryLibrary;->c(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    .line 797
    if-eqz v0, :cond_2

    .line 798
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->p()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Z)V

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/fragments/stories/StoriesListItem;)V
    .locals 5
    .parameter
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 844
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->o:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;->b()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 845
    invoke-interface {p2}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->r_()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    invoke-interface {p2}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Ljava/lang/String;)V

    .line 847
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    invoke-interface {p2}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Ljava/lang/String;)V

    .line 851
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 857
    :cond_2
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 858
    invoke-virtual {p1}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->w()Z

    move-result v0

    if-nez v0, :cond_6

    .line 859
    iget v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->l:I

    iget v1, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->H:I

    if-ne v0, v1, :cond_5

    .line 860
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 861
    invoke-virtual {p1, v2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(Z)V

    .line 878
    :cond_3
    :goto_1
    invoke-interface {p2}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Ljava/lang/String;)V

    .line 879
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    instance-of v0, p2, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    if-eqz v0, :cond_7

    .line 882
    check-cast p2, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    .line 883
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->o:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    invoke-virtual {p2}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 884
    invoke-virtual {p1}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->w()Z

    move-result v0

    if-nez v0, :cond_4

    .line 885
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 888
    :cond_4
    invoke-virtual {p1, p2, v2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;Z)V

    goto :goto_0

    .line 863
    :cond_5
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 864
    invoke-virtual {p1, v3}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(Z)V

    goto :goto_1

    .line 871
    :cond_6
    iget v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 873
    invoke-virtual {p1}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->x()V

    .line 874
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 889
    :cond_7
    instance-of v0, p2, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v0, :cond_8

    .line 890
    check-cast p2, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 891
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 892
    invoke-virtual {p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/model/StorySnapLogbook;)V

    .line 893
    invoke-virtual {p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(Lcom/snapchat/android/model/StorySnapLogbook;)V

    goto/16 :goto_0

    .line 894
    :cond_8
    instance-of v0, p2, Lcom/snapchat/android/model/RecentStoryCollection;

    if-eqz v0, :cond_a

    .line 895
    check-cast p2, Lcom/snapchat/android/model/RecentStoryCollection;

    .line 896
    invoke-virtual {p2}, Lcom/snapchat/android/model/RecentStoryCollection;->z()Ljava/util/List;

    move-result-object v1

    .line 897
    instance-of v0, p2, Lcom/snapchat/android/model/SponsoredStoryCollection;

    if-eqz v0, :cond_9

    .line 898
    invoke-virtual {p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/model/StoryCollection;)V

    .line 899
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080037

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(I)V

    .line 900
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 901
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->o:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    move-object v0, p2

    check-cast v0, Lcom/snapchat/android/model/SponsoredStoryCollection;

    invoke-interface {v2, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;->a(Lcom/snapchat/android/model/SponsoredStoryCollection;)V

    .line 903
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    invoke-virtual {p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/model/StoryCollection;)V

    .line 905
    invoke-virtual {p2}, Lcom/snapchat/android/model/RecentStoryCollection;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/snapchat/android/model/RecentStoryCollection;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    iget-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 909
    :cond_a
    instance-of v0, p2, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    .line 910
    check-cast p2, Lcom/snapchat/android/model/Friend;

    .line 911
    invoke-virtual {p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/model/Friend;)V

    .line 912
    invoke-virtual {p1, p2, v2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/model/Friend;Z)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 812
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->k:Lcom/snapchat/android/util/StoriesThumbnailCache;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/StoriesThumbnailCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 813
    if-nez v0, :cond_0

    .line 840
    :goto_0
    return-void

    .line 814
    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 816
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 818
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f00

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f00

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f00

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 819
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 820
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 821
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/high16 v3, 0x3e80

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3e80

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 826
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 827
    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/high16 v3, 0x42b4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 829
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 831
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 832
    const-wide/16 v4, 0xe6

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 834
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 835
    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 836
    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 837
    invoke-virtual {v10, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 839
    invoke-virtual {p2, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    .line 170
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 171
    return-void

    .line 168
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    goto :goto_0
.end method

.method public b()Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->m:Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;

    return-object v0
.end method

.method public c()Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->n:Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->i:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesFilter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->b:Lcom/snapchat/android/util/debug/ExceptionReporter;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->o:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/snapchat/android/fragments/stories/StoriesFilter;-><init>(Ljava/util/List;Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->i:Landroid/widget/Filter;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->i:Landroid/widget/Filter;

    return-object v0
.end method

.method public getHeaderId(I)J
    .locals 4
    .parameter

    .prologue
    .line 955
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoriesListItem;

    .line 956
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->h:Lcom/snapchat/android/fragments/stories/StoriesSectionizer;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->h:Lcom/snapchat/android/fragments/stories/StoriesSectionizer;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->o:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    invoke-interface {v3}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;->h()Z

    move-result v3

    invoke-virtual {v2, v0, p1, v3}, Lcom/snapchat/android/fragments/stories/StoriesSectionizer;->a(Lcom/snapchat/android/fragments/stories/StoriesListItem;IZ)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, v3}, Lcom/snapchat/android/fragments/stories/StoriesSectionizer;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 960
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0a006e

    const/16 v7, 0x8

    const/4 v6, 0x0

    const v5, 0x7f0a006d

    .line 923
    if-nez p2, :cond_1

    .line 924
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$HeaderViewHolder;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$HeaderViewHolder;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)V

    .line 925
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->f:Landroid/view/LayoutInflater;

    const v2, 0x7f040070

    invoke-virtual {v0, v2, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 926
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$HeaderViewHolder;->a:Landroid/widget/TextView;

    .line 927
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 932
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoriesListItem;

    .line 933
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->h:Lcom/snapchat/android/fragments/stories/StoriesSectionizer;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->o:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    invoke-interface {v3}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;->h()Z

    move-result v3

    invoke-virtual {v2, v0, p1, v3}, Lcom/snapchat/android/fragments/stories/StoriesSectionizer;->a(Lcom/snapchat/android/fragments/stories/StoriesListItem;IZ)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v2

    .line 935
    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->h:Lcom/snapchat/android/fragments/stories/StoriesSectionizer;

    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v3, v2, v0, v4}, Lcom/snapchat/android/fragments/stories/StoriesSectionizer;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 936
    iget-object v1, v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$HeaderViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 939
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 941
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080037

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 943
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    if-ne v2, v0, :cond_0

    .line 944
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 945
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 948
    :cond_0
    return-object p2

    .line 929
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$HeaderViewHolder;

    move-object v1, v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 209
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoriesListItem;

    .line 210
    if-nez p2, :cond_4

    .line 211
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->f:Landroid/view/LayoutInflater;

    const v2, 0x7f04008c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 212
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-direct {v1, p2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;-><init>(Landroid/view/View;)V

    .line 213
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 226
    :goto_0
    iget-object v1, v2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->G:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    invoke-virtual {v2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->x()V

    .line 230
    :cond_0
    iput-object v0, v2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->G:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    .line 231
    iput p1, v2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->H:I

    .line 233
    iget-object v1, v2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->i:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 234
    iget-object v1, v2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesListItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 236
    iget-object v1, v2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->E:Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, v2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->E:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 240
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/fragments/stories/StoriesListItem;)V

    .line 241
    invoke-virtual {p0, v0, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesListItem;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    .line 242
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoryItemTouchListener;

    invoke-direct {v1, p0, p1, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoryItemTouchListener;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;ILcom/snapchat/android/fragments/stories/StoriesListItem;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 244
    iget v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->l:I

    if-ne p1, v1, :cond_6

    instance-of v1, v0, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v1, :cond_6

    .line 246
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->m:Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;

    iget-object v3, v2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->E:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3, v2, v0}, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->a(Landroid/view/View;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/fragments/stories/StoriesListItem;)V

    .line 247
    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->n:Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;

    move-object v1, v0

    check-cast v1, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {v3, v1, v2}, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->a(Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    .line 254
    :cond_2
    :goto_1
    instance-of v1, v0, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v1, :cond_7

    .line 255
    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Landroid/view/View;Lcom/snapchat/android/model/StorySnapLogbook;)V

    .line 265
    :cond_3
    :goto_2
    return-object p2

    .line 216
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    .line 217
    iget-object v2, v1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->G:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 218
    iget-object v2, v1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 221
    :cond_5
    invoke-virtual {v1}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->t()V

    .line 222
    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    invoke-virtual {p2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object v2, v1

    goto :goto_0

    .line 248
    :cond_6
    iget-object v1, v2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->E:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->m:Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;

    iget-object v2, v2, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->b:Landroid/view/View;

    if-ne v1, v2, :cond_2

    .line 250
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->m:Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->a()V

    .line 251
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->n:Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->b()V

    goto :goto_1

    .line 256
    :cond_7
    instance-of v1, v0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    if-eqz v1, :cond_8

    .line 257
    check-cast v0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Landroid/view/View;Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;)V

    goto :goto_2

    .line 258
    :cond_8
    instance-of v1, v0, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    if-eqz v1, :cond_9

    .line 259
    check-cast v0, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Landroid/view/View;Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;)V

    goto :goto_2

    .line 260
    :cond_9
    instance-of v1, v0, Lcom/snapchat/android/model/RecentStoryCollection;

    if-eqz v1, :cond_a

    .line 261
    check-cast v0, Lcom/snapchat/android/model/RecentStoryCollection;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Landroid/view/View;Lcom/snapchat/android/model/RecentStoryCollection;)V

    goto :goto_2

    .line 262
    :cond_a
    instance-of v1, v0, Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_3

    .line 263
    check-cast v0, Lcom/snapchat/android/model/Friend;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Landroid/view/View;Lcom/snapchat/android/model/Friend;)V

    goto :goto_2
.end method
