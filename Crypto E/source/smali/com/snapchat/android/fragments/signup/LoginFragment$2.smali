.class Lcom/snapchat/android/fragments/signup/LoginFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/signup/LoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/LoginFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$2;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$2;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->d(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    .line 139
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$2;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/signup/LoginFragment;->b(Lcom/snapchat/android/fragments/signup/LoginFragment;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$2;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/signup/LoginFragment;->c(Lcom/snapchat/android/fragments/signup/LoginFragment;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    return-void
.end method
