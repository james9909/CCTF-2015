.class public Lcom/snapchat/android/cash/CashtagParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/cash/CashtagParser$CashtagRange;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private a(Landroid/graphics/Paint;Ljava/lang/String;III)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 160
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 161
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 162
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 165
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 167
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 168
    invoke-virtual {v3, v5, v5, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 171
    add-int v3, p4, p5

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 172
    div-int/lit8 v4, p3, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, p2, v4, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 174
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private a(Landroid/widget/EditText;Landroid/text/Editable;Lcom/snapchat/android/cash/CashtagParser$CashtagRange;Ljava/lang/String;)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v7, 0x0

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 138
    invoke-virtual {p1}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p4, v7, v2, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 140
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4100

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v3, v1

    .line 141
    const/high16 v1, 0x41c0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v2

    .line 142
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v2

    const/high16 v4, 0x4000

    div-float/2addr v1, v4

    float-to-int v1, v1

    add-int/lit8 v6, v1, -0x5

    .line 144
    invoke-virtual {p1}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    float-to-int v4, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v0, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/cash/CashtagParser;->a(Landroid/graphics/Paint;Ljava/lang/String;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v0, v7, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v0, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 147
    iget v0, p3, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->a:I

    iget v2, p3, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->b:I

    const/16 v3, 0x21

    invoke-interface {p2, v1, v0, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 149
    iget v0, p3, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->b:I

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 150
    iget v0, p3, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->b:I

    const-string v1, " "

    invoke-interface {p2, v0, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 151
    iget v0, p3, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget v0, p3, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->b:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 273
    const-string v0, "\\$([1-9],\\d{3})(\\.\\d{0,2})?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\$([1-9]\\d{0,3}|0?)?(\\.(\\d{0,2}))?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\$(?i:pi|e)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 301
    const-string v0, "(?i)PI"

    const-string v1, "3.14"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    const-string v1, "(?i)E"

    const-string v2, "2.72"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    return-object v0
.end method


# virtual methods
.method protected a(D)I
    .locals 5
    .parameter

    .prologue
    .line 323
    const-wide/high16 v0, 0x4059

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    .line 324
    const-wide v2, 0x41dfffffffc00000L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 325
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 327
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Landroid/text/Editable;)I
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, -0x1

    .line 196
    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, p1}, Lcom/snapchat/android/cash/CashtagParser;->b(Landroid/text/Editable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 198
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {p1, v4, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-virtual {p0, v3}, Lcom/snapchat/android/cash/CashtagParser;->d(Ljava/lang/String;)I

    move-result v3

    .line 200
    if-ne v3, v1, :cond_1

    move v0, v1

    .line 206
    :cond_0
    return v0

    .line 203
    :cond_1
    add-int/2addr v0, v3

    .line 204
    goto :goto_0
.end method

.method protected a(Ljava/lang/String;I)Lcom/snapchat/android/cash/CashtagParser$CashtagRange;
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 216
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 234
    :goto_0
    return-object v0

    .line 218
    :cond_1
    const/4 v0, -0x1

    .line 219
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_3

    .line 220
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 219
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    :cond_3
    add-int/lit8 v2, v0, 0x1

    .line 226
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-lt v1, p2, :cond_5

    .line 228
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 227
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 234
    :cond_5
    if-le v2, v0, :cond_6

    new-instance v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;

    invoke-direct {v0, p2, p2}, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;-><init>(II)V

    goto :goto_0

    :cond_6
    new-instance v1, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;

    invoke-direct {v1, v2, v0}, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;-><init>(II)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected a(I)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 309
    if-gtz p1, :cond_0

    const/4 v0, 0x0

    .line 318
    :goto_0
    return-object v0

    .line 312
    :cond_0
    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_1

    .line 313
    const-string v0, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    div-int/lit8 v2, p1, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 318
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 315
    :cond_1
    const-string v0, "%.2f"

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float v2, p1

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 183
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 189
    :cond_0
    :goto_0
    return-object p1

    .line 185
    :cond_1
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public a(Landroid/widget/EditText;I)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/snapchat/android/cash/CashtagParser;->b(Ljava/lang/String;I)Lcom/snapchat/android/cash/CashtagParser$CashtagRange;

    move-result-object v0

    .line 108
    if-nez v0, :cond_2

    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/snapchat/android/cash/CashtagParser;->c(Ljava/lang/String;I)Lcom/snapchat/android/cash/CashtagParser$CashtagRange;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->a:I

    add-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->b:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {p0, v2}, Lcom/snapchat/android/cash/CashtagParser;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/snapchat/android/cash/CashtagParser;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    .line 114
    iget v4, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->a:I

    iget v5, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->b:I

    invoke-interface {v1, v4, v5, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 115
    iget v2, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->b:I

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int v3, v4, v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->b:I

    .line 130
    :cond_0
    :goto_0
    iget v2, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->a:I

    iget v3, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->b:I

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {p0, v2}, Lcom/snapchat/android/cash/CashtagParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/snapchat/android/cash/CashtagParser;->a(Landroid/widget/EditText;Landroid/text/Editable;Lcom/snapchat/android/cash/CashtagParser$CashtagRange;Ljava/lang/String;)V

    .line 133
    return-void

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "check containsCashtagAtSelection first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_2
    iget v2, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->a:I

    iget v3, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->b:I

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    const-string v3, "\\$(?i:pi|e)"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    invoke-static {v2}, Lcom/snapchat/android/cash/CashtagParser;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    .line 125
    iget v4, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->a:I

    iget v5, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->b:I

    invoke-interface {v1, v4, v5, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 126
    iget v2, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->b:I

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int v3, v4, v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->b:I

    goto :goto_0
.end method

.method public a(Landroid/widget/EditText;)Z
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 79
    :goto_0
    return v0

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/cash/CashtagParser;->b(Landroid/text/Editable;)Ljava/util/List;

    move-result-object v3

    .line 67
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/cash/CashtagParser;->b(Ljava/lang/String;I)Lcom/snapchat/android/cash/CashtagParser$CashtagRange;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/snapchat/android/cash/CashtagParser;->c(Ljava/lang/String;I)Lcom/snapchat/android/cash/CashtagParser$CashtagRange;

    move-result-object v1

    .line 70
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_0

    .line 71
    :cond_1
    if-eqz v0, :cond_3

    .line 73
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 74
    iget v4, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->a:I

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-gt v4, v5, :cond_2

    iget v4, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->b:I

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-lt v4, v3, :cond_2

    move v0, v2

    .line 76
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 71
    goto :goto_1

    .line 79
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Landroid/widget/EditText;)I
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/snapchat/android/cash/CashtagParser;->b(Ljava/lang/String;I)Lcom/snapchat/android/cash/CashtagParser$CashtagRange;

    move-result-object v0

    .line 93
    if-nez v0, :cond_0

    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/snapchat/android/cash/CashtagParser;->c(Ljava/lang/String;I)Lcom/snapchat/android/cash/CashtagParser$CashtagRange;

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "check containsCashtagAtSelection first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget v2, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->a:I

    add-int/lit8 v2, v2, 0x1

    iget v0, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->b:I

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/snapchat/android/cash/CashtagParser;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/String;I)Lcom/snapchat/android/cash/CashtagParser$CashtagRange;
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/cash/CashtagParser;->a(Ljava/lang/String;I)Lcom/snapchat/android/cash/CashtagParser$CashtagRange;

    move-result-object v0

    .line 242
    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-object v1

    .line 243
    :cond_0
    iget v2, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->a:I

    iget v3, v0, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;->b:I

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {p0, v2}, Lcom/snapchat/android/cash/CashtagParser;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method protected b(Landroid/text/Editable;)Ljava/util/List;
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/text/style/ImageSpan;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ImageSpan;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 269
    invoke-static {p1}, Lcom/snapchat/android/cash/CashtagParser;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/snapchat/android/cash/CashtagParser;->d(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;I)Lcom/snapchat/android/cash/CashtagParser$CashtagRange;
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/16 v1, 0x24

    const/4 v2, 0x0

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_0

    if-gez p2, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-object v2

    .line 252
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, p2

    :cond_2
    move v1, v0

    .line 259
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_0

    .line 260
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/snapchat/android/cash/CashtagParser;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 261
    if-gt p2, v1, :cond_4

    new-instance v2, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;

    invoke-direct {v2, v0, v1}, Lcom/snapchat/android/cash/CashtagParser$CashtagRange;-><init>(II)V

    move-object v0, v2

    :goto_2
    move-object v2, v0

    goto :goto_0

    .line 255
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 256
    if-ltz v0, :cond_0

    if-lez v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 261
    goto :goto_2

    .line 259
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected d(Ljava/lang/String;)I
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 281
    const-string v2, "$."

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 282
    :cond_1
    invoke-static {p1}, Lcom/snapchat/android/cash/CashtagParser;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-virtual {p0, v2}, Lcom/snapchat/android/cash/CashtagParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    const-string v3, ","

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 285
    const-string v3, "\\$([1-9]\\d{0,3}|0?)?(\\.(\\d{0,2}))?"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 286
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 290
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 294
    :goto_1
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 297
    :goto_2
    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v0, v1

    goto :goto_0

    .line 290
    :cond_2
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    .line 295
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 291
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected e(Ljava/lang/String;)I
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 332
    invoke-static {p1}, Lcom/snapchat/android/cash/CashtagParser;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    const-string v0, "([^\\d\\s\\.\\)]|^)\\s*\\+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 335
    const-string v0, "[\\s\\d+/*\\-()\\.\u00d7\u00f7]*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 336
    :goto_0
    if-nez v0, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    move v0, v6

    .line 344
    :goto_1
    return v0

    :cond_1
    move v0, v2

    .line 335
    goto :goto_0

    .line 338
    :cond_2
    const/16 v0, 0xd7

    const/16 v3, 0x2a

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 339
    const/16 v1, 0xf7

    const/16 v3, 0x2f

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 340
    new-instance v0, Lnet/sourceforge/jeval/Evaluator;

    const/16 v1, 0x27

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/jeval/Evaluator;-><init>(CZZZZ)V

    .line 342
    :try_start_0
    invoke-virtual {v0, v7}, Lnet/sourceforge/jeval/Evaluator;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/cash/CashtagParser;->a(D)I
    :try_end_0
    .catch Lnet/sourceforge/jeval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_1

    .line 343
    :catch_0
    move-exception v0

    :goto_2
    move v0, v6

    .line 344
    goto :goto_1

    .line 343
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected f(Ljava/lang/String;)Z
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 350
    const-string v2, "\\$\\(.*\\)"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    :goto_0
    return v1

    .line 351
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/snapchat/android/cash/CashtagParser;->e(Ljava/lang/String;)I

    move-result v2

    .line 352
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
