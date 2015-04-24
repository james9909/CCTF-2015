.class Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

.field private b:I


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->b:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget-boolean v2, v2, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->e:Z

    if-eqz v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-virtual {v3, v2}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 68
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setMaxTextLengthInputFilter(I)V

    .line 72
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iput-boolean v0, v2, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->e:Z

    .line 73
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 74
    invoke-interface {p1, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 75
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->g:I

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iput-boolean v1, v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->e:Z

    .line 91
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->f:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 93
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    :cond_3
    iget-object v3, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget v3, v3, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->g:I

    if-lez v3, :cond_4

    .line 81
    iget-object v3, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget-object v4, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget v4, v4, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->g:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->g:I

    .line 83
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->b:I

    if-le v3, v4, :cond_5

    .line 84
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->b:I

    .line 85
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->b:Lcom/snapchat/android/ui/caption/SnapCaptionViewInterface;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget-object v0, v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->b:Lcom/snapchat/android/ui/caption/SnapCaptionViewInterface;

    invoke-interface {v0, v2}, Lcom/snapchat/android/ui/caption/SnapCaptionViewInterface;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 83
    goto :goto_2

    .line 95
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    return-void
.end method
