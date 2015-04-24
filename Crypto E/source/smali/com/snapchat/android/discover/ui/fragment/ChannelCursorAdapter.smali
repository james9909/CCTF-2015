.class public Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$ChannelViewCallback;
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View$OnClickListener;

.field private final b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

.field private final c:Landroid/view/LayoutInflater;

.field private final d:Lcom/snapchat/android/discover/ui/OpenChannelAnimator;

.field private final e:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$ChannelViewCallback;

.field private final f:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

.field private final g:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

.field private final h:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

.field private i:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/OpenChannelAnimator;Landroid/database/Cursor;Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/discover/controller/DiscoverMediaManager;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$ChannelViewCallback;Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p3, v0}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 36
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->i:Z

    .line 83
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$1;-><init>(Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->a:Landroid/view/View$OnClickListener;

    .line 51
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->d:Lcom/snapchat/android/discover/ui/OpenChannelAnimator;

    .line 52
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->c:Landroid/view/LayoutInflater;

    .line 53
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    .line 54
    iput-object p5, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->f:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    .line 55
    iput-object p6, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->g:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    .line 56
    iput-object p7, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->e:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$ChannelViewCallback;

    .line 57
    iput-object p8, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->h:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/OpenChannelAnimator;Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$ChannelViewCallback;Landroid/database/Cursor;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a()Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->a()Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a()Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    move-result-object v6

    invoke-static {}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a()Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;-><init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/OpenChannelAnimator;Landroid/database/Cursor;Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/discover/controller/DiscoverMediaManager;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$ChannelViewCallback;Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;)V

    .line 42
    return-void
.end method

.method private a(Lcom/snapchat/android/discover/model/ChannelPage;)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->v()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    .line 114
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->s()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v5

    .line 115
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->t()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v6

    .line 116
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->u()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v7

    .line 119
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->x()Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    :cond_0
    const v0, 0x7f0c00d1

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 121
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    .line 148
    :goto_0
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->h:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;Lcom/snapchat/android/discover/model/MediaState;)V

    .line 151
    :cond_1
    return-void

    .line 122
    :cond_2
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->g:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v4, v0, :cond_3

    move v0, v1

    :goto_1
    sget-object v3, Lcom/snapchat/android/discover/model/MediaState;->g:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v5, v3, :cond_4

    move v3, v1

    :goto_2
    or-int/2addr v3, v0

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->g:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v6, v0, :cond_5

    move v0, v1

    :goto_3
    or-int/2addr v3, v0

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->g:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v7, v0, :cond_6

    move v0, v1

    :goto_4
    or-int/2addr v0, v3

    if-eqz v0, :cond_7

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c00c8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c00c9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->g:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_0

    :cond_3
    move v0, v2

    .line 122
    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4

    .line 132
    :cond_7
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->i:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v4, v0, :cond_8

    move v0, v1

    :goto_5
    sget-object v3, Lcom/snapchat/android/discover/model/MediaState;->i:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v5, v3, :cond_9

    move v3, v1

    :goto_6
    or-int/2addr v3, v0

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->i:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v6, v0, :cond_a

    move v0, v1

    :goto_7
    or-int/2addr v3, v0

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->i:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v7, v0, :cond_b

    move v0, v1

    :goto_8
    or-int/2addr v0, v3

    if-eqz v0, :cond_c

    .line 136
    const v0, 0x7f0c00cd

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 137
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->i:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_0

    :cond_8
    move v0, v2

    .line 132
    goto :goto_5

    :cond_9
    move v3, v2

    goto :goto_6

    :cond_a
    move v0, v2

    goto :goto_7

    :cond_b
    move v0, v2

    goto :goto_8

    .line 138
    :cond_c
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->k:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v4, v0, :cond_d

    move v0, v1

    :goto_9
    sget-object v3, Lcom/snapchat/android/discover/model/MediaState;->k:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v5, v3, :cond_e

    move v3, v1

    :goto_a
    or-int/2addr v3, v0

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->k:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v6, v0, :cond_f

    move v0, v1

    :goto_b
    or-int/2addr v0, v3

    sget-object v3, Lcom/snapchat/android/discover/model/MediaState;->k:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v7, v3, :cond_10

    :goto_c
    or-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 142
    const v0, 0x7f0c00cc

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 143
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->k:Lcom/snapchat/android/discover/model/MediaState;

    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 138
    goto :goto_9

    :cond_e
    move v3, v2

    goto :goto_a

    :cond_f
    move v0, v2

    goto :goto_b

    :cond_10
    move v1, v2

    goto :goto_c

    .line 145
    :cond_11
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;Lcom/snapchat/android/discover/model/ChannelPage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->a(Lcom/snapchat/android/discover/model/ChannelPage;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;)Z
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->i:Z

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;)Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$ChannelViewCallback;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->e:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$ChannelViewCallback;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->g:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;)Lcom/snapchat/android/discover/ui/OpenChannelAnimator;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->d:Lcom/snapchat/android/discover/ui/OpenChannelAnimator;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;)Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->h:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;)Lcom/snapchat/android/discover/controller/DiscoverMediaManager;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->f:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->i:Z

    .line 155
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->i:Z

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 67
    instance-of v0, p1, Lcom/snapchat/android/discover/ui/ChannelView;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Lcom/snapchat/android/discover/ui/ChannelView;

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0, p3}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->b(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p1, v2}, Lcom/snapchat/android/discover/ui/ChannelView;->setVisibility(I)V

    .line 72
    invoke-virtual {p1, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setChannelPage(Lcom/snapchat/android/discover/model/ChannelPage;)V

    .line 73
    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/ChannelView;->invalidate()V

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string v0, "ChannelCursorAdapter"

    const-string v1, "Invalid ChannelPage found in the cursor adapter!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setVisibility(I)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f040021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
