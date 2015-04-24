.class Lcom/snapchat/android/util/fragment/SnapchatFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/fragment/SnapchatFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/fragment/SnapchatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment$1;->a:Lcom/snapchat/android/util/fragment/SnapchatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment$1;->a:Lcom/snapchat/android/util/fragment/SnapchatFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g(Z)V

    .line 257
    return-void
.end method
