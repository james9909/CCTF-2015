.class Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lcom/snapchat/android/util/chat/SecureChatService;

.field final synthetic c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/content/SharedPreferences;Lcom/snapchat/android/util/chat/SecureChatService;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$9;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$9;->a:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$9;->b:Lcom/snapchat/android/util/chat/SecureChatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$9;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 250
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->an:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 253
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$9;->b:Lcom/snapchat/android/util/chat/SecureChatService;

    if-eqz v0, :cond_0

    .line 254
    if-eqz p2, :cond_1

    .line 255
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$9;->b:Lcom/snapchat/android/util/chat/SecureChatService;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatService;->c()V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$9;->b:Lcom/snapchat/android/util/chat/SecureChatService;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatService;->b()V

    goto :goto_0
.end method
