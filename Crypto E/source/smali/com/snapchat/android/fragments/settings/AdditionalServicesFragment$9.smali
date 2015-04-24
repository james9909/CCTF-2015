.class Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$9;->a:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 227
    if-nez p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$9;->a:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->a(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    const-string v0, "TOGGLE_SETTING_FILTERS"

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;Z)V

    .line 231
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$9;->a:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->a(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;Z)Z

    goto :goto_0
.end method
