.class public Lcom/snapchat/android/discover/ui/DSnapItemSponsoredViewAdapterDecorator;
.super Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;
.source "SourceFile"


# instance fields
.field private final e:Landroid/view/LayoutInflater;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v1, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

    invoke-direct {v1, p1}, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/snapchat/android/discover/ui/DSnapItemSponsoredViewAdapterDecorator;-><init>(Landroid/view/LayoutInflater;Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;)V

    .line 27
    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;-><init>(Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;)V

    .line 34
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemSponsoredViewAdapterDecorator;->e:Landroid/view/LayoutInflater;

    .line 35
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/DSnapItemSponsoredViewAdapterDecorator;->g:Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z

    .line 41
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemSponsoredViewAdapterDecorator;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f040045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemSponsoredViewAdapterDecorator;->a:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemSponsoredViewAdapterDecorator;->a:Landroid/view/View;

    const v1, 0x7f0a01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemSponsoredViewAdapterDecorator;->c:Landroid/widget/FrameLayout;

    .line 43
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemSponsoredViewAdapterDecorator;->a:Landroid/view/View;

    const v1, 0x7f0a01a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemSponsoredViewAdapterDecorator;->f:Landroid/widget/ImageView;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPanel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    invoke-direct {v1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;-><init>()V

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemSponsoredViewAdapterDecorator;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Landroid/widget/ImageView;)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Z)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a()Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemSponsoredViewAdapterDecorator;->g:Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->a(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;)V

    .line 53
    return v3
.end method

.method public c()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->c()V

    .line 59
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemSponsoredViewAdapterDecorator;->g:Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemSponsoredViewAdapterDecorator;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->a(Landroid/widget/ImageView;)V

    .line 60
    return-void
.end method
