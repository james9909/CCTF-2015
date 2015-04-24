.class public Lcom/snapchat/android/StorySnapViewersAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/StorySnapViewersAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/snapchat/android/model/StorySnapNote;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapNote;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    .line 31
    if-nez p2, :cond_0

    .line 32
    iget-object v0, p0, Lcom/snapchat/android/StorySnapViewersAdapter;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 33
    const v1, 0x7f04008d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 34
    new-instance v1, Lcom/snapchat/android/StorySnapViewersAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/snapchat/android/StorySnapViewersAdapter$ViewHolder;-><init>(Lcom/snapchat/android/StorySnapViewersAdapter;)V

    .line 35
    const v0, 0x7f0a030d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/snapchat/android/StorySnapViewersAdapter$ViewHolder;->a:Landroid/widget/TextView;

    .line 36
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 41
    :goto_0
    iget-object v1, v0, Lcom/snapchat/android/StorySnapViewersAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/snapchat/android/StorySnapViewersAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapNote;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapNote;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-object p2

    .line 38
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/StorySnapViewersAdapter$ViewHolder;

    goto :goto_0
.end method
