.class Lcom/snapchat/android/ui/UpgradePromptView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/UpgradePromptView;->a()V
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
    .line 76
    iput-object p1, p0, Lcom/snapchat/android/ui/UpgradePromptView$2;->a:Lcom/snapchat/android/ui/UpgradePromptView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/snapchat/android/ui/UpgradePromptView$2;->a:Lcom/snapchat/android/ui/UpgradePromptView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/UpgradePromptView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/ui/UpgradePromptView$2;->a:Lcom/snapchat/android/ui/UpgradePromptView;

    new-instance v1, Lcom/snapchat/android/ui/UpgradePromptView$2$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/UpgradePromptView$2$1;-><init>(Lcom/snapchat/android/ui/UpgradePromptView$2;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/UpgradePromptView;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method
