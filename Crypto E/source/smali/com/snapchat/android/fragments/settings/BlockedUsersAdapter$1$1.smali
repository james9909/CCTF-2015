.class Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1$1;->a:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;)V
    .locals 3
    .parameter

    .prologue
    .line 83
    sget-object v0, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->a:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    if-ne p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1$1;->a:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1;->c:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1$1;->a:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1;

    iget-object v1, v1, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1;->a:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1$1;->a:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1;

    iget-object v2, v2, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1;->b:Lcom/snapchat/android/model/Friend;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->a(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;Lcom/snapchat/android/model/Friend;)V

    .line 86
    :cond_0
    return-void
.end method
