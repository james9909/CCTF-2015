.class Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->a(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;

.field final synthetic b:Lcom/snapchat/android/model/Friend;

.field final synthetic c:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;Lcom/snapchat/android/model/Friend;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1;->c:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1;->a:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;

    iput-object p3, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1;->b:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1;->c:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->a(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1;->c:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;

    invoke-static {v2}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->b(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1$1;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1$1;-><init>(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;)V

    .line 89
    return-void
.end method
