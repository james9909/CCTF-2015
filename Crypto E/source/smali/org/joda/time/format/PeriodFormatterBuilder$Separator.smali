.class Lorg/joda/time/format/PeriodFormatterBuilder$Separator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/format/PeriodParser;
.implements Lorg/joda/time/format/PeriodPrinter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/PeriodFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Separator"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:Z

.field private final e:Z

.field private final f:Lorg/joda/time/format/PeriodPrinter;

.field private volatile g:Lorg/joda/time/format/PeriodPrinter;

.field private final h:Lorg/joda/time/format/PeriodParser;

.field private volatile i:Lorg/joda/time/format/PeriodParser;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1600
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->a:Ljava/lang/String;

    .line 1601
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->b:Ljava/lang/String;

    .line 1603
    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    array-length v0, p3

    if-nez v0, :cond_2

    .line 1606
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->c:[Ljava/lang/String;

    .line 1622
    :goto_0
    iput-object p4, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->f:Lorg/joda/time/format/PeriodPrinter;

    .line 1623
    iput-object p5, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->h:Lorg/joda/time/format/PeriodParser;

    .line 1624
    iput-boolean p6, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->d:Z

    .line 1625
    iput-boolean p7, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->e:Z

    .line 1626
    return-void

    .line 1609
    :cond_2
    new-instance v1, Ljava/util/TreeSet;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 1610
    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1611
    invoke-virtual {v1, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1612
    if-eqz p3, :cond_3

    .line 1613
    array-length v0, p3

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 1614
    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1617
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1618
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1619
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->c:[Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lorg/joda/time/format/PeriodFormatterBuilder$Separator;)Lorg/joda/time/format/PeriodParser;
    .locals 1
    .parameter

    .prologue
    .line 1583
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->i:Lorg/joda/time/format/PeriodParser;

    return-object v0
.end method

.method static synthetic b(Lorg/joda/time/format/PeriodFormatterBuilder$Separator;)Lorg/joda/time/format/PeriodPrinter;
    .locals 1
    .parameter

    .prologue
    .line 1583
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->g:Lorg/joda/time/format/PeriodPrinter;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1629
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->f:Lorg/joda/time/format/PeriodPrinter;

    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->a(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    .line 1630
    if-ge v0, p2, :cond_0

    .line 1631
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->g:Lorg/joda/time/format/PeriodPrinter;

    invoke-interface {v1, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->a(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1633
    :cond_0
    return v0
.end method

.method public a(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1637
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->f:Lorg/joda/time/format/PeriodPrinter;

    .line 1638
    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->g:Lorg/joda/time/format/PeriodPrinter;

    .line 1640
    invoke-interface {v0, p1, p2}, Lorg/joda/time/format/PeriodPrinter;->a(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I

    move-result v1

    invoke-interface {v2, p1, p2}, Lorg/joda/time/format/PeriodPrinter;->a(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1643
    iget-boolean v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->d:Z

    if-eqz v3, :cond_3

    .line 1644
    invoke-interface {v0, p1, v4, p2}, Lorg/joda/time/format/PeriodPrinter;->a(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1645
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->e:Z

    if-eqz v0, :cond_2

    .line 1646
    const/4 v0, 0x2

    invoke-interface {v2, p1, v0, p2}, Lorg/joda/time/format/PeriodPrinter;->a(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    .line 1647
    if-lez v0, :cond_4

    .line 1648
    if-le v0, v4, :cond_1

    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 1658
    :cond_0
    :goto_2
    return v1

    .line 1648
    :cond_1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->b:Ljava/lang/String;

    goto :goto_0

    .line 1651
    :cond_2
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_2

    .line 1654
    :cond_3
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->e:Z

    if-eqz v0, :cond_0

    invoke-interface {v2, p1, v4, p2}, Lorg/joda/time/format/PeriodPrinter;->a(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1655
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method a(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)Lorg/joda/time/format/PeriodFormatterBuilder$Separator;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1756
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->g:Lorg/joda/time/format/PeriodPrinter;

    .line 1757
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->i:Lorg/joda/time/format/PeriodParser;

    .line 1758
    return-object p0
.end method

.method public a(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1662
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->f:Lorg/joda/time/format/PeriodPrinter;

    .line 1663
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->g:Lorg/joda/time/format/PeriodPrinter;

    .line 1665
    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->a(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V

    .line 1666
    iget-boolean v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->d:Z

    if-eqz v2, :cond_3

    .line 1667
    invoke-interface {v0, p2, v3, p3}, Lorg/joda/time/format/PeriodPrinter;->a(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1668
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->e:Z

    if-eqz v0, :cond_2

    .line 1669
    const/4 v0, 0x2

    invoke-interface {v1, p2, v0, p3}, Lorg/joda/time/format/PeriodPrinter;->a(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    .line 1670
    if-lez v0, :cond_0

    .line 1671
    if-le v0, v3, :cond_1

    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1680
    :cond_0
    :goto_1
    invoke-interface {v1, p1, p2, p3}, Lorg/joda/time/format/PeriodPrinter;->a(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V

    .line 1681
    return-void

    .line 1671
    :cond_1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->b:Ljava/lang/String;

    goto :goto_0

    .line 1674
    :cond_2
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1677
    :cond_3
    iget-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->e:Z

    if-eqz v0, :cond_0

    invoke-interface {v1, p2, v3, p3}, Lorg/joda/time/format/PeriodPrinter;->a(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1678
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Separator;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
