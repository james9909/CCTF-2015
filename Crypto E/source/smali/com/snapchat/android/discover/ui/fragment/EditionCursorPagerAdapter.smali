.class public Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionItem;,
        Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionCursorPagerAdapterListener;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

.field private final b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

.field private final c:Landroid/view/LayoutInflater;

.field private final d:Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionCursorPagerAdapterListener;

.field private final e:Lcom/snapchat/android/discover/model/ChannelPage;

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionCursorPagerAdapterListener;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 58
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a()Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a()Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionCursorPagerAdapterListener;Landroid/view/LayoutInflater;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)V

    .line 60
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionCursorPagerAdapterListener;Landroid/view/LayoutInflater;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->f:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->g:Ljava/util/ArrayList;

    .line 68
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->c:Landroid/view/LayoutInflater;

    .line 69
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 70
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->a:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    .line 71
    iput-object p5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    .line 72
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->d:Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionCursorPagerAdapterListener;

    .line 73
    return-void
.end method

.method private a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;
    .locals 3
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f040043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    .line 239
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->a(Lcom/snapchat/android/discover/model/ChannelPage;)V

    .line 240
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->a:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a(Ljava/lang/String;)I

    move-result v1

    .line 241
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->setCanAdvance(Z)V

    .line 242
    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)V

    .line 243
    return-object v0

    .line 241
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;I)Lcom/snapchat/android/discover/ui/DSnapView;
    .locals 4
    .parameter
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->g:Ljava/util/ArrayList;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 249
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f040046

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/discover/ui/DSnapView;

    .line 250
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/ui/DSnapView;->b(Lcom/snapchat/android/discover/model/ChannelPage;)V

    .line 251
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/ui/DSnapView;->setShouldDisplayOnboardingView(Z)V

    .line 252
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->g:Ljava/util/ArrayList;

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/snapchat/android/discover/ui/DSnapView;->a(Ljava/util/List;Lcom/snapchat/android/discover/model/DSnapPage;I)V

    .line 253
    invoke-direct {p0, v1, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)V

    .line 254
    return-object v1

    .line 251
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private a(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 269
    const-string v0, "IntroVideo"

    .line 271
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->g:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 258
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$1;-><init>(Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)V

    .line 264
    invoke-virtual {p1, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->setAutoAdvanceListener(Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;)V

    .line 265
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    if-nez p2, :cond_0

    .line 132
    const-string v0, "IntroVideo"

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->g:Ljava/util/ArrayList;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 135
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 147
    if-eqz p1, :cond_7

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->g:Ljava/util/ArrayList;

    .line 153
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v2, p1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v2

    .line 156
    if-nez v2, :cond_2

    .line 157
    const-string v2, "EditionCursorPagerAdapter"

    const-string v3, "Invalid DSnapPage found in the cursor adapter!"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 188
    :cond_1
    iput-boolean v6, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->f:Z

    .line 191
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->a:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a(Ljava/lang/String;II)V

    .line 195
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->notifyDataSetChanged()V

    .line 196
    return-void

    .line 161
    :cond_2
    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->r()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 162
    add-int/lit8 v0, v0, 0x1

    .line 165
    :cond_3
    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->r()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/MediaState;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 168
    const-string v3, "EditionCursorPagerAdapter"

    const-string v4, "Skipping DSnap %s because it is an ad and was not loaded."

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    :cond_4
    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v3, v4, :cond_5

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->p()I

    move-result v3

    if-nez v3, :cond_5

    .line 174
    const-string v3, "EditionCursorPagerAdapter"

    const-string v4, "Skipping DSnap %s because it is successfully loaded but has no panels!"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    :cond_5
    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->l()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->h:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v3, v4, :cond_6

    .line 179
    const-string v3, "EditionCursorPagerAdapter"

    const-string v4, "Skipping DSnap %s because there was a content error loading it!"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 184
    :cond_6
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->g:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 229
    check-cast p3, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionItem;

    .line 230
    iget-object v0, p3, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionItem;->a:Landroid/view/View;

    check-cast v0, Lcom/snapchat/android/discover/ui/DSnapView;

    .line 231
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->f()V

    .line 232
    iget-object v0, p3, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionItem;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 233
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->f:Z

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 6
    .parameter

    .prologue
    .line 90
    check-cast p1, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionItem;

    .line 93
    iget-boolean v0, p1, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionItem;->c:Z

    if-eqz v0, :cond_0

    .line 95
    const/4 v1, -0x1

    .line 122
    :goto_0
    return v1

    .line 100
    :cond_0
    const/4 v0, 0x1

    .line 101
    const/4 v2, 0x0

    .line 102
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 103
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionItem;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v0

    .line 112
    :cond_1
    if-eqz v2, :cond_3

    .line 114
    iget-object v0, p1, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionItem;->a:Landroid/view/View;

    check-cast v0, Lcom/snapchat/android/discover/ui/DSnapView;

    .line 115
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->g:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v3, v2, v4}, Lcom/snapchat/android/discover/ui/DSnapView;->a(Ljava/util/List;Lcom/snapchat/android/discover/model/DSnapPage;I)V

    .line 116
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->d:Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionCursorPagerAdapterListener;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v2

    invoke-interface {v0, v3, v4, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionCursorPagerAdapterListener;->a(Ljava/lang/String;ILcom/snapchat/android/discover/model/MediaState;)V

    goto :goto_0

    .line 107
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 108
    goto :goto_1

    .line 122
    :cond_3
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 207
    check-cast p1, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    .line 208
    if-nez p2, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 212
    :goto_0
    if-eqz v1, :cond_1

    .line 213
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;

    move-result-object v0

    .line 219
    :goto_1
    invoke-direct {p0, p2}, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p1, v0, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->addView(Landroid/view/View;I)V

    .line 223
    new-instance v2, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionItem;

    invoke-direct {v2, v0, v3, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionItem;-><init>(Landroid/view/View;Ljava/lang/String;Z)V

    return-object v2

    :cond_0
    move v1, v2

    .line 208
    goto :goto_0

    .line 215
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;I)Lcom/snapchat/android/discover/ui/DSnapView;

    move-result-object v0

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 200
    check-cast p2, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionItem;

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p2, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
