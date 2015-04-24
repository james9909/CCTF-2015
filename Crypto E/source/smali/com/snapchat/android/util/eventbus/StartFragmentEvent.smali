.class public Lcom/snapchat/android/util/eventbus/StartFragmentEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/snapchat/android/util/fragment/SnapchatFragment;

.field public b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0, v0}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;->a:Lcom/snapchat/android/util/fragment/SnapchatFragment;

    .line 38
    iput-object p2, p0, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;->b:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;->c:Ljava/lang/String;

    .line 40
    return-void
.end method
