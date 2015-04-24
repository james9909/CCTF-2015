.class Lorg/joda/time/chrono/GJChronology$CutoverField;
.super Lorg/joda/time/field/BaseDateTimeField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/GJChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CutoverField"
.end annotation


# instance fields
.field final a:Lorg/joda/time/DateTimeField;

.field final b:Lorg/joda/time/DateTimeField;

.field final c:J

.field final d:Z

.field protected e:Lorg/joda/time/DurationField;

.field protected f:Lorg/joda/time/DurationField;

.field final synthetic g:Lorg/joda/time/chrono/GJChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 626
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;JZ)V

    .line 627
    return-void
.end method

.method constructor <init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;JZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->g:Lorg/joda/time/chrono/GJChronology;

    .line 637
    invoke-virtual {p3}, Lorg/joda/time/DateTimeField;->a()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/field/BaseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;)V

    .line 638
    iput-object p2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->a:Lorg/joda/time/DateTimeField;

    .line 639
    iput-object p3, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    .line 640
    iput-wide p4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    .line 641
    iput-boolean p6, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->d:Z

    .line 644
    invoke-virtual {p3}, Lorg/joda/time/DateTimeField;->e()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->e:Lorg/joda/time/DurationField;

    .line 646
    invoke-virtual {p3}, Lorg/joda/time/DateTimeField;->f()Lorg/joda/time/DurationField;

    move-result-object v0

    .line 647
    if-nez v0, :cond_0

    .line 648
    invoke-virtual {p2}, Lorg/joda/time/DateTimeField;->f()Lorg/joda/time/DurationField;

    move-result-object v0

    .line 650
    :cond_0
    iput-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->f:Lorg/joda/time/DurationField;

    .line 651
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 3
    .parameter

    .prologue
    .line 658
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 659
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->a(J)I

    move-result v0

    .line 661
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->a(J)I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/util/Locale;)I
    .locals 2
    .parameter

    .prologue
    .line 908
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->a(Ljava/util/Locale;)I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v1, p1}, Lorg/joda/time/DateTimeField;->a(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public a(Lorg/joda/time/ReadablePartial;)I
    .locals 1
    .parameter

    .prologue
    .line 813
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->a(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    return v0
.end method

.method public a(Lorg/joda/time/ReadablePartial;[I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 817
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->a(Lorg/joda/time/ReadablePartial;[I)I

    move-result v0

    return v0
.end method

.method public a(JI)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 690
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JJ)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 694
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 755
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 756
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->a(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    .line 757
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 759
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->a(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 760
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->l(J)J

    move-result-wide v0

    .line 774
    :cond_0
    :goto_0
    return-wide v0

    .line 765
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->a(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    .line 766
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 768
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->a(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 769
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->k(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 674
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->a(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 666
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 667
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->a(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 669
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->a(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(JJ)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 716
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->b(JJ)I

    move-result v0

    return v0
.end method

.method public b(Lorg/joda/time/ReadablePartial;)I
    .locals 4
    .parameter

    .prologue
    .line 861
    invoke-static {}, Lorg/joda/time/chrono/GJChronology;->N()Lorg/joda/time/chrono/GJChronology;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lorg/joda/time/chrono/GJChronology;->b(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    .line 862
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->d(J)I

    move-result v0

    return v0
.end method

.method public b(Lorg/joda/time/ReadablePartial;[I)I
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 866
    invoke-static {}, Lorg/joda/time/chrono/GJChronology;->N()Lorg/joda/time/chrono/GJChronology;

    move-result-object v4

    .line 867
    const-wide/16 v2, 0x0

    .line 868
    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->a()I

    move-result v5

    move v8, v0

    move-wide v0, v2

    move v2, v8

    :goto_0
    if-ge v2, v5, :cond_1

    .line 869
    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePartial;->b(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTimeFieldType;->a(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v3

    .line 870
    aget v6, p2, v2

    invoke-virtual {v3, v0, v1}, Lorg/joda/time/DateTimeField;->d(J)I

    move-result v7

    if-gt v6, v7, :cond_0

    .line 871
    aget v6, p2, v2

    invoke-virtual {v3, v0, v1, v6}, Lorg/joda/time/DateTimeField;->b(JI)J

    move-result-wide v0

    .line 868
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 874
    :cond_1
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->d(J)I

    move-result v0

    return v0
.end method

.method public b(JI)J
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 724
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 725
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->b(JI)J

    move-result-wide v0

    .line 726
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 728
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->a(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 729
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->l(J)J

    move-result-wide v0

    .line 732
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->a(J)I

    move-result v2

    if-eq v2, p3, :cond_3

    .line 733
    new-instance v0, Lorg/joda/time/IllegalFieldValueException;

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v1}, Lorg/joda/time/DateTimeField;->a()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6, v6}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 738
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->b(JI)J

    move-result-wide v0

    .line 739
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 741
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->a(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 742
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->k(J)J

    move-result-wide v0

    .line 745
    :cond_2
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->a(J)I

    move-result v2

    if-eq v2, p3, :cond_3

    .line 746
    new-instance v0, Lorg/joda/time/IllegalFieldValueException;

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v1}, Lorg/joda/time/DateTimeField;->a()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6, v6}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 751
    :cond_3
    return-wide v0
.end method

.method public b(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 686
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->b(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 678
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 679
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->b(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 681
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->b(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(J)Z
    .locals 3
    .parameter

    .prologue
    .line 786
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 787
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->b(J)Z

    move-result v0

    .line 789
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->b(J)Z

    move-result v0

    goto :goto_0
.end method

.method public c(J)I
    .locals 7
    .parameter

    .prologue
    .line 821
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 822
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->c(J)I

    move-result v0

    .line 834
    :cond_0
    :goto_0
    return v0

    .line 825
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->c(J)I

    move-result v0

    .line 829
    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/DateTimeField;->b(JI)J

    move-result-wide v2

    .line 830
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 831
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->a(J)I

    move-result v0

    goto :goto_0
.end method

.method public c(JJ)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 720
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->c(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)I
    .locals 7
    .parameter

    .prologue
    .line 844
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 845
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->d(J)I

    move-result v0

    .line 857
    :cond_0
    :goto_0
    return v0

    .line 848
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->d(J)I

    move-result v0

    .line 852
    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/DateTimeField;->b(JI)J

    move-result-wide v2

    .line 853
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 854
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->a:Lorg/joda/time/DateTimeField;

    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->a:Lorg/joda/time/DateTimeField;

    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/joda/time/DateTimeField;->a(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->a(J)I

    move-result v0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x0

    return v0
.end method

.method public e(J)J
    .locals 7
    .parameter

    .prologue
    .line 878
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 879
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->e(J)J

    move-result-wide v0

    .line 880
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 882
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->a(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 883
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->l(J)J

    move-result-wide v0

    .line 889
    :cond_0
    :goto_0
    return-wide v0

    .line 887
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->e(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public e()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->e:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public f(J)J
    .locals 7
    .parameter

    .prologue
    .line 893
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 894
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->f(J)J

    move-result-wide v0

    .line 904
    :cond_0
    :goto_0
    return-wide v0

    .line 896
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->f(J)J

    move-result-wide v0

    .line 897
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 899
    iget-object v2, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-static {v2}, Lorg/joda/time/chrono/GJChronology;->a(Lorg/joda/time/chrono/GJChronology;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 900
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology$CutoverField;->k(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public f()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->f:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public g()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->g()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->h()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->b:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->i()I

    move-result v0

    return v0
.end method

.method protected k(J)J
    .locals 3
    .parameter

    .prologue
    .line 918
    iget-boolean v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->d:Z

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/GJChronology;->c(J)J

    move-result-wide v0

    .line 921
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/GJChronology;->a(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected l(J)J
    .locals 3
    .parameter

    .prologue
    .line 926
    iget-boolean v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->d:Z

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/GJChronology;->d(J)J

    move-result-wide v0

    .line 929
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology$CutoverField;->g:Lorg/joda/time/chrono/GJChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/GJChronology;->b(J)J

    move-result-wide v0

    goto :goto_0
.end method
