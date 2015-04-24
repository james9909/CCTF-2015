.class Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$15;
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
    .line 327
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$15;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 330
    new-instance v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$15$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$15$1;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$15;)V

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$15$1;->run()V

    .line 337
    return-void
.end method
