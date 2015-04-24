.class public Lcom/snapchat/android/ui/cash/ZipEditText;
.super Lcom/snapchat/android/ui/StickyEndEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/cash/ZipEditText$1;,
        Lcom/snapchat/android/ui/cash/ZipEditText$ZipFormatWatcher;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/snapchat/android/cash/ValidatedInputCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/StickyEndEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/cash/ZipEditText;->a:Z

    .line 28
    new-instance v0, Lcom/snapchat/android/ui/cash/ZipEditText$ZipFormatWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/ui/cash/ZipEditText$ZipFormatWatcher;-><init>(Lcom/snapchat/android/ui/cash/ZipEditText;Lcom/snapchat/android/ui/cash/ZipEditText$1;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/cash/ZipEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 29
    const-string v0, "0123456789"

    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/cash/ZipEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/cash/ZipEditText;)Lcom/snapchat/android/cash/ValidatedInputCallback;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/ZipEditText;->b:Lcom/snapchat/android/cash/ValidatedInputCallback;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/cash/ZipEditText;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/snapchat/android/ui/cash/ZipEditText;->a:Z

    return p1
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/ZipEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/ZipEditText;->b:Lcom/snapchat/android/cash/ValidatedInputCallback;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/ZipEditText;->b:Lcom/snapchat/android/cash/ValidatedInputCallback;

    invoke-interface {v0}, Lcom/snapchat/android/cash/ValidatedInputCallback;->c()V

    .line 49
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/ZipEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/ui/cash/ZipEditText;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnformattedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/ZipEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValidatedInputCallback(Lcom/snapchat/android/cash/ValidatedInputCallback;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/snapchat/android/ui/cash/ZipEditText;->b:Lcom/snapchat/android/cash/ValidatedInputCallback;

    .line 34
    return-void
.end method
