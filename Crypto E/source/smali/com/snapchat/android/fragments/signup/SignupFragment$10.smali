.class Lcom/snapchat/android/fragments/signup/SignupFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/signup/SignupFragment;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/SignupFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/SignupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$10;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 343
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$10;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->c(Lcom/snapchat/android/fragments/signup/SignupFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 344
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$10;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->f(Lcom/snapchat/android/fragments/signup/SignupFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-static {}, Lcom/snapchat/android/fragments/signup/SignupFragment;->h()Lcom/snapchat/android/util/SnapKidzLoginManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapKidzLoginManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$10;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->i(Lcom/snapchat/android/fragments/signup/SignupFragment;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$10;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    const v3, 0x7f0c011f

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/fragments/signup/SignupFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 364
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 355
    const/16 v3, -0xd

    invoke-virtual {v0, v4, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 356
    iget-object v3, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$10;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/signup/SignupFragment;->g(Lcom/snapchat/android/fragments/signup/SignupFragment;)Ljava/util/GregorianCalendar;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    invoke-static {}, Lcom/snapchat/android/fragments/signup/SignupFragment;->h()Lcom/snapchat/android/util/SnapKidzLoginManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/SnapKidzLoginManager;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 358
    const v0, 0x7f0c01f9

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$10;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/signup/SignupFragment;->i(Lcom/snapchat/android/fragments/signup/SignupFragment;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 359
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$10;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/signup/SignupFragment;->c(Lcom/snapchat/android/fragments/signup/SignupFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$10;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->j(Lcom/snapchat/android/fragments/signup/SignupFragment;)V

    goto :goto_0
.end method
