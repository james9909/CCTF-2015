.class Lcom/snapchat/android/fragments/cash/CardLinkFragment$ClearErrorStateOnInputTextWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/cash/CardLinkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClearErrorStateOnInputTextWatcher"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$ClearErrorStateOnInputTextWatcher;->a:Landroid/widget/TextView;

    .line 528
    iput-object p2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$ClearErrorStateOnInputTextWatcher;->b:Landroid/widget/ImageView;

    .line 529
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 544
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 532
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 536
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$ClearErrorStateOnInputTextWatcher;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$ClearErrorStateOnInputTextWatcher;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$ClearErrorStateOnInputTextWatcher;->a:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$ClearErrorStateOnInputTextWatcher;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 541
    :cond_0
    return-void
.end method
