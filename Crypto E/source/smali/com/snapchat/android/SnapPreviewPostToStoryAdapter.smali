.class public Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$PostToStoryCheckedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/snapchat/android/model/PostToStory;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/snapchat/android/database/HasSeenPostToOurStoryDialogLog;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/PostToStory;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Landroid/view/LayoutInflater;

.field private e:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$PostToStoryCheckedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$PostToStoryCheckedCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/PostToStory;",
            ">;",
            "Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$PostToStoryCheckedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 43
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 44
    iput-object p3, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->b:Ljava/util/List;

    .line 45
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->d:Landroid/view/LayoutInflater;

    .line 46
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->c:Landroid/content/Context;

    .line 47
    iput-object p4, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->e:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$PostToStoryCheckedCallback;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/snapchat/android/model/PostToStory;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    const v0, 0x7f0a004c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    invoke-virtual {p2}, Lcom/snapchat/android/model/PostToStory;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;Landroid/view/View;Lcom/snapchat/android/model/PostToStory;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->c(Landroid/view/View;Lcom/snapchat/android/model/PostToStory;)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;)Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$PostToStoryCheckedCallback;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->e:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$PostToStoryCheckedCallback;

    return-object v0
.end method

.method private b(Landroid/view/View;Lcom/snapchat/android/model/PostToStory;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    const v0, 0x7f0a0169

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 72
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->e:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$PostToStoryCheckedCallback;

    invoke-interface {v1, p2}, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$PostToStoryCheckedCallback;->a(Lcom/snapchat/android/model/PostToStory;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 74
    new-instance v1, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;-><init>(Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;Lcom/snapchat/android/model/PostToStory;Landroid/widget/CheckBox;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    new-instance v1, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$2;-><init>(Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method private c(Landroid/view/View;Lcom/snapchat/android/model/PostToStory;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 103
    instance-of v0, p2, Lcom/snapchat/android/model/MyPostToStory;

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 110
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->e:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$PostToStoryCheckedCallback;

    invoke-interface {v0, p2}, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$PostToStoryCheckedCallback;->a(Lcom/snapchat/android/model/PostToStory;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    if-nez p2, :cond_0

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f04006d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 55
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/PostToStory;

    .line 57
    if-eqz v0, :cond_2

    .line 58
    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->a(Landroid/view/View;Lcom/snapchat/android/model/PostToStory;)V

    .line 59
    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->b(Landroid/view/View;Lcom/snapchat/android/model/PostToStory;)V

    .line 60
    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->c(Landroid/view/View;Lcom/snapchat/android/model/PostToStory;)V

    .line 62
    :cond_2
    return-object p2
.end method
