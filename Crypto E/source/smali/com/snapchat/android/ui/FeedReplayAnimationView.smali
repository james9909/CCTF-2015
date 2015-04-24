.class public Lcom/snapchat/android/ui/FeedReplayAnimationView;
.super Lcom/snapchat/android/ui/FrivolousAnimationView;
.source "SourceFile"


# static fields
.field protected static a:I

.field protected static b:I

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/snapchat/android/ui/FeedReplayAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/ui/FeedReplayAnimationView;->c:Ljava/lang/String;

    .line 25
    const v0, 0x7f020135

    sput v0, Lcom/snapchat/android/ui/FeedReplayAnimationView;->a:I

    .line 26
    const v0, 0x7f020033

    sput v0, Lcom/snapchat/android/ui/FeedReplayAnimationView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/FrivolousAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method public setDisplayedIcon(Lcom/snapchat/android/model/Snap;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-static {p1}, Lcom/snapchat/android/util/ListUtils;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setDisplayedIcon(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 34
    return-void
.end method

.method public setDisplayedIcon(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 39
    invoke-virtual {p0, v5}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setBackgroundResource(I)V

    .line 40
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->a()V

    .line 42
    const/4 v0, 0x0

    .line 43
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 44
    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->aC()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;

    sget v1, Lcom/snapchat/android/ui/FeedReplayAnimationView;->a:I

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;-><init>(I)V

    .line 53
    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    .line 54
    iget-wide v2, v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;->frivolousAnimationTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 55
    iget-wide v2, v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;->frivolousAnimationTime:J

    invoke-virtual {p0, v2, v3}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->a(J)V

    .line 57
    :cond_2
    iget v1, v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;->startResource:I

    iget v0, v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;->endResource:I

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setIconResources(II)V

    .line 77
    :goto_1
    return-void

    .line 47
    :cond_3
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;

    sget v1, Lcom/snapchat/android/ui/FeedReplayAnimationView;->b:I

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;-><init>(I)V

    goto :goto_0

    .line 49
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 50
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0, p0, p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_5
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 63
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 66
    invoke-interface {v0, p0, p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_6

    .line 70
    iget v0, v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;->startResource:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v4, 0x3e8

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_2

    .line 74
    :cond_7
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 76
    invoke-virtual {p0, v5, v5}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setIconResources(II)V

    goto :goto_1
.end method
