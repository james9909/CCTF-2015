.class public Lcom/snapchat/android/ui/FixTouchConsumeTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;Landroid/text/Spannable;)[Landroid/text/style/ClickableSpan;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->getTotalPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->getTotalPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    .line 79
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 80
    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    .line 82
    const-class v1, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v0, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 36
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_4

    .line 37
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 39
    if-eq v4, v2, :cond_0

    if-nez v4, :cond_4

    .line 40
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->a(Landroid/view/MotionEvent;Landroid/text/Spannable;)[Landroid/text/style/ClickableSpan;

    move-result-object v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    new-array v1, v3, [Landroid/text/style/ClickableSpan;

    .line 46
    :cond_1
    array-length v5, v1

    if-eqz v5, :cond_3

    .line 47
    if-nez v4, :cond_2

    .line 48
    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    aget-object v1, v1, v3

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v4, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_2
    move v0, v2

    .line 60
    :goto_0
    return v0

    .line 54
    :cond_3
    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    move v0, v3

    .line 55
    goto :goto_0

    :cond_4
    move v0, v1

    .line 60
    goto :goto_0
.end method

.method public setTextViewHTML(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 65
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method
