.class public abstract Lcom/snapchat/android/ui/EditTextDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;

.field private e:Landroid/text/TextWatcher;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/text/TextWatcher;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/EditTextDialog;->d:Ljava/lang/Integer;

    .line 55
    iput-object p1, p0, Lcom/snapchat/android/ui/EditTextDialog;->a:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/snapchat/android/ui/EditTextDialog;->b:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/snapchat/android/ui/EditTextDialog;->c:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/snapchat/android/ui/EditTextDialog;->e:Landroid/text/TextWatcher;

    .line 59
    iput p5, p0, Lcom/snapchat/android/ui/EditTextDialog;->f:I

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/EditTextDialog;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/ui/EditTextDialog;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 66
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/snapchat/android/ui/EditTextDialog;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 67
    iget v1, p0, Lcom/snapchat/android/ui/EditTextDialog;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 70
    iget-object v1, p0, Lcom/snapchat/android/ui/EditTextDialog;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 71
    new-array v1, v5, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget-object v4, p0, Lcom/snapchat/android/ui/EditTextDialog;->d:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/ui/EditTextDialog;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/ui/EditTextDialog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 79
    :cond_1
    const/high16 v1, 0x8

    iget v2, p0, Lcom/snapchat/android/ui/EditTextDialog;->f:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/EditTextDialog;->setView(Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Lcom/snapchat/android/ui/EditTextDialog;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/EditTextDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0, v5}, Lcom/snapchat/android/ui/EditTextDialog;->setCancelable(Z)V

    .line 85
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/snapchat/android/ui/EditTextDialog;->a:Landroid/content/Context;

    const v3, 0x7f0c0185

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/ui/EditTextDialog$1;

    invoke-direct {v3, p0, v0}, Lcom/snapchat/android/ui/EditTextDialog$1;-><init>(Lcom/snapchat/android/ui/EditTextDialog;Landroid/widget/EditText;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/snapchat/android/ui/EditTextDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 94
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/snapchat/android/ui/EditTextDialog;->a:Landroid/content/Context;

    const v3, 0x7f0c003d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/ui/EditTextDialog$2;

    invoke-direct {v3, p0, v0}, Lcom/snapchat/android/ui/EditTextDialog$2;-><init>(Lcom/snapchat/android/ui/EditTextDialog;Landroid/widget/EditText;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/snapchat/android/ui/EditTextDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 103
    new-instance v1, Lcom/snapchat/android/ui/EditTextDialog$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/EditTextDialog$3;-><init>(Lcom/snapchat/android/ui/EditTextDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 112
    new-instance v1, Lcom/snapchat/android/ui/EditTextDialog$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/EditTextDialog$4;-><init>(Lcom/snapchat/android/ui/EditTextDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 128
    iget-object v1, p0, Lcom/snapchat/android/ui/EditTextDialog;->e:Landroid/text/TextWatcher;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/android/ui/EditTextDialog;->e:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    :cond_2
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 131
    return-void
.end method
