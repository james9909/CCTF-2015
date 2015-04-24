.class Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$14;
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
    .line 311
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$14;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 315
    :try_start_0
    new-instance v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$BulbasaurException;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$14;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    const-string v2, "bulba"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$BulbasaurException;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$BulbasaurException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :catch_0
    move-exception v0

    .line 318
    :try_start_1
    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$IvysaurException;

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$14;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    const-string v3, "ivy ivy"

    invoke-direct {v1, v2, v3, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$IvysaurException;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Ljava/lang/String;Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$BulbasaurException;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 319
    :catch_1
    move-exception v0

    .line 321
    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$VenusaurException;

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$14;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    const-string v3, "venusaur..."

    invoke-direct {v1, v2, v3, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$VenusaurException;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
