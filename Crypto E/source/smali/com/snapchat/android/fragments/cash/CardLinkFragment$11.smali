.class Lcom/snapchat/android/fragments/cash/CardLinkFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$11;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$11;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Z)Z

    .line 298
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$11;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$11;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->l(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 302
    :cond_0
    return-void
.end method
