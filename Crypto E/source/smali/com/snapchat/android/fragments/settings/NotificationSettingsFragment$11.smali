.class Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$11;->a:Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$11;->a:Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->a(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->aB:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 173
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$11;->a:Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->a(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    return-void
.end method
