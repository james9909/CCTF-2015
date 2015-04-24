.class public Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$2;,
        Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/snapchat/android/discover/ui/ChannelGroupView;

.field private g:Landroid/view/View;

.field private h:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

.field private i:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->a:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->i:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->f:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->b:Landroid/widget/TextView;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->c()V

    .line 130
    return-void
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->f:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 174
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->f()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->f:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->b:Landroid/widget/TextView;

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 138
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->c()V

    .line 139
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 145
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 149
    sget-object v0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$2;->b:[I

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->i:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 157
    const v0, 0x7f0c00d7

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(I)V

    .line 159
    :goto_0
    return-void

    .line 151
    :pswitch_0
    const v0, 0x7f0c00d9

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(I)V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private e()V
    .locals 1

    .prologue
    .line 162
    const v0, 0x7f0c00d7

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(I)V

    .line 163
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 178
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 186
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->f:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;Landroid/view/View$OnClickListener;)V
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

    .prologue
    .line 46
    const v0, 0x7f0a0194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a:Landroid/view/View;

    const v1, 0x7f0a0195

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->b:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a:Landroid/view/View;

    const v1, 0x7f0a0196

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->c:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f0a0197

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    const v1, 0x7f0a0198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->e:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$1;

    invoke-direct {v1, p0, p3}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$1;-><init>(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f0a019a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->g:Landroid/view/View;

    .line 62
    const v0, 0x7f0a0193

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/ChannelGroupView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->f:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    .line 63
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->h:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    .line 64
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V
    .locals 5
    .parameter

    .prologue
    .line 83
    const-string v0, "DiscoverLoadingStatePresenter"

    const-string v1, "Setting loading state %s (compatibility is %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->i:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->i:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->e:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->i:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->a:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    if-eq v0, v1, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->h:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->h:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->g()V

    goto :goto_0

    .line 100
    :cond_2
    sget-object v0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$2;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 117
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->g()V

    goto :goto_0

    .line 102
    :pswitch_0
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->g()V

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->f()V

    goto :goto_0

    .line 108
    :pswitch_2
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a()V

    goto :goto_0

    .line 111
    :pswitch_3
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->b()V

    goto :goto_0

    .line 114
    :pswitch_4
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->e()V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 70
    const-string v0, "DiscoverLoadingStatePresenter"

    const-string v1, "Setting compatibility %s (from %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->i:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->i:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->i:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->a:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->i:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->e:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    if-eq v0, v1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->d()V

    .line 77
    :cond_0
    return-void
.end method
