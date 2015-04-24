.class Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog$2;
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
.field final synthetic a:Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog;


# direct methods
.method constructor <init>(Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog$2;->a:Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 38
    return-void
.end method
