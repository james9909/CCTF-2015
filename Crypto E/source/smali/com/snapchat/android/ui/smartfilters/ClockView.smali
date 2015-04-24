.class public Lcom/snapchat/android/ui/smartfilters/ClockView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/smartfilters/ClockView$ClockDigits;
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Date;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 28
    const v1, 0x7f040030

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 30
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/smartfilters/ClockView;->a:Z

    .line 31
    invoke-virtual {p0, p2}, Lcom/snapchat/android/ui/smartfilters/ClockView;->setTime(Ljava/util/Date;)V

    .line 32
    return-void
.end method

.method protected static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 97
    const/16 v0, 0xb

    if-le p0, v0, :cond_0

    .line 98
    const v0, 0x7f0200d3

    .line 100
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0200d1

    goto :goto_0
.end method

.method protected static a(IZ)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 105
    rem-int/lit8 v0, p0, 0xa

    packed-switch v0, :pswitch_data_0

    .line 131
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid input: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :pswitch_0
    const v0, 0x7f0200c6

    .line 129
    :goto_0
    return v0

    .line 109
    :pswitch_1
    if-eqz p1, :cond_0

    .line 110
    const v0, 0x7f0200c8

    goto :goto_0

    .line 112
    :cond_0
    const v0, 0x7f0200c7

    goto :goto_0

    .line 115
    :pswitch_2
    const v0, 0x7f0200c9

    goto :goto_0

    .line 117
    :pswitch_3
    const v0, 0x7f0200ca

    goto :goto_0

    .line 119
    :pswitch_4
    const v0, 0x7f0200cb

    goto :goto_0

    .line 121
    :pswitch_5
    const v0, 0x7f0200cc

    goto :goto_0

    .line 123
    :pswitch_6
    const v0, 0x7f0200cd

    goto :goto_0

    .line 125
    :pswitch_7
    const v0, 0x7f0200ce

    goto :goto_0

    .line 127
    :pswitch_8
    const v0, 0x7f0200cf

    goto :goto_0

    .line 129
    :pswitch_9
    const v0, 0x7f0200d0

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected static a(Ljava/util/Calendar;Z)Lcom/snapchat/android/ui/smartfilters/ClockView$ClockDigits;
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/16 v0, 0xc

    .line 79
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 80
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 82
    if-nez p1, :cond_1

    .line 84
    if-le v1, v0, :cond_0

    add-int/lit8 v1, v1, -0xc

    .line 85
    :cond_0
    if-nez v1, :cond_1

    .line 88
    :goto_0
    div-int/lit8 v1, v0, 0xa

    .line 89
    rem-int/lit8 v0, v0, 0xa

    .line 90
    div-int/lit8 v3, v2, 0xa

    .line 91
    rem-int/lit8 v2, v2, 0xa

    .line 93
    new-instance v4, Lcom/snapchat/android/ui/smartfilters/ClockView$ClockDigits;

    invoke-direct {v4, v1, v0, v3, v2}, Lcom/snapchat/android/ui/smartfilters/ClockView$ClockDigits;-><init>(IIII)V

    return-object v4

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public setTime(Ljava/util/Date;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 35
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 36
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 39
    const v0, 0x7f0a0138

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/smartfilters/ClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 40
    iget-boolean v2, p0, Lcom/snapchat/android/ui/smartfilters/ClockView;->a:Z

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    :goto_0
    iget-boolean v0, p0, Lcom/snapchat/android/ui/smartfilters/ClockView;->a:Z

    invoke-static {v1, v0}, Lcom/snapchat/android/ui/smartfilters/ClockView;->a(Ljava/util/Calendar;Z)Lcom/snapchat/android/ui/smartfilters/ClockView$ClockDigits;

    move-result-object v1

    .line 50
    const v0, 0x7f0a0133

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/smartfilters/ClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 51
    iget v2, v1, Lcom/snapchat/android/ui/smartfilters/ClockView$ClockDigits;->a:I

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/snapchat/android/ui/smartfilters/ClockView;->a:Z

    if-nez v2, :cond_1

    .line 52
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    :goto_1
    const v0, 0x7f0a0134

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/smartfilters/ClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v2, v1, Lcom/snapchat/android/ui/smartfilters/ClockView$ClockDigits;->b:I

    invoke-static {v2, v4}, Lcom/snapchat/android/ui/smartfilters/ClockView;->a(IZ)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    const v0, 0x7f0a0136

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/smartfilters/ClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v2, v1, Lcom/snapchat/android/ui/smartfilters/ClockView$ClockDigits;->c:I

    invoke-static {v2, v4}, Lcom/snapchat/android/ui/smartfilters/ClockView;->a(IZ)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    const v0, 0x7f0a0137

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/smartfilters/ClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, v1, Lcom/snapchat/android/ui/smartfilters/ClockView$ClockDigits;->d:I

    invoke-static {v1, v4}, Lcom/snapchat/android/ui/smartfilters/ClockView;->a(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    return-void

    .line 43
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 45
    invoke-static {v2}, Lcom/snapchat/android/ui/smartfilters/ClockView;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget v2, v1, Lcom/snapchat/android/ui/smartfilters/ClockView$ClockDigits;->a:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/snapchat/android/ui/smartfilters/ClockView;->a(IZ)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
