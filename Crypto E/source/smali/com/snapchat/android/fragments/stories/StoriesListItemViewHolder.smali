.class public Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;
.super Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/model/StoryGroup$StoryGroupChangedListener;
.implements Lcom/snapchat/android/model/StorySnapLogbook$StorySnapLogbookChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$6;
    }
.end annotation


# instance fields
.field protected final A:Landroid/view/ViewStub;

.field protected final B:Landroid/widget/Button;

.field protected final C:Landroid/widget/ProgressBar;

.field protected final D:Landroid/widget/CheckBox;

.field protected E:Landroid/widget/ScrollView;

.field protected F:Landroid/view/ViewGroup;

.field protected G:Lcom/snapchat/android/fragments/stories/StoriesListItem;

.field protected H:I

.field protected I:Z

.field private final M:Landroid/content/Context;

.field private N:Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;

.field protected final i:Landroid/widget/ImageView;

.field protected final j:Landroid/widget/ProgressBar;

.field protected final k:Landroid/widget/ImageView;

.field protected final l:Landroid/view/ViewGroup;

.field protected final m:Landroid/widget/TextView;

.field protected final n:Landroid/widget/ImageView;

.field protected final o:Landroid/widget/TextView;

.field protected final p:Landroid/widget/ImageView;

.field protected final q:Landroid/widget/TextView;

.field protected final r:Landroid/widget/LinearLayout;

.field protected final s:Landroid/widget/Button;

.field protected final t:Landroid/widget/Space;

.field protected final u:Landroid/widget/LinearLayout;

.field protected final v:Landroid/widget/Button;

.field protected final w:Landroid/widget/ProgressBar;

.field protected final x:Landroid/widget/LinearLayout;

.field protected final y:Lcom/snapchat/android/ui/ProgressiveSaveButton;

.field protected final z:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;-><init>(Landroid/view/View;)V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->I:Z

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->M:Landroid/content/Context;

    .line 110
    const v0, 0x7f0a0224

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->i:Landroid/widget/ImageView;

    .line 111
    const v0, 0x7f0a0225

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->j:Landroid/widget/ProgressBar;

    .line 112
    const v0, 0x7f0a0226

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->k:Landroid/widget/ImageView;

    .line 113
    const v0, 0x7f0a0222

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->l:Landroid/view/ViewGroup;

    .line 114
    const v0, 0x7f0a004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0a0229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->n:Landroid/widget/ImageView;

    .line 116
    const v0, 0x7f0a0228

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->o:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0a022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->p:Landroid/widget/ImageView;

    .line 118
    const v0, 0x7f0a022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->q:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0a0307

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->r:Landroid/widget/LinearLayout;

    .line 121
    const v0, 0x7f0a0308

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->s:Landroid/widget/Button;

    .line 122
    const v0, 0x7f0a0306

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->t:Landroid/widget/Space;

    .line 123
    const v0, 0x7f0a0304

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->u:Landroid/widget/LinearLayout;

    .line 124
    const v0, 0x7f0a0305

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->v:Landroid/widget/Button;

    .line 125
    const v0, 0x7f0a0309

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->w:Landroid/widget/ProgressBar;

    .line 127
    const v0, 0x7f0a030a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->x:Landroid/widget/LinearLayout;

    .line 128
    new-instance v0, Lcom/snapchat/android/ui/ProgressiveSaveButton;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->M:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/ProgressiveSaveButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->y:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->x:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->y:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    const v0, 0x7f0a030b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->z:Landroid/widget/Button;

    .line 132
    const v0, 0x7f0a0047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->B:Landroid/widget/Button;

    .line 133
    const v0, 0x7f0a022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->A:Landroid/view/ViewStub;

    .line 134
    const v0, 0x7f0a030c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->C:Landroid/widget/ProgressBar;

    .line 135
    const v0, 0x7f0a0049

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->D:Landroid/widget/CheckBox;

    .line 136
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Ljava/lang/String;ZLandroid/view/LayoutInflater;Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0a022b

    const/4 v4, 0x0

    .line 661
    const v0, 0x7f04008d

    invoke-virtual {p4, v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 663
    const v0, 0x7f0a030d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 664
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    if-eqz p3, :cond_0

    .line 666
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 667
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 673
    :goto_0
    return-object v1

    .line 669
    :cond_0
    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 670
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->L:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;)Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->N:Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;

    return-object p1
.end method

.method private a(Lcom/snapchat/android/fragments/stories/StoriesListItem;I)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 193
    instance-of v0, p1, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    if-eqz v0, :cond_0

    .line 194
    check-cast p1, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;I)V

    .line 208
    :goto_0
    return-void

    .line 196
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v0, :cond_1

    .line 197
    check-cast p1, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/model/StorySnapLogbook;I)V

    goto :goto_0

    .line 199
    :cond_1
    instance-of v0, p1, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_2

    .line 200
    check-cast p1, Lcom/snapchat/android/model/Friend;

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/model/Friend;I)V

    goto :goto_0

    .line 202
    :cond_2
    instance-of v0, p1, Lcom/snapchat/android/model/RecentStoryCollection;

    if-eqz v0, :cond_3

    .line 203
    check-cast p1, Lcom/snapchat/android/model/RecentStoryCollection;

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/model/RecentStoryCollection;I)V

    goto :goto_0

    .line 206
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected feed item type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;I)V
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 217
    invoke-virtual {p0, p1, v2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;Z)V

    .line 218
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 219
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 220
    invoke-virtual {p1}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->e()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v5

    .line 226
    instance-of v0, p1, Lcom/snapchat/android/fragments/stories/MyStoryGroupStoriesListItem;

    if-nez v0, :cond_1

    move v0, v1

    .line 228
    :goto_0
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/SaveStoryToGalleryPreferenceWrapper;->a()Lcom/snapchat/android/camera/transcoding/SaveStoryToGalleryPreferenceWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/camera/transcoding/SaveStoryToGalleryPreferenceWrapper;->b()Z

    move-result v6

    .line 229
    if-nez v0, :cond_0

    if-nez v6, :cond_2

    :cond_0
    move v0, v1

    .line 230
    :goto_1
    if-eqz v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->x:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 226
    goto :goto_0

    :cond_2
    move v0, v2

    .line 229
    goto :goto_1

    .line 235
    :cond_3
    sget-object v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$6;->a:[I

    invoke-virtual {v5}, Lcom/snapchat/android/model/StoryGroup;->n()Lcom/snapchat/android/model/StoryGroup$ActionState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/model/StoryGroup$ActionState;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_0

    .line 262
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unhandled action state for story group."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->y:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    sget-object v1, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->a:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setAnimationState(Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;)V

    .line 265
    :goto_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->x:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->y:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->M:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;Landroid/view/View;I)V

    goto :goto_2

    .line 241
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->y:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    sget-object v6, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->b:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    invoke-virtual {v0, v6}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setAnimationState(Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;)V

    .line 243
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->y:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    invoke-virtual {v5}, Lcom/snapchat/android/model/StoryGroup;->o()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setSaveProgress(I)V

    .line 244
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    const v5, 0x7f0c018a

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 247
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->y:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    sget-object v6, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->c:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    invoke-virtual {v0, v6}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setAnimationState(Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;)V

    .line 249
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    const v6, 0x7f0c0189

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v4, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 252
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$1;

    invoke-direct {v1, p0, v5}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$1;-><init>(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/model/StoryGroup;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/snapchat/android/model/Friend;I)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/16 v7, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 344
    invoke-virtual {p0, p1, v1}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/model/Friend;Z)V

    .line 345
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 346
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 349
    sget-object v2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$6;->c:[I

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->O()Lcom/snapchat/android/model/FriendAction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    move v2, v1

    .line 361
    :goto_0
    if-eqz v2, :cond_0

    .line 362
    iget-object v5, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->O()Lcom/snapchat/android/model/FriendAction;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/model/FriendAction;->NONE:Lcom/snapchat/android/model/FriendAction;

    if-eq v2, v3, :cond_1

    .line 367
    :goto_1
    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->z:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->C:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 375
    :goto_2
    return-void

    .line 351
    :pswitch_0
    const v2, 0x7f0c0034

    .line 352
    goto :goto_0

    .line 354
    :pswitch_1
    const v2, 0x7f0c00c1

    .line 355
    goto :goto_0

    .line 357
    :pswitch_2
    const v2, 0x7f0c018a

    goto :goto_0

    :cond_1
    move v0, v1

    .line 365
    goto :goto_1

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->z:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->C:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/snapchat/android/model/RecentStoryCollection;I)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 385
    return-void
.end method

.method private a(Lcom/snapchat/android/model/StorySnapLogbook;I)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const v7, 0x7f090066

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 276
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(Lcom/snapchat/android/model/StorySnapLogbook;)V

    .line 277
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 278
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 280
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->s:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 282
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->s:Landroid/widget/Button;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setAlpha(F)V

    .line 289
    :goto_0
    sget-object v2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$6;->b:[I

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->k()Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 336
    :goto_1
    return-void

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->s:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 286
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->s:Landroid/widget/Button;

    const v3, 0x3e4ccccd

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0

    .line 291
    :pswitch_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->w:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 293
    invoke-direct {p0, p2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->c(I)V

    .line 294
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->u:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->v:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 296
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->r:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->s:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;Landroid/view/View;I)V

    goto :goto_1

    .line 302
    :pswitch_1
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->w:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 303
    invoke-direct {p0, v4}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->c(I)V

    .line 304
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    const v3, 0x7f0c018a

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 308
    :pswitch_2
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->w:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 309
    invoke-direct {p0, v4}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->c(I)V

    .line 310
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    const v3, 0x7f0c0189

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 313
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$2;-><init>(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/model/StorySnapLogbook;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 325
    :pswitch_3
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->w:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 326
    invoke-direct {p0, v4}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->c(I)V

    .line 327
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    const v3, 0x7f0c00c1

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 331
    :pswitch_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->w:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 332
    invoke-direct {p0, v4}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->c(I)V

    goto/16 :goto_1

    .line 289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->N:Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;

    return-object v0
.end method

.method private b(Lcom/snapchat/android/model/Friend;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 732
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 735
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 737
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 759
    :goto_0
    return-void

    .line 740
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->r_()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 748
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->u()Ljava/lang/String;

    move-result-object v1

    .line 750
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->M:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 751
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 752
    const-string v2, "US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 753
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    .line 754
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    .line 755
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 757
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->M:Landroid/content/Context;

    const v3, 0x7f0c00a5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private b(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;Ljava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/Friend;",
            "Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->z()V

    .line 704
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->A()V

    .line 705
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->D:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->D:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->u()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 707
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->D:Landroid/widget/CheckBox;

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$5;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$5;-><init>(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/model/Friend;Ljava/util/Set;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->M:Landroid/content/Context;

    return-object v0
.end method

.method private c(I)V
    .locals 1
    .parameter

    .prologue
    .line 807
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 808
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 809
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->t:Landroid/widget/Space;

    invoke-virtual {v0, p1}, Landroid/widget/Space;->setVisibility(I)V

    .line 810
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;Z)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 485
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 486
    invoke-virtual {p1}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->e()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v1

    .line 488
    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryGroup;->l()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 489
    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryGroup;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 490
    if-lez v2, :cond_2

    .line 491
    if-ne v2, v4, :cond_1

    .line 492
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    const v1, 0x7f0c01f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 497
    :goto_0
    if-eqz p2, :cond_0

    .line 498
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    :cond_0
    :goto_1
    return-void

    .line 494
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c01fa

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 500
    :cond_2
    if-lez v1, :cond_4

    .line 501
    if-ne v1, v4, :cond_3

    .line 502
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    const v1, 0x7f0c016a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 507
    :goto_2
    if-eqz p2, :cond_0

    .line 508
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 504
    :cond_3
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c016b

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 510
    :cond_4
    invoke-virtual {p1}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 511
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 512
    :cond_5
    invoke-virtual {p1}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->r_()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    if-eqz p2, :cond_0

    .line 516
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/model/Friend;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 420
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->r_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Ljava/lang/String;)V

    .line 423
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;Ljava/util/Set;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/Friend;",
            "Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 682
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->B:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->z:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 686
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(Lcom/snapchat/android/model/Friend;)V

    .line 687
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->D:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 689
    const v1, 0x7f020073

    invoke-interface {p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;->d()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    invoke-interface {p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;->g()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(ILcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V

    .line 694
    :goto_0
    return-void

    .line 692
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;Ljava/util/Set;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/Friend;Z)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/16 v2, 0x8

    .line 431
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryLibrary;->c(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_2

    .line 433
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/model/StoryCollection;)V

    .line 434
    if-eqz p2, :cond_0

    .line 435
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 441
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->r_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    if-eqz p2, :cond_0

    .line 444
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/StoryCollection;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 454
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 457
    instance-of v2, p1, Lcom/snapchat/android/model/SponsoredStoryCollection;

    .line 459
    if-eqz v2, :cond_1

    .line 460
    const v0, 0x7f0c01fd

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 465
    :goto_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryCollection;->o()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0c016e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    return-void

    .line 462
    :cond_1
    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/StoryCollection;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 467
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryCollection;->p()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0c00f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 469
    :cond_3
    if-nez v2, :cond_4

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0c020c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 471
    :cond_4
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryCollection;->y()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0c020d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/model/StoryGroup;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 768
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->G:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    instance-of v0, v0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->G:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->e()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 771
    :cond_0
    const-string v0, "StoriesListItemViewHolder"

    const-string v1, "View received changed notification from different model."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 776
    :goto_0
    return-void

    .line 775
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->v()V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 392
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ab()Ljava/lang/String;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 395
    :cond_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public a(Lcom/snapchat/android/model/StorySnapLogbook;Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 609
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->f()Ljava/util/List;

    move-result-object v6

    .line 610
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->F:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->F:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 611
    :cond_0
    if-eqz v6, :cond_3

    .line 612
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapNote;

    .line 613
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapNote;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/android/util/FriendUtils;->d(Ljava/lang/String;Lcom/snapchat/android/model/User;)Ljava/lang/String;

    move-result-object v2

    .line 615
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->F:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapNote;->a()Z

    move-result v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Landroid/widget/LinearLayout;Ljava/lang/String;ZLandroid/view/LayoutInflater;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 617
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->F:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 619
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->i()Lcom/snapchat/android/model/StorySnapExtra;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->i()Lcom/snapchat/android/model/StorySnapExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnapExtra;->a()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 622
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->i()Lcom/snapchat/android/model/StorySnapExtra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapExtra;->a()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 624
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->F:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " more"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Landroid/widget/LinearLayout;Ljava/lang/String;ZLandroid/view/LayoutInflater;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 626
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->F:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 629
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->E:Landroid/widget/ScrollView;

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$4;-><init>(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 657
    :cond_3
    return-void
.end method

.method public a(J)Z
    .locals 7
    .parameter

    .prologue
    .line 552
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    :cond_0
    const/4 v0, 0x0

    .line 570
    :goto_0
    return v0

    .line 556
    :cond_1
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$3;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->L:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$3;-><init>(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Landroid/view/View;Landroid/view/View;J)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->N:Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;

    .line 569
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->N:Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;

    invoke-virtual {v0}, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;->a()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 570
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 403
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    .line 404
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 406
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aF()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    const v1, 0x7f0c0169

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 413
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aE()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    const v1, 0x7f0c00ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 411
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnap;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->I:Z

    if-eq v0, p1, :cond_0

    .line 167
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->I:Z

    .line 168
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->v()V

    .line 170
    :cond_0
    return-void
.end method

.method public c(Lcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 785
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->G:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    if-eq v0, p1, :cond_0

    .line 787
    const-string v0, "StoriesListItemViewHolder"

    const-string v1, "View received changed notification from different model."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    :goto_0
    return-void

    .line 791
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->v()V

    goto :goto_0
.end method

.method public c(Z)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 532
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 542
    :cond_0
    :goto_0
    return v0

    .line 536
    :cond_1
    if-eqz p1, :cond_2

    .line 537
    new-instance v0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextShowAnimation;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->L:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextShowAnimation;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->N:Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;

    .line 538
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->N:Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;

    invoke-virtual {v0}, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;->a()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 542
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 540
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public d(Z)Z
    .locals 3
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 580
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    :cond_0
    const/4 v0, 0x0

    .line 591
    :goto_0
    return v0

    .line 584
    :cond_1
    if-eqz p1, :cond_2

    .line 585
    new-instance v0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextHideAnimation;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->L:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextHideAnimation;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->N:Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;

    .line 586
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->N:Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;

    invoke-virtual {v0}, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;->a()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 591
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 588
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public t()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 139
    invoke-super {p0}, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->t()V

    .line 140
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->t:Landroid/widget/Space;

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->w:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->z:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->C:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->B:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->D:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(I)V

    .line 156
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->B:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->D:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->I:Z

    .line 159
    return-void
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->I:Z

    return v0
.end method

.method public v()V
    .locals 2

    .prologue
    .line 184
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->G:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->I:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/fragments/stories/StoriesListItem;I)V

    .line 185
    return-void

    .line 184
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->N:Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->N:Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;

    invoke-virtual {v0}, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;->a()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->N:Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->N:Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;

    invoke-virtual {v0}, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;->e()V

    .line 598
    :cond_0
    return-void
.end method

.method public y()V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->E:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->A:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->E:Landroid/widget/ScrollView;

    .line 603
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->E:Landroid/widget/ScrollView;

    const v1, 0x7f0a0234

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->F:Landroid/view/ViewGroup;

    .line 605
    :cond_0
    return-void
.end method
