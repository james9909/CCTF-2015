.class Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;
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
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Landroid/widget/CheckBox;

.field final synthetic d:Landroid/widget/CheckBox;

.field final synthetic e:Landroid/view/View;

.field final synthetic f:Landroid/view/View;

.field final synthetic g:Landroid/view/View;

.field final synthetic h:Landroid/view/View;

.field final synthetic i:Landroid/view/View;

.field final synthetic j:Landroid/view/View;

.field final synthetic k:Landroid/view/View;

.field final synthetic l:Landroid/view/View;

.field final synthetic m:Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->m:Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->c:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->d:Landroid/widget/CheckBox;

    iput-object p6, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->e:Landroid/view/View;

    iput-object p7, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->f:Landroid/view/View;

    iput-object p8, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->g:Landroid/view/View;

    iput-object p9, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->h:Landroid/view/View;

    iput-object p10, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->i:Landroid/view/View;

    iput-object p11, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->j:Landroid/view/View;

    iput-object p12, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->k:Landroid/view/View;

    iput-object p13, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->l:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->m:Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->a(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->aw:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 121
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->m:Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->a(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->e:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->f:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->g:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->h:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->i:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->j:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->k:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;->l:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 138
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOTIFICATIONS_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v0, "ENABLED"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 139
    return-void

    .line 138
    :cond_0
    const-string v0, "DISABLED"

    goto :goto_0
.end method
