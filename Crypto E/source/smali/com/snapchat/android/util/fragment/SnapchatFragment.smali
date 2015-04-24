.class public Lcom/snapchat/android/util/fragment/SnapchatFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;
    }
.end annotation


# instance fields
.field protected A:Z

.field private final a:Landroid/os/Handler;

.field public w:Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;

.field public x:Landroid/view/View;

.field public y:Z

.field protected z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>(Landroid/os/Handler;)V

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->z:I

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->A:Z

    .line 65
    iput-object p1, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->a:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method private b()V
    .locals 3
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 248
    iget-boolean v1, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->A:Z

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->z:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 250
    :cond_0
    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    iget v1, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->z:I

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/LandingPageActivity;->a(ILcom/snapchat/android/util/fragment/SnapchatFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->a:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/util/fragment/SnapchatFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment$1;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->A:Z

    .line 262
    :cond_1
    return-void
.end method


# virtual methods
.method public G()Landroid/view/Window;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 98
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0
.end method

.method public H()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public I()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method protected J()Z
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 199
    invoke-virtual {v3, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 200
    instance-of v4, v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    if-eqz v4, :cond_0

    .line 201
    check-cast v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g(Z)V

    .line 202
    invoke-virtual {v3, p1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 207
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public c_()Z
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public d(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->x:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->x:Landroid/view/View;

    .line 298
    return-void
.end method

.method public e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 293
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public e_()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public g(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->c_()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->setUserVisibleHint(Z)V

    .line 161
    :cond_0
    if-nez p1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 166
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->y:Z

    if-eq v0, p1, :cond_2

    .line 168
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->J()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->A:Z

    .line 171
    const-string v0, "SnapchatFragment"

    const-string v1, "Fragment is not yet resumed. Scheduling onVisible for later"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :cond_2
    :goto_0
    return-void

    .line 174
    :cond_3
    iput-boolean v2, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->A:Z

    .line 177
    iput-boolean p1, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->y:Z

    .line 179
    if-eqz p1, :cond_5

    .line 180
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->w:Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->w:Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;

    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->z()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;->a(Z)V

    .line 184
    :cond_4
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->s_()V

    goto :goto_0

    .line 186
    :cond_5
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->d_()V

    goto :goto_0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 319
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 71
    instance-of v0, p1, Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;

    iput-object p1, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->w:Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;

    .line 74
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    const-string v1, "page_index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->z:I

    .line 90
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->w:Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;

    .line 80
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 282
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 283
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 235
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 236
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 238
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->b()V

    .line 239
    return-void
.end method

.method public q_()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g(Z)V

    .line 149
    return-void
.end method

.method public s_()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 270
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 271
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method public t_()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method
