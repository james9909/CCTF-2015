.class public Lorg/joda/time/format/PeriodFormatterBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/format/PeriodFormatterBuilder$Composite;,
        Lorg/joda/time/format/PeriodFormatterBuilder$Separator;,
        Lorg/joda/time/format/PeriodFormatterBuilder$Literal;,
        Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;,
        Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;,
        Lorg/joda/time/format/PeriodFormatterBuilder$PluralAffix;,
        Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;,
        Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->b()V

    .line 103
    return-void
.end method

.method private static a(Ljava/util/List;ZZ)Lorg/joda/time/format/PeriodFormatter;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;ZZ)",
            "Lorg/joda/time/format/PeriodFormatter;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 795
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 796
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder has created neither a printer nor a parser"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 799
    if-lt v1, v3, :cond_1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    if-eqz v0, :cond_1

    .line 800
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    .line 801
    invoke-static {v0}, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->a(Lorg/joda/time/format/PeriodFormatterBuilder$Separator;)Lorg/joda/time/format/PeriodParser;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->b(Lorg/joda/time/format/PeriodFormatterBuilder$Separator;)Lorg/joda/time/format/PeriodPrinter;

    move-result-object v2

    if-nez v2, :cond_1

    .line 802
    invoke-interface {p0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder;->a(Ljava/util/List;ZZ)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v1

    .line 803
    invoke-virtual {v1}, Lorg/joda/time/format/PeriodFormatter;->a()Lorg/joda/time/format/PeriodPrinter;

    move-result-object v2

    invoke-virtual {v1}, Lorg/joda/time/format/PeriodFormatter;->b()Lorg/joda/time/format/PeriodParser;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->a(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    move-result-object v1

    .line 804
    new-instance v0, Lorg/joda/time/format/PeriodFormatter;

    invoke-direct {v0, v1, v1}, Lorg/joda/time/format/PeriodFormatter;-><init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)V

    .line 813
    :goto_0
    return-object v0

    .line 807
    :cond_1
    invoke-static {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->a(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v3

    .line 808
    if-eqz p1, :cond_2

    .line 809
    new-instance v1, Lorg/joda/time/format/PeriodFormatter;

    aget-object v0, v3, v5

    check-cast v0, Lorg/joda/time/format/PeriodParser;

    invoke-direct {v1, v6, v0}, Lorg/joda/time/format/PeriodFormatter;-><init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)V

    move-object v0, v1

    goto :goto_0

    .line 810
    :cond_2
    if-eqz p2, :cond_3

    .line 811
    new-instance v1, Lorg/joda/time/format/PeriodFormatter;

    aget-object v0, v3, v4

    check-cast v0, Lorg/joda/time/format/PeriodPrinter;

    invoke-direct {v1, v0, v6}, Lorg/joda/time/format/PeriodFormatter;-><init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)V

    move-object v0, v1

    goto :goto_0

    .line 813
    :cond_3
    new-instance v2, Lorg/joda/time/format/PeriodFormatter;

    aget-object v0, v3, v4

    check-cast v0, Lorg/joda/time/format/PeriodPrinter;

    aget-object v1, v3, v5

    check-cast v1, Lorg/joda/time/format/PeriodParser;

    invoke-direct {v2, v0, v1}, Lorg/joda/time/format/PeriodFormatter;-><init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 730
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 731
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 734
    :cond_1
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->j()V

    .line 737
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->f:Ljava/util/List;

    .line 738
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 739
    if-eqz p5, :cond_2

    if-nez p4, :cond_2

    .line 740
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    sget-object v4, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->a:Lorg/joda/time/format/PeriodFormatterBuilder$Literal;

    sget-object v5, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->a:Lorg/joda/time/format/PeriodFormatterBuilder$Literal;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;ZZ)V

    .line 743
    invoke-direct {p0, v0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->a(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 774
    :cond_2
    :goto_0
    return-object p0

    .line 750
    :cond_3
    const/4 v0, 0x0

    .line 751
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_6

    .line 752
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    if-eqz v3, :cond_4

    .line 753
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    .line 754
    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    move-object v8, v1

    .line 761
    :goto_2
    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 762
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot have two adjacent separators"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 764
    :cond_5
    invoke-static {v8}, Lorg/joda/time/format/PeriodFormatterBuilder;->a(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v1

    .line 765
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 766
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;

    const/4 v2, 0x0

    aget-object v4, v1, v2

    check-cast v4, Lorg/joda/time/format/PeriodPrinter;

    const/4 v2, 0x1

    aget-object v5, v1, v2

    check-cast v5, Lorg/joda/time/format/PeriodParser;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;ZZ)V

    .line 770
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    move-object v8, v1

    goto :goto_2
.end method

.method private a(Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 591
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 592
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->f:Ljava/util/List;

    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 593
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->f:Ljava/util/List;

    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 599
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-ne v0, v1, :cond_0

    instance-of v1, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    if-nez v1, :cond_2

    .line 602
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No field to apply suffix to"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v1, v0

    .line 596
    goto :goto_0

    .line 605
    :cond_2
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->j()V

    .line 606
    new-instance v1, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    check-cast v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    invoke-direct {v1, v0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;-><init>(Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)V

    .line 607
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->f:Ljava/util/List;

    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 608
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->f:Ljava/util/List;

    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->i:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    invoke-virtual {v1}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->a()I

    move-result v2

    aput-object v1, v0, v2

    .line 611
    return-object p0
.end method

.method private a(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 786
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    iget-boolean v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->g:Z

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->g:Z

    .line 789
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->h:Z

    if-nez p2, :cond_1

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->h:Z

    .line 790
    return-object p0

    :cond_0
    move v0, v2

    .line 788
    goto :goto_0

    :cond_1
    move v1, v2

    .line 789
    goto :goto_1
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 530
    iget v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->a:I

    invoke-direct {p0, p1, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->a(II)V

    .line 531
    return-void
.end method

.method private a(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 534
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    iget v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->b:I

    iget v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->c:I

    iget-boolean v4, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->d:Z

    iget-object v6, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->i:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    iget-object v7, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->e:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    move v1, p2

    move v5, p1

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;-><init>(IIIZI[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)V

    .line 536
    invoke-direct {p0, v0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->a(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 537
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->i:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    aput-object v0, v1, p1

    .line 538
    iput-object v8, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->e:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 539
    return-void
.end method

.method private static a(Ljava/util/List;)[Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 818
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 824
    new-instance v1, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;

    invoke-direct {v1, p0}, Lorg/joda/time/format/PeriodFormatterBuilder$Composite;-><init>(Ljava/util/List;)V

    .line 825
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    :goto_0
    return-object v0

    .line 820
    :pswitch_0
    new-array v0, v4, [Ljava/lang/Object;

    sget-object v1, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->a:Lorg/joda/time/format/PeriodFormatterBuilder$Literal;

    aput-object v1, v0, v2

    sget-object v1, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->a:Lorg/joda/time/format/PeriodFormatterBuilder$Literal;

    aput-object v1, v0, v3

    goto :goto_0

    .line 822
    :pswitch_1
    new-array v0, v4, [Ljava/lang/Object;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 818
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private j()V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->e:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    if-eqz v0, :cond_0

    .line 780
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Prefix not followed by field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->e:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 783
    return-void
.end method


# virtual methods
.method public a()Lorg/joda/time/format/PeriodFormatter;
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->f:Ljava/util/List;

    iget-boolean v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->g:Z

    iget-boolean v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->h:Z

    invoke-static {v0, v1, v2}, Lorg/joda/time/format/PeriodFormatterBuilder;->a(Ljava/util/List;ZZ)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v1

    .line 124
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->i:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    invoke-virtual {v0}, [Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    check-cast v0, [Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->i:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 125
    return-object v1
.end method

.method public a(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 2
    .parameter

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Literal must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatterBuilder;->j()V

    .line 232
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;

    invoke-direct {v0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0, v0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->a(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder;

    .line 234
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1
    .parameter

    .prologue
    .line 552
    if-nez p1, :cond_0

    .line 553
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 555
    :cond_0
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;

    invoke-direct {v0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$SimpleAffix;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->a(Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 171
    const/4 v0, 0x1

    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->a:I

    .line 172
    const/4 v0, 0x2

    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->b:I

    .line 173
    iput v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->c:I

    .line 174
    iput-boolean v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->d:Z

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->e:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 176
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->f:Ljava/util/List;

    .line 181
    :goto_0
    iput-boolean v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->g:Z

    .line 182
    iput-boolean v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->h:Z

    .line 183
    new-array v0, v2, [Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->i:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 184
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public c()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->a(I)V

    .line 399
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 6
    .parameter

    .prologue
    .line 652
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/format/PeriodFormatterBuilder;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZ)Lorg/joda/time/format/PeriodFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public d()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->a(I)V

    .line 412
    return-object p0
.end method

.method public e()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->a(I)V

    .line 425
    return-object p0
.end method

.method public f()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->a(I)V

    .line 438
    return-object p0
.end method

.method public g()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->a(I)V

    .line 451
    return-object p0
.end method

.method public h()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->a(I)V

    .line 464
    return-object p0
.end method

.method public i()Lorg/joda/time/format/PeriodFormatterBuilder;
    .locals 1

    .prologue
    .line 500
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/joda/time/format/PeriodFormatterBuilder;->a(I)V

    .line 501
    return-object p0
.end method
