.class Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/caption/FatCaptionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

.field private b:I


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->b:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 138
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v1, v1, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->e:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-static {v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iput-boolean v0, v1, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->v:Z

    .line 145
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v1, p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Landroid/text/Editable;)V

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->b:I

    if-le v2, v3, :cond_2

    const/4 v0, 0x1

    .line 149
    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->b:Lcom/snapchat/android/ui/caption/SnapCaptionViewInterface;

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->b:Lcom/snapchat/android/ui/caption/SnapCaptionViewInterface;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/caption/SnapCaptionViewInterface;->a(Ljava/lang/String;)V

    .line 152
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->b:I

    .line 153
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->k()V

    .line 156
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    return-void
.end method
