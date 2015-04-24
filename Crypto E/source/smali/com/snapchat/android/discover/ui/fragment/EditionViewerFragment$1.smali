.class Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->e()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$1;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$1;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;->a()V

    .line 194
    return-void
.end method
