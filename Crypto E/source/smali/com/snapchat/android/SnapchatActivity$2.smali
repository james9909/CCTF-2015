.class Lcom/snapchat/android/SnapchatActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/SnapchatActivity;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/snapchat/android/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/SnapchatActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapchatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/snapchat/android/SnapchatActivity$2;->a:Lcom/snapchat/android/SnapchatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Lcom/snapchat/android/model/User;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;",
            "Lcom/snapchat/android/model/User;",
            ")V"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity$2;->a:Lcom/snapchat/android/SnapchatActivity;

    iput-object p2, v0, Lcom/snapchat/android/SnapchatActivity;->p:Lcom/snapchat/android/model/User;

    .line 284
    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity$2;->a:Lcom/snapchat/android/SnapchatActivity;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/SnapchatActivity;->a(Lcom/snapchat/android/model/User;)V

    .line 285
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lcom/snapchat/android/UserLoader;

    iget-object v1, p0, Lcom/snapchat/android/SnapchatActivity$2;->a:Lcom/snapchat/android/SnapchatActivity;

    invoke-direct {v0, v1}, Lcom/snapchat/android/UserLoader;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 274
    check-cast p2, Lcom/snapchat/android/model/User;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/SnapchatActivity$2;->a(Landroid/support/v4/content/Loader;Lcom/snapchat/android/model/User;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    return-void
.end method
