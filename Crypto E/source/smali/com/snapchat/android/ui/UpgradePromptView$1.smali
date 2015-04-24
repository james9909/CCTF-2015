.class Lcom/snapchat/android/ui/UpgradePromptView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/UpgradePromptView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/UpgradePromptView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/UpgradePromptView;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/snapchat/android/ui/UpgradePromptView$1;->a:Lcom/snapchat/android/ui/UpgradePromptView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    return-void
.end method

.method public c(I)V
    .locals 2
    .parameter

    .prologue
    .line 48
    packed-switch p1, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/ui/UpgradePromptView$1;->a:Lcom/snapchat/android/ui/UpgradePromptView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/UpgradePromptView;->a(Lcom/snapchat/android/ui/UpgradePromptView;Z)Z

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/ui/UpgradePromptView$1;->a:Lcom/snapchat/android/ui/UpgradePromptView;

    invoke-static {v0}, Lcom/snapchat/android/ui/UpgradePromptView;->a(Lcom/snapchat/android/ui/UpgradePromptView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/ui/UpgradePromptView$1;->a:Lcom/snapchat/android/ui/UpgradePromptView;

    invoke-static {v0}, Lcom/snapchat/android/ui/UpgradePromptView;->b(Lcom/snapchat/android/ui/UpgradePromptView;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/UpgradePromptView$1;->a:Lcom/snapchat/android/ui/UpgradePromptView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/UpgradePromptView;->setVisibility(I)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
