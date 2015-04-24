.class Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->onSnapSendInitiated(Lcom/snapchat/android/util/eventbus/SnapSendInitiatedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$6;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$6;->a:Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;

    iget-object v0, v0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->a()V

    .line 330
    return-void
.end method
