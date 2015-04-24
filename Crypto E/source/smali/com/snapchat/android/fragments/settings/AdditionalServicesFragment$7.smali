.class Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->i()V
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
    .line 128
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$7;->a:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$7;->a:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->a(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;Z)Z

    .line 132
    invoke-static {p2}, Lcom/snapchat/android/model/UserPrefs;->l(Z)V

    .line 133
    const-string v0, "TOGGLE_SETTING_REPLAY"

    invoke-static {v0, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;Z)V

    .line 134
    return-void
.end method
