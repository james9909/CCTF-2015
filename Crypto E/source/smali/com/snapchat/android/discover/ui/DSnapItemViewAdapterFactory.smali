.class public Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterFactory$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 79
    sget-object v0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterFactory$1;->a:[I

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 81
    :pswitch_0
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;

    invoke-direct {v0, p1}, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 83
    :pswitch_1
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;

    invoke-direct {v0, p1}, Lcom/snapchat/android/discover/ui/DSnapItemWebViewAdapter;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 85
    :pswitch_2
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;

    invoke-direct {v0, p1}, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 87
    :pswitch_3
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;

    invoke-direct {v0, p1}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;
    .locals 2
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
    .line 53
    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPage;->p()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPage;->n()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v0

    if-ne v0, p4, :cond_0

    .line 54
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;

    invoke-direct {v0, p1, p2}, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;-><init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;)V

    move-object p2, v0

    .line 56
    :cond_0
    return-object p2
.end method

.method public a(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;
    .locals 3
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p4}, Lcom/snapchat/android/discover/model/DSnapPanel;->f()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterFactory;->a(Landroid/content/Context;Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;)Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    move-result-object v1

    .line 29
    if-nez v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-object v0

    .line 33
    :cond_1
    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterFactory;->a(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    move-result-object v1

    .line 34
    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterFactory;->b(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2, p3, p4}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 41
    goto :goto_0
.end method

.method protected b(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;
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

    .prologue
    .line 68
    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPage;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/snapchat/android/discover/model/DSnapPanel;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapItemSponsoredViewAdapterDecorator;

    invoke-direct {v0, p1, p2}, Lcom/snapchat/android/discover/ui/DSnapItemSponsoredViewAdapterDecorator;-><init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;)V

    move-object p2, v0

    .line 73
    :cond_0
    return-object p2
.end method
