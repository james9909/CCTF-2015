.class public Lcom/snapchat/android/camera/CardLinkCameraFragment;
.super Lcom/snapchat/android/camera/BaseCameraFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardDetailsListener;


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field protected a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

.field protected l:Lcom/snapchat/android/cash/CardBlockerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private n:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/snapchat/android/camera/CardLinkCameraFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/camera/CardLinkCameraFragment;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/RelativeLayout;)Lcom/snapchat/android/camera/cameradecor/CameraDecor;
    .locals 3
    .parameter

    .prologue
    .line 89
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CardLinkCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/camera/CardLinkCameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardDetailsListener;)V

    iput-object v0, p0, Lcom/snapchat/android/camera/CardLinkCameraFragment;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/camera/CardLinkCameraFragment;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    return-object v0
.end method

.method protected a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CardLinkCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/camera/CardLinkCameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 124
    if-nez p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/camera/CardLinkCameraFragment;->l:Lcom/snapchat/android/cash/CardBlockerManager;

    invoke-virtual {v0}, Lcom/snapchat/android/cash/CardBlockerManager;->a()Lcom/snapchat/android/api2/cash/blockers/CardBlocker;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/blockers/CardBlocker;->h()V

    .line 131
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    const-string v1, "goToFragmentNum"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CardLinkCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CardLinkCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 137
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CardLinkCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 138
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 109
    iget-object v0, p0, Lcom/snapchat/android/camera/CardLinkCameraFragment;->l:Lcom/snapchat/android/cash/CardBlockerManager;

    invoke-virtual {v0}, Lcom/snapchat/android/cash/CardBlockerManager;->a()Lcom/snapchat/android/api2/cash/blockers/CardBlocker;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/snapchat/android/api2/cash/blockers/CardBlocker;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method

.method public a([BLcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/snapchat/android/camera/CardLinkCameraFragment;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :cond_0
    return-void
.end method

.method protected a(Lcom/snapchat/android/util/Resolution;)[B
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-static {p1}, Lcom/snapchat/android/camera/CameraUtils;->a(Lcom/snapchat/android/util/Resolution;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/CardLinkCameraFragment;->n:[B

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/camera/CardLinkCameraFragment;->n:[B

    return-object v0
.end method

.method public h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    sget-object v0, Lcom/snapchat/android/camera/CardLinkCameraFragment;->m:Ljava/lang/String;

    const-string v1, "CASH-LOG: CardLinkCameraFragment onCanceled"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p0, v3}, Lcom/snapchat/android/camera/CardLinkCameraFragment;->a(I)V

    .line 118
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/camera/BaseCameraFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/snapchat/android/camera/CardLinkCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    sget-object v1, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->b:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->a(Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/camera/CardLinkCameraFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->onResume()V

    .line 54
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CardLinkCameraFragment;->G()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 55
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CardLinkCameraFragment;->G()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CardLinkCameraFragment;->G()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(ZLandroid/view/Window;)V

    .line 58
    iget-object v0, p0, Lcom/snapchat/android/camera/CardLinkCameraFragment;->x:Landroid/view/View;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/snapchat/android/camera/CardLinkCameraFragment;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 61
    return-void
.end method

.method public onValidatedCardInputEvent(Lcom/snapchat/android/util/eventbus/ValidatedCardInputEvent;)V
    .locals 6
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 65
    iget-boolean v0, p1, Lcom/snapchat/android/util/eventbus/ValidatedCardInputEvent;->a:Z

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/snapchat/android/camera/CardLinkCameraFragment;->m:Ljava/lang/String;

    const-string v1, "CASH-LOG: CardLinkCameraFragment onValidatedCardInputEvent SUCCESS. Finishing activity."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CardLinkCameraFragment;->a(I)V

    .line 85
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/ValidatedCardInputEvent;->a()Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/ValidatedCardInputEvent;->a()Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    move-result-object v1

    if-nez v1, :cond_1

    .line 71
    sget-object v0, Lcom/snapchat/android/camera/CardLinkCameraFragment;->m:Ljava/lang/String;

    const-string v1, "CASH-LOG: CardLinkCameraFragment onValidatedCardInputEvent FAILED without error message. Finishing activity."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0, v5}, Lcom/snapchat/android/camera/CardLinkCameraFragment;->a(I)V

    goto :goto_0

    .line 75
    :cond_1
    sget-object v1, Lcom/snapchat/android/camera/CardLinkCameraFragment;->m:Ljava/lang/String;

    const-string v2, "CASH-LOG: CardLinkCameraFragment onValidatedCardInputEvent FAILED errorMessage[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    new-instance v1, Lcom/snapchat/android/camera/CardLinkCameraFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/camera/CardLinkCameraFragment$1;-><init>(Lcom/snapchat/android/camera/CardLinkCameraFragment;Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;)V

    invoke-static {v1}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
