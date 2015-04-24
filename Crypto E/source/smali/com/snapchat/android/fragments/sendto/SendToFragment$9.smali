.class Lcom/snapchat/android/fragments/sendto/SendToFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog$PostToStoryDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/sendto/SendToFragment;->b(Lcom/snapchat/android/model/PostToStory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/PostToStory;

.field final synthetic b:Lcom/snapchat/android/fragments/sendto/SendToFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;Lcom/snapchat/android/model/PostToStory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$9;->b:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$9;->a:Lcom/snapchat/android/model/PostToStory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 429
    if-eqz p1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$9;->b:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a:Lcom/snapchat/android/database/HasSeenPostToOurStoryDialogLog;

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$9;->a:Lcom/snapchat/android/model/PostToStory;

    invoke-virtual {v1}, Lcom/snapchat/android/model/PostToStory;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/database/HasSeenPostToOurStoryDialogLog;->a(Ljava/lang/String;)Z

    .line 432
    :cond_0
    return-void
.end method
