.class Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$13;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 304
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->S()V

    .line 305
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$13;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->a:Lcom/snapchat/android/cash/CashAuthManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/cash/CashAuthManager;->a(Lcom/snapchat/android/cash/CashAuthToken;)V

    .line 306
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$13;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->b:Lcom/snapchat/android/cash/CashCardManager;

    invoke-virtual {v0}, Lcom/snapchat/android/cash/CashCardManager;->b()V

    .line 307
    new-instance v0, Lcom/snapchat/android/api2/cash/ResetAccountTask;

    invoke-direct {v0}, Lcom/snapchat/android/api2/cash/ResetAccountTask;-><init>()V

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/ResetAccountTask;->g()V

    .line 308
    return-void
.end method
