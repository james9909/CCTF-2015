.class Lcom/snapchat/android/ui/UpgradePromptView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/UpgradePromptView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/UpgradePromptView$2;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/UpgradePromptView$2;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/snapchat/android/ui/UpgradePromptView$2$1;->a:Lcom/snapchat/android/ui/UpgradePromptView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/snapchat/android/ui/UpgradePromptView$2$1;->a:Lcom/snapchat/android/ui/UpgradePromptView$2;

    iget-object v0, v0, Lcom/snapchat/android/ui/UpgradePromptView$2;->a:Lcom/snapchat/android/ui/UpgradePromptView;

    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff8

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/ui/UpgradePromptView;->a(ID)V

    .line 84
    return-void
.end method
