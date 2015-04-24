.class public Lcom/snapchat/android/ui/caption/FatCaptionEditText;
.super Lcom/snapchat/android/ui/caption/CaptionEditText;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/ui/caption/CaptionEditText;",
        "Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas",
        "<",
        "Lcom/snapchat/android/ui/caption/FatCaptionEditText;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Lcom/snapchat/android/ui/caption/CaptionColorRange;

.field private B:Landroid/text/style/ForegroundColorSpan;

.field protected n:D

.field protected o:D

.field protected p:F

.field protected q:F

.field protected r:D

.field protected s:D

.field protected t:Z

.field protected u:Z

.field protected v:Z

.field private w:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController",
            "<",
            "Lcom/snapchat/android/ui/caption/FatCaptionEditText;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Landroid/view/GestureDetector;

.field private final y:Landroid/view/ScaleGestureDetector;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/high16 v2, -0x4010

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/caption/CaptionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;-><init>(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->w:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->p:F

    .line 56
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->q:F

    .line 58
    iput-wide v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->r:D

    .line 59
    iput-wide v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->s:D

    .line 61
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->t:Z

    .line 64
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->u:Z

    .line 66
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->z:Z

    .line 71
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->v:Z

    .line 81
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setLayerType(ILandroid/graphics/Paint;)V

    .line 83
    const v0, 0x240c1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setInputType(I)V

    .line 85
    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setGravity(I)V

    .line 87
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;-><init>(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->x:Landroid/view/GestureDetector;

    .line 104
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;-><init>(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->y:Landroid/view/ScaleGestureDetector;

    .line 130
    new-instance v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;-><init>(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->m:Landroid/text/TextWatcher;

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->m:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    new-instance v0, Lcom/snapchat/android/ui/caption/FatCaptionLongClickListener;

    invoke-direct {v0}, Lcom/snapchat/android/ui/caption/FatCaptionLongClickListener;-><init>()V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 171
    return-void
.end method

.method private a(D)D
    .locals 3
    .parameter

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->n:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 186
    iget-wide p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->n:D

    .line 190
    :cond_0
    :goto_0
    return-wide p1

    .line 187
    :cond_1
    iget-wide v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->o:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 188
    iget-wide p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->o:D

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;Lcom/snapchat/android/ui/caption/CaptionColorRange;)Lcom/snapchat/android/ui/caption/CaptionColorRange;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->A:Lcom/snapchat/android/ui/caption/CaptionColorRange;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;D)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->b(D)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->z:Z

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->z:Z

    return p1
.end method

.method private b(D)V
    .locals 3
    .parameter

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(D)D

    move-result-wide v0

    .line 197
    iget-boolean v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->h:Z

    if-eqz v2, :cond_0

    .line 198
    iput-wide v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->r:D

    .line 202
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->j()V

    .line 203
    return-void

    .line 200
    :cond_0
    iput-wide v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->s:D

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)Lcom/snapchat/android/ui/caption/FatCaptionEditText;
    .locals 1
    .parameter

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->i:Z

    if-nez v0, :cond_0

    .line 439
    const/4 p0, 0x0

    .line 442
    :cond_0
    return-object p0
.end method

.method protected a(Landroid/text/Editable;)V
    .locals 3
    .parameter

    .prologue
    .line 175
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    .line 176
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    add-int/lit8 v1, v0, -0x1

    const-string v2, ""

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 178
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->e()V

    .line 182
    :cond_0
    return-void

    .line 175
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected a(Landroid/text/Editable;III)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 587
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {p1, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ForegroundColorSpan;

    .line 589
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 591
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 596
    array-length v10, v1

    const/4 v2, 0x0

    move v7, v2

    move/from16 v3, p4

    move/from16 v5, p3

    :goto_0
    if-ge v7, v10, :cond_6

    aget-object v11, v1, v7

    .line 597
    invoke-interface {p1, v11}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 598
    invoke-interface {p1, v11}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 599
    invoke-virtual {v11}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v12

    .line 600
    move/from16 v0, p2

    if-ne v12, v0, :cond_0

    move/from16 v0, p3

    if-gt v6, v0, :cond_0

    move/from16 v0, p4

    if-lt v4, v0, :cond_0

    .line 640
    :goto_1
    return-void

    .line 605
    :cond_0
    const/4 v2, 0x0

    .line 606
    move/from16 v0, p3

    if-ge v6, v0, :cond_1

    move/from16 v0, p3

    if-le v4, v0, :cond_1

    .line 607
    const/4 v2, 0x1

    .line 608
    move/from16 v0, p2

    if-eq v0, v12, :cond_4

    .line 609
    new-instance v13, Lcom/snapchat/android/ui/caption/CaptionColorRange;

    move/from16 v0, p3

    invoke-direct {v13, v12, v6, v0}, Lcom/snapchat/android/ui/caption/CaptionColorRange;-><init>(III)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_1
    :goto_2
    move/from16 v0, p4

    if-ge v6, v0, :cond_2

    move/from16 v0, p4

    if-le v4, v0, :cond_2

    .line 616
    const/4 v2, 0x1

    .line 617
    move/from16 v0, p2

    if-eq v0, v12, :cond_5

    .line 618
    new-instance v6, Lcom/snapchat/android/ui/caption/CaptionColorRange;

    move/from16 v0, p4

    invoke-direct {v6, v12, v0, v4}, Lcom/snapchat/android/ui/caption/CaptionColorRange;-><init>(III)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    .line 625
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    :cond_3
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_0

    :cond_4
    move v5, v6

    .line 611
    goto :goto_2

    :cond_5
    move v3, v4

    .line 620
    goto :goto_3

    .line 629
    :cond_6
    new-instance v1, Lcom/snapchat/android/ui/caption/CaptionColorRange;

    move/from16 v0, p2

    invoke-direct {v1, v0, v5, v3}, Lcom/snapchat/android/ui/caption/CaptionColorRange;-><init>(III)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/style/ForegroundColorSpan;

    .line 632
    const-string v3, "FatCaptionEditText"

    const-string v4, "removing a color span: %s [%s, %s]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {p1, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-interface {p1, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    invoke-interface {p1, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_4

    .line 639
    :cond_7
    invoke-virtual {p0, p1, v9}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Landroid/text/Editable;Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method protected a(Landroid/text/Editable;Ljava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/ui/caption/CaptionColorRange;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 567
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 568
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/caption/CaptionColorRange;

    .line 569
    const-string v3, "FatCaptionEditText"

    const-string v4, "adding a new color span: %s [%s, %s]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionColorRange;->a()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionColorRange;->b()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionColorRange;->c()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionColorRange;->a()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v3, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->B:Landroid/text/style/ForegroundColorSpan;

    .line 573
    iget-object v3, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->B:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionColorRange;->b()I

    move-result v4

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionColorRange;->c()I

    move-result v0

    const/16 v5, 0x22

    invoke-virtual {v1, v3, v4, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 578
    :cond_0
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 579
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 491
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 449
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getX()F

    move-result v1

    .line 451
    :goto_0
    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getScaleX()F

    move-result v4

    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getScaleX()F

    move-result v6

    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getScaleY()F

    move-result v7

    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getRotation()F

    move-result v0

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v9, v8

    move-object v0, p2

    move v5, v3

    move v8, v3

    invoke-virtual/range {v0 .. v9}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->a(FFZFZFFZF)V

    .line 460
    return-void

    .line 449
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getLastSelectedPositionX()F

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    check-cast p1, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    check-cast p1, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)V

    return-void
.end method

.method protected a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 254
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->z:Z

    if-eqz v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 258
    :cond_0
    iput-boolean v4, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->h:Z

    .line 260
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->j()V

    .line 261
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->m()V

    .line 263
    if-nez p1, :cond_1

    .line 264
    new-instance v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText$4;-><init>(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)V

    .line 275
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getKeyboardManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 281
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->b()V

    goto :goto_0

    .line 286
    :cond_1
    invoke-super {p0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->a(Z)V

    .line 287
    iput-boolean v4, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->e:Z

    .line 288
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->c:I

    iget-object v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->b:Lcom/snapchat/android/ui/caption/SnapCaptionViewInterface;

    invoke-interface {v1}, Lcom/snapchat/android/ui/caption/SnapCaptionViewInterface;->getPreviewCloseButtonBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setMaxHeight(I)V

    goto :goto_0
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->y:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 406
    iget-boolean v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->z:Z

    if-eqz v1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v0

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->x:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 412
    iget-boolean v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->v:Z

    if-nez v1, :cond_0

    .line 415
    invoke-super {p0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/high16 v0, 0x40a0

    .line 467
    invoke-virtual {p2}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->c()F

    move-result v1

    .line 468
    cmpl-float v2, v1, v0

    if-lez v2, :cond_3

    .line 472
    :goto_0
    iget-boolean v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->j:Z

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->a()F

    move-result v1

    .line 474
    :goto_1
    invoke-virtual {p2}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->b()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(FF)V

    .line 476
    invoke-virtual {p2}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->d()F

    move-result v1

    const/high16 v2, 0x4334

    mul-float/2addr v1, v2

    float-to-double v2, v1

    const-wide v4, 0x400921fb54442d18L

    div-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->p:F

    .line 477
    iput v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->q:F

    .line 478
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->p:F

    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setRotation(F)V

    .line 479
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->q:F

    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setScaleX(F)V

    .line 480
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->q:F

    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setScaleY(F)V

    .line 483
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->p:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->q:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 484
    :cond_0
    iput-boolean v6, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->j:Z

    .line 486
    :cond_1
    return v6

    .line 472
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getLastSelectedPositionX()F

    move-result v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    check-cast p1, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {p0, p1, p2, p3}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)Z

    move-result v0

    return v0
.end method

.method public synthetic b(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    move-result-object v0

    return-object v0
.end method

.method protected b(I)V
    .locals 2
    .parameter

    .prologue
    .line 494
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 496
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->invalidate()V

    .line 498
    return-void
.end method

.method protected b(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 420
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->w:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->a(Landroid/view/MotionEvent;)Z

    .line 421
    return-void
.end method

.method public b(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 319
    iput-boolean v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->h:Z

    .line 320
    iput-boolean v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->v:Z

    .line 322
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->t:Z

    if-eqz v0, :cond_0

    .line 323
    iget-wide v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->r:D

    iput-wide v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->s:D

    .line 324
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->l()V

    .line 325
    iput-boolean v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->t:Z

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->m()V

    .line 330
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 331
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getKeyboardManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 333
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->p:F

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setRotation(F)V

    .line 334
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->q:F

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setScaleX(F)V

    .line 335
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->q:F

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setScaleY(F)V

    .line 337
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setVisibility(I)V

    .line 342
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->clearFocus()V

    .line 343
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 344
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setCursorVisible(Z)V

    .line 346
    if-eqz p1, :cond_4

    .line 347
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getCloseAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 355
    :cond_2
    :goto_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/EditCaptionEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/EditCaptionEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 356
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 357
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->g()V

    .line 358
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->k:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->l:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setMaxHeight(I)V

    .line 361
    :cond_3
    return-void

    .line 352
    :cond_4
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getLastSelectedPositionX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getLastSelectedPositionY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(II)V

    goto :goto_0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 425
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 426
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 428
    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v3, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    aput v4, v3, v0

    .line 429
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 431
    aget v2, v3, v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    aget v2, v3, v0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    aget v2, v3, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    aget v2, v3, v1

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected d()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setRotation(F)V

    .line 294
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setScaleX(F)V

    .line 295
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setScaleY(F)V

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getCaptionEditPosition()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(II)V

    .line 297
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->d()V

    .line 367
    invoke-super {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->f()V

    .line 369
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setSelection(I)V

    .line 370
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setCursorVisible(Z)V

    .line 371
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->c:I

    iget-object v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->b:Lcom/snapchat/android/ui/caption/SnapCaptionViewInterface;

    invoke-interface {v1}, Lcom/snapchat/android/ui/caption/SnapCaptionViewInterface;->getPreviewCloseButtonBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setMaxHeight(I)V

    .line 372
    return-void
.end method

.method protected getAnalyticsDetails()Lcom/snapchat/android/ui/caption/CaptionAnalyticData;
    .locals 5

    .prologue
    .line 686
    new-instance v1, Lcom/snapchat/android/ui/caption/CaptionAnalyticData;

    sget-object v2, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->b:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    iget-boolean v3, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->j:Z

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getColorSpans()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v4, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->u:Z

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/snapchat/android/ui/caption/CaptionAnalyticData;-><init>(Lcom/snapchat/android/ui/caption/CaptionTypeEnums;ZZZ)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCaptionEditPosition()I
    .locals 4

    .prologue
    .line 301
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->c:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->c:I

    iget-object v3, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->b:Lcom/snapchat/android/ui/caption/SnapCaptionViewInterface;

    invoke-interface {v3}, Lcom/snapchat/android/ui/caption/SnapCaptionViewInterface;->getPreviewCloseButtonBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getCloseAnimation()Landroid/view/animation/Animation;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 383
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;

    invoke-direct {v0, p0, v2}, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;-><init>(Lcom/snapchat/android/ui/caption/CaptionEditText;Z)V

    .line 386
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getLastSelectedPositionX()F

    move-result v1

    float-to-int v3, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getCaptionEditPosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getLastSelectedPositionY()F

    move-result v1

    float-to-int v1, v1

    iget v5, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->k:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;-><init>(Lcom/snapchat/android/ui/caption/CaptionEditText;IIIIZ)V

    goto :goto_0
.end method

.method protected getColorSpans()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/ui/caption/CaptionColorRange;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 658
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 659
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v3, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    .line 660
    const-string v1, "FatCaptionEditText"

    const-string v3, "Total colors : %s"

    new-array v4, v12, [Ljava/lang/Object;

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 663
    array-length v6, v0

    move v1, v2

    move v3, v2

    :goto_0
    if-ge v1, v6, :cond_0

    aget-object v7, v0, v1

    .line 664
    const-string v8, "FatCaptionEditText"

    const-string v9, "[%s] color : %s (%s, %s)"

    const/4 v4, 0x4

    new-array v10, v4, [Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v2

    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v12

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v8, v9, v10}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    new-instance v3, Lcom/snapchat/android/ui/caption/CaptionColorRange;

    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v8

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-direct {v3, v8, v9, v7}, Lcom/snapchat/android/ui/caption/CaptionColorRange;-><init>(III)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    .line 670
    :cond_0
    return-object v5
.end method

.method protected getMaxFontSize()D
    .locals 2

    .prologue
    .line 392
    iget-wide v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->n:D

    return-wide v0
.end method

.method protected getOpenAnimation()Landroid/view/animation/Animation;
    .locals 7

    .prologue
    .line 377
    new-instance v0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getLastSelectedPositionX()F

    move-result v1

    float-to-int v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getLastSelectedPositionY()F

    move-result v1

    float-to-int v4, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getCaptionEditPosition()I

    move-result v5

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;-><init>(Lcom/snapchat/android/ui/caption/CaptionEditText;IIIIZ)V

    return-object v0
.end method

.method protected j()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const-wide/high16 v6, 0x3ff0

    const-wide/16 v4, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 209
    iget-boolean v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->h:Z

    if-eqz v1, :cond_2

    .line 210
    iget-wide v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->r:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->k()V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-wide v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->r:D

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getTextSize()F

    move-result v1

    float-to-double v4, v1

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v1, v2, v6

    if-lez v1, :cond_0

    .line 214
    iget-wide v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->r:D

    double-to-float v1, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    invoke-virtual {p0, v8, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setTextSize(IF)V

    goto :goto_0

    .line 218
    :cond_2
    iget-wide v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->s:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_3

    .line 219
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->k()V

    goto :goto_0

    .line 221
    :cond_3
    iget-wide v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->s:D

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getTextSize()F

    move-result v1

    float-to-double v4, v1

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v1, v2, v6

    if-lez v1, :cond_0

    .line 222
    iget-wide v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->s:D

    double-to-float v1, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    invoke-virtual {p0, v8, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setTextSize(IF)V

    goto :goto_0
.end method

.method public k()V
    .locals 5

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    :goto_0
    return-void

    .line 236
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 237
    const-string v1, ""

    .line 238
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    :goto_2
    move-object v1, v0

    .line 243
    goto :goto_1

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 246
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    div-float v1, v2, v1

    iget-boolean v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->f:Z

    invoke-static {v0, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/util/DisplayMetrics;Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0xf

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 249
    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->b(D)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method protected l()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 312
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->q:F

    .line 313
    iput v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->p:F

    .line 314
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setCaptionPositionX(F)V

    .line 315
    return-void
.end method

.method protected m()V
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 502
    :goto_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->b(I)V

    .line 503
    return-void

    .line 501
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 506
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->v:Z

    .line 508
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getSelectionStart()I

    move-result v2

    .line 509
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getSelectionEnd()I

    move-result v0

    .line 511
    if-eq v2, v3, :cond_1

    if-eq v0, v3, :cond_1

    .line 513
    if-ne v2, v0, :cond_2

    const/4 v3, 0x1

    .line 514
    :goto_0
    if-eqz v3, :cond_7

    .line 516
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 519
    :goto_1
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->A:Lcom/snapchat/android/ui/caption/CaptionColorRange;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->A:Lcom/snapchat/android/ui/caption/CaptionColorRange;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/caption/CaptionColorRange;->b()I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->A:Lcom/snapchat/android/ui/caption/CaptionColorRange;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/caption/CaptionColorRange;->c()I

    move-result v2

    if-ne v2, v0, :cond_4

    iget-object v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->A:Lcom/snapchat/android/ui/caption/CaptionColorRange;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/caption/CaptionColorRange;->a()I

    move-result v2

    if-eq v2, p1, :cond_4

    .line 525
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->B:Landroid/text/style/ForegroundColorSpan;

    if-eqz v2, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v4, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->B:Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v2, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 528
    :cond_0
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->B:Landroid/text/style/ForegroundColorSpan;

    .line 529
    new-instance v2, Lcom/snapchat/android/ui/caption/CaptionColorRange;

    invoke-direct {v2, p1, v1, v0}, Lcom/snapchat/android/ui/caption/CaptionColorRange;-><init>(III)V

    iput-object v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->A:Lcom/snapchat/android/ui/caption/CaptionColorRange;

    .line 530
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v4, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->B:Landroid/text/style/ForegroundColorSpan;

    const/16 v5, 0x22

    invoke-interface {v2, v4, v1, v0, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 531
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v2, v4}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 533
    if-eqz v3, :cond_3

    .line 534
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setSelection(I)V

    .line 562
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v3, v1

    .line 513
    goto :goto_0

    .line 536
    :cond_3
    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setSelection(II)V

    goto :goto_2

    .line 541
    :cond_4
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->A:Lcom/snapchat/android/ui/caption/CaptionColorRange;

    if-nez v2, :cond_5

    .line 549
    if-eqz v3, :cond_6

    .line 550
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clearSpans()V

    .line 551
    new-instance v2, Lcom/snapchat/android/ui/caption/CaptionColorRange;

    invoke-direct {v2, p1, v1, v0}, Lcom/snapchat/android/ui/caption/CaptionColorRange;-><init>(III)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 553
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Landroid/text/Editable;Ljava/util/List;)V

    .line 554
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setSelection(I)V

    .line 560
    :cond_5
    :goto_3
    new-instance v2, Lcom/snapchat/android/ui/caption/CaptionColorRange;

    invoke-direct {v2, p1, v1, v0}, Lcom/snapchat/android/ui/caption/CaptionColorRange;-><init>(III)V

    iput-object v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->A:Lcom/snapchat/android/ui/caption/CaptionColorRange;

    goto :goto_2

    .line 556
    :cond_6
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Landroid/text/Editable;III)V

    .line 557
    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setSelection(II)V

    goto :goto_3

    :cond_7
    move v1, v2

    goto/16 :goto_1
.end method

.method protected setColorSpans(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/ui/caption/CaptionColorRange;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 644
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 645
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/caption/CaptionColorRange;

    .line 646
    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionColorRange;->c()I

    move-result v3

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 649
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionColorRange;->a()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionColorRange;->b()I

    move-result v4

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionColorRange;->c()I

    move-result v0

    const/16 v5, 0x22

    invoke-virtual {v1, v3, v4, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 653
    :cond_1
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 654
    return-void
.end method

.method protected setMaxFontSize(D)V
    .locals 1
    .parameter

    .prologue
    .line 396
    iput-wide p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->n:D

    .line 397
    return-void
.end method

.method protected setMinFontSize(D)V
    .locals 1
    .parameter

    .prologue
    .line 400
    iput-wide p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->o:D

    .line 401
    return-void
.end method
