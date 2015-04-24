.class Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$4;->a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$4;->a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->e(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)V

    .line 151
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$4;->a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->b()V

    .line 152
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$4;->a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    return-void
.end method
