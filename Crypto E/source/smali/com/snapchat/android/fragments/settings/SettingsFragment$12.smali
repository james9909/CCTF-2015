.class Lcom/snapchat/android/fragments/settings/SettingsFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/SettingsFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$12;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 314
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/snapchat/LocalSQAcceptTermsBlocker;

    invoke-direct {v0}, Lcom/snapchat/android/api2/cash/blockers/snapchat/LocalSQAcceptTermsBlocker;-><init>()V

    .line 315
    new-instance v1, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;

    invoke-direct {v1}, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;-><init>()V

    .line 316
    new-instance v2, Lcom/snapchat/android/fragments/settings/SettingsFragment$12$1;

    invoke-direct {v2, p0, v1}, Lcom/snapchat/android/fragments/settings/SettingsFragment$12$1;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$12;Lcom/snapchat/android/api2/cash/blockers/Blocker;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;)V

    .line 331
    new-instance v2, Lcom/snapchat/android/fragments/settings/SettingsFragment$12$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$12$2;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$12;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;)V

    .line 345
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 346
    return-void
.end method
