.class Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog;


# direct methods
.method constructor <init>(Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog$1;->b:Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog;

    iput-object p2, p0, Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog$1;->b:Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog;

    iget-object v1, p0, Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog;->a(Ljava/lang/String;)V

    .line 30
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 31
    return-void
.end method
