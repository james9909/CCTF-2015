.class Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;
.super Lcom/snapchat/android/api/RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/signup/PickUsernameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegisterUsernameTask"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

.field private b:Lcom/snapchat/android/model/User;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    .line 196
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->b:Lcom/snapchat/android/model/User;

    .line 197
    iput-object p2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->c:Ljava/lang/String;

    .line 198
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const-string v0, "/loq/register_username"

    return-object v0
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    .line 246
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/api/RequestTask;->a(Ljava/lang/String;I)V

    .line 247
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->e(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->f(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 215
    const-string v1, "selected_username"

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-object v0
.end method

.method protected b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 222
    invoke-super {p0, p1}, Lcom/snapchat/android/api/RequestTask;->b(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 223
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->updates_response:Lcom/snapchat/android/model/server/UpdatesResponse;

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->a(Lcom/snapchat/android/model/server/UpdatesResponse;)V

    .line 225
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->updates_response:Lcom/snapchat/android/model/server/UpdatesResponse;

    iget-object v0, v0, Lcom/snapchat/android/model/server/UpdatesResponse;->username:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->b(Ljava/lang/String;)V

    .line 226
    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->verification_needed:Lcom/snapchat/android/model/server/VerificationNeededResponse;

    .line 227
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/LoginAndSignupActivity;

    .line 228
    invoke-virtual {v0, v1}, Lcom/snapchat/android/LoginAndSignupActivity;->a(Lcom/snapchat/android/model/server/VerificationNeededResponse;)V

    .line 230
    invoke-virtual {v0}, Lcom/snapchat/android/LoginAndSignupActivity;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/LoginAndSignupActivity;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    invoke-static {v2}, Lcom/snapchat/android/model/UserPrefs;->a(Z)V

    .line 232
    invoke-static {v2}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a(Z)V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->b:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->H()V

    .line 238
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->g(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V

    .line 241
    :cond_0
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->E()V

    .line 242
    return-void

    .line 234
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a(Z)V

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const-string v0, "RegisterUsernameTask"

    return-object v0
.end method

.method protected d(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/snapchat/android/api/RequestTask;->d(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 256
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 258
    :cond_0
    if-nez p1, :cond_1

    const v0, 0x7ffffffa

    .line 259
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 273
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V

    .line 274
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->d(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->mFailureMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_1
    iget v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->status:I

    goto :goto_1

    .line 261
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(I)V

    .line 262
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->mFailureMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :pswitch_2
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->D()V

    .line 266
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->mFailureMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :pswitch_3
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->C()V

    .line 270
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->mFailureMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->e(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->f(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 204
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->f(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 205
    return-void
.end method
