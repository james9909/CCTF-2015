.class public Lcom/snapchat/android/ui/cash/CardExpiryEditText;
.super Lcom/snapchat/android/ui/StickyEndEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/cash/CardExpiryEditText$1;,
        Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Calendar;

.field private final b:Ljava/util/Calendar;

.field private c:Z

.field private d:Landroid/view/animation/Animation;

.field private e:Lcom/snapchat/android/cash/ValidatedInputCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/StickyEndEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a:Ljava/util/Calendar;

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->b:Ljava/util/Calendar;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->c:Z

    .line 45
    const v0, 0x7f050001

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->d:Landroid/view/animation/Animation;

    .line 46
    new-instance v0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;-><init>(Lcom/snapchat/android/ui/cash/CardExpiryEditText;Lcom/snapchat/android/ui/cash/CardExpiryEditText$1;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 47
    const-string v0, "0123456789//"

    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;)Lcom/snapchat/android/cash/ValidatedInputCallback;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->e:Lcom/snapchat/android/cash/ValidatedInputCallback;

    return-object v0
.end method

.method private a(Landroid/text/Editable;)Ljava/lang/StringBuilder;
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x31

    const/4 v7, 0x2

    const/16 v6, 0x30

    const/4 v1, 0x0

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 82
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 83
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    .line 84
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    packed-switch v0, :pswitch_data_0

    .line 122
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 124
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :pswitch_1
    if-le v3, v8, :cond_0

    .line 89
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 94
    :pswitch_2
    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_2

    if-lt v3, v6, :cond_3

    const/16 v4, 0x32

    if-gt v3, v4, :cond_3

    :cond_2
    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    if-ne v3, v6, :cond_0

    .line 96
    :cond_3
    iget-object v3, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->d:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 103
    :pswitch_3
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 104
    invoke-direct {p0, v4}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    iget-object v3, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->d:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 111
    :pswitch_4
    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v0, 0x1

    invoke-interface {p1, v4, v5}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 112
    invoke-interface {p1, v1, v7}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 114
    invoke-direct {p0, v4, v5}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 115
    iget-object v3, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->d:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 128
    :cond_4
    return-object v2

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;Landroid/text/Editable;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a(Landroid/text/Editable;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 138
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 139
    rem-int/lit8 v2, v1, 0x64

    sub-int v2, v1, v2

    .line 140
    mul-int/lit8 v3, p1, 0xa

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x9

    .line 141
    mul-int/lit8 v4, p1, 0xa

    add-int/2addr v2, v4

    .line 142
    if-lt v3, v1, :cond_0

    add-int/lit8 v1, v1, 0x19

    if-ge v2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(II)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 154
    iget-object v2, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 155
    rem-int/lit8 v2, v3, 0x64

    sub-int v2, v3, v2

    .line 156
    add-int/2addr v2, p1

    .line 157
    if-ge v2, v3, :cond_0

    .line 158
    add-int/lit8 v2, v2, 0x64

    .line 160
    :cond_0
    if-ne v2, v3, :cond_3

    .line 161
    iget-object v2, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le p2, v2, :cond_2

    .line 163
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 161
    goto :goto_0

    .line 163
    :cond_3
    sub-int/2addr v2, v3

    const/16 v3, 0x19

    if-le v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->c:Z

    return p1
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->e:Lcom/snapchat/android/cash/ValidatedInputCallback;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->e:Lcom/snapchat/android/cash/ValidatedInputCallback;

    invoke-interface {v0}, Lcom/snapchat/android/cash/ValidatedInputCallback;->c()V

    .line 74
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 220
    const-string v0, "[0-9]{2}/[0-9]{2}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v2

    .line 223
    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 224
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 225
    if-lt v3, v1, :cond_0

    const/16 v4, 0xc

    if-gt v3, v4, :cond_0

    .line 229
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 230
    iget-object v4, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a:Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 231
    rem-int/lit8 v5, v4, 0x64

    sub-int v5, v4, v5

    .line 232
    add-int/2addr v0, v5

    .line 234
    if-ge v0, v4, :cond_2

    .line 235
    add-int/lit8 v0, v0, 0x64

    .line 237
    :cond_2
    iget-object v5, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->b:Ljava/util/Calendar;

    invoke-virtual {v5, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 239
    iget-object v5, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->b:Ljava/util/Calendar;

    const/4 v6, 0x2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v5, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 241
    iget-object v3, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->b:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->b:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    invoke-virtual {v3, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 242
    iget-object v3, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->b:Ljava/util/Calendar;

    invoke-virtual {v3, v7, v1}, Ljava/util/Calendar;->add(II)V

    .line 244
    iget-object v3, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->b:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sub-int/2addr v0, v4

    const/16 v3, 0x19

    if-gt v0, v3, :cond_3

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnformattedText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    .line 62
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    .line 51
    iput-object p1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->e:Lcom/snapchat/android/cash/ValidatedInputCallback;

    .line 52
    return-void
.end method
