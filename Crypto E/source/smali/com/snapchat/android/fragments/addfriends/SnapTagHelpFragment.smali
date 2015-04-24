.class public Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/snapchat/android/ui/TextureVideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;)Lcom/snapchat/android/ui/TextureVideoView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->b:Lcom/snapchat/android/ui/TextureVideoView;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 39
    const v0, 0x7f040081

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->x:Landroid/view/View;

    .line 40
    const v0, 0x7f0a02d7

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/TextureVideoView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->b:Lcom/snapchat/android/ui/TextureVideoView;

    .line 42
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->x:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->b:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->a()V

    .line 88
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/CameraStateEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/CameraStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->G()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(ZLandroid/view/Window;)V

    .line 65
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/CameraStateEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/CameraStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->b:Lcom/snapchat/android/ui/TextureVideoView;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->b:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/TextureVideoView;->seekTo(I)V

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->b:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;->b:Lcom/snapchat/android/ui/TextureVideoView;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment$2;-><init>(Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 76
    return-void
.end method

.method protected s_()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method
