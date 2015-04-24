.class public Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/feed/FeedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedViewHolder"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/snapchat/android/model/chat/ChatConversation;

.field public d:Landroid/animation/Animator;

.field public e:Z

.field f:Landroid/widget/FrameLayout;

.field g:Landroid/widget/ImageView;

.field h:Lcom/snapchat/android/ui/FeedReplayAnimationView;

.field i:Landroid/widget/ProgressBar;

.field j:Landroid/widget/TextView;

.field k:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->a:Landroid/widget/TextView;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 363
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 364
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 365
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->a:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 370
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 371
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    return-void
.end method
