.class Lcom/snapchat/android/ui/cash/CardCvvEditText$CvvFormatWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/cash/CardCvvEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CvvFormatWatcher"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/cash/CardCvvEditText;

.field private b:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/ui/cash/CardCvvEditText;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/snapchat/android/ui/cash/CardCvvEditText$CvvFormatWatcher;->a:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/cash/CardCvvEditText$CvvFormatWatcher;->b:Ljava/lang/CharSequence;

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/ui/cash/CardCvvEditText;Lcom/snapchat/android/ui/cash/CardCvvEditText$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/cash/CardCvvEditText$CvvFormatWatcher;-><init>(Lcom/snapchat/android/ui/cash/CardCvvEditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardCvvEditText$CvvFormatWatcher;->b:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 70
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardCvvEditText$CvvFormatWatcher;->a:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->a(Lcom/snapchat/android/ui/cash/CardCvvEditText;Z)Z

    .line 71
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardCvvEditText$CvvFormatWatcher;->a:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-static {v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->a(Lcom/snapchat/android/ui/cash/CardCvvEditText;)Lcom/snapchat/android/cash/ValidatedInputCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardCvvEditText$CvvFormatWatcher;->a:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-static {v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->a(Lcom/snapchat/android/ui/cash/CardCvvEditText;)Lcom/snapchat/android/cash/ValidatedInputCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/snapchat/android/cash/ValidatedInputCallback;->b()V

    .line 76
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/snapchat/android/ui/cash/CardCvvEditText$CvvFormatWatcher;->b:Ljava/lang/CharSequence;

    .line 78
    :cond_1
    return-void

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardCvvEditText$CvvFormatWatcher;->a:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->a(Lcom/snapchat/android/ui/cash/CardCvvEditText;Z)Z

    .line 74
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardCvvEditText$CvvFormatWatcher;->a:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-static {v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->a(Lcom/snapchat/android/ui/cash/CardCvvEditText;)Lcom/snapchat/android/cash/ValidatedInputCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardCvvEditText$CvvFormatWatcher;->a:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-static {v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->a(Lcom/snapchat/android/ui/cash/CardCvvEditText;)Lcom/snapchat/android/cash/ValidatedInputCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/snapchat/android/cash/ValidatedInputCallback;->a()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    return-void
.end method
