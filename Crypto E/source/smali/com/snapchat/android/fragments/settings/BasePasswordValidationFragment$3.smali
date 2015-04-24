.class Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$3;->a:Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$3;->a:Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->b()V

    .line 97
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$3;->a:Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->a(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    return-void
.end method
