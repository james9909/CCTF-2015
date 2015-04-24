.class Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/format/DateTimeParser;
.implements Lorg/joda/time/format/DateTimePrinter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Fraction"
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field private final c:Lorg/joda/time/DateTimeFieldType;


# direct methods
.method protected constructor <init>(Lorg/joda/time/DateTimeFieldType;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x12

    .line 1895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1896
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->c:Lorg/joda/time/DateTimeFieldType;

    .line 1898
    if-le p3, v0, :cond_0

    move p3, v0

    .line 1901
    :cond_0
    iput p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->a:I

    .line 1902
    iput p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->b:I

    .line 1903
    return-void
.end method

.method private a(JLorg/joda/time/DateTimeField;)[J
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 2028
    invoke-virtual {p3}, Lorg/joda/time/DateTimeField;->e()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DurationField;->d()J

    move-result-wide v4

    .line 2030
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->b:I

    move v2, v0

    .line 2032
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2033
    const-wide/16 v0, 0x1

    .line 2053
    :goto_1
    mul-long v6, v4, v0

    div-long/2addr v6, v0

    cmp-long v3, v6, v4

    if-nez v3, :cond_0

    .line 2060
    const/4 v3, 0x2

    new-array v3, v3, [J

    const/4 v6, 0x0

    mul-long/2addr v0, p1

    div-long/2addr v0, v4

    aput-wide v0, v3, v6

    const/4 v0, 0x1

    int-to-long v4, v2

    aput-wide v4, v3, v0

    return-object v3

    .line 2034
    :pswitch_0
    const-wide/16 v0, 0xa

    goto :goto_1

    .line 2035
    :pswitch_1
    const-wide/16 v0, 0x64

    goto :goto_1

    .line 2036
    :pswitch_2
    const-wide/16 v0, 0x3e8

    goto :goto_1

    .line 2037
    :pswitch_3
    const-wide/16 v0, 0x2710

    goto :goto_1

    .line 2038
    :pswitch_4
    const-wide/32 v0, 0x186a0

    goto :goto_1

    .line 2039
    :pswitch_5
    const-wide/32 v0, 0xf4240

    goto :goto_1

    .line 2040
    :pswitch_6
    const-wide/32 v0, 0x989680

    goto :goto_1

    .line 2041
    :pswitch_7
    const-wide/32 v0, 0x5f5e100

    goto :goto_1

    .line 2042
    :pswitch_8
    const-wide/32 v0, 0x3b9aca00

    goto :goto_1

    .line 2043
    :pswitch_9
    const-wide v0, 0x2540be400L

    goto :goto_1

    .line 2044
    :pswitch_a
    const-wide v0, 0x174876e800L

    goto :goto_1

    .line 2045
    :pswitch_b
    const-wide v0, 0xe8d4a51000L

    goto :goto_1

    .line 2046
    :pswitch_c
    const-wide v0, 0x9184e72a000L

    goto :goto_1

    .line 2047
    :pswitch_d
    const-wide v0, 0x5af3107a4000L

    goto :goto_1

    .line 2048
    :pswitch_e
    const-wide v0, 0x38d7ea4c68000L

    goto :goto_1

    .line 2049
    :pswitch_f
    const-wide v0, 0x2386f26fc10000L

    goto :goto_1

    .line 2050
    :pswitch_10
    const-wide v0, 0x16345785d8a0000L

    goto :goto_1

    .line 2051
    :pswitch_11
    const-wide v0, 0xde0b6b3a7640000L

    goto :goto_1

    .line 2057
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 2032
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1906
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->b:I

    return v0
.end method

.method public a(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, 0xa

    .line 2068
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->c:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->a()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeFieldType;->a(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    .line 2070
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->b:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2072
    const-wide/16 v4, 0x0

    .line 2073
    invoke-virtual {v1}, Lorg/joda/time/DateTimeField;->e()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DurationField;->d()J

    move-result-wide v2

    mul-long/2addr v2, v10

    .line 2074
    const/4 v0, 0x0

    .line 2075
    :goto_0
    if-ge v0, v6, :cond_0

    .line 2076
    add-int v7, p3, v0

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 2077
    const/16 v8, 0x30

    if-lt v7, v8, :cond_0

    const/16 v8, 0x39

    if-le v7, v8, :cond_1

    .line 2086
    :cond_0
    div-long v2, v4, v10

    .line 2088
    if-nez v0, :cond_2

    .line 2089
    xor-int/lit8 v0, p3, -0x1

    .line 2103
    :goto_1
    return v0

    .line 2080
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 2081
    div-long/2addr v2, v10

    .line 2082
    add-int/lit8 v7, v7, -0x30

    int-to-long v8, v7

    mul-long/2addr v8, v2

    add-long/2addr v4, v8

    .line 2084
    goto :goto_0

    .line 2092
    :cond_2
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 2093
    xor-int/lit8 v0, p3, -0x1

    goto :goto_1

    .line 2096
    :cond_3
    new-instance v4, Lorg/joda/time/field/PreciseDateTimeField;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->a()Lorg/joda/time/DateTimeFieldType;

    move-result-object v5

    sget-object v6, Lorg/joda/time/field/MillisDurationField;->a:Lorg/joda/time/DurationField;

    invoke-virtual {v1}, Lorg/joda/time/DateTimeField;->e()Lorg/joda/time/DurationField;

    move-result-object v1

    invoke-direct {v4, v5, v6, v1}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    .line 2101
    long-to-int v1, v2

    invoke-virtual {p1, v4, v1}, Lorg/joda/time/format/DateTimeParserBucket;->a(Lorg/joda/time/DateTimeField;I)V

    .line 2103
    add-int/2addr v0, p3

    goto :goto_1
.end method

.method public a(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1913
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v6, p4

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->a(Ljava/lang/StringBuffer;Ljava/io/Writer;JLorg/joda/time/Chronology;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1917
    :goto_0
    return-void

    .line 1914
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/io/Writer;JLorg/joda/time/Chronology;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1946
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->c:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, p5}, Lorg/joda/time/DateTimeFieldType;->a(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 1947
    iget v3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->a:I

    .line 1951
    :try_start_0
    invoke-virtual {v0, p3, p4}, Lorg/joda/time/DateTimeField;->j(J)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 1961
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    .line 1962
    if-eqz p1, :cond_2

    .line 1963
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    .line 1964
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1952
    :catch_0
    move-exception v0

    .line 1953
    if-eqz p1, :cond_1

    .line 1954
    invoke-static {p1, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(Ljava/lang/StringBuffer;I)V

    .line 2025
    :cond_0
    :goto_1
    return-void

    .line 1956
    :cond_1
    invoke-static {p2, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(Ljava/io/Writer;I)V

    goto :goto_1

    .line 1967
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    .line 1968
    const/16 v0, 0x30

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 1975
    :cond_3
    invoke-direct {p0, v4, v5, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->a(JLorg/joda/time/DateTimeField;)[J

    move-result-object v0

    .line 1976
    const/4 v1, 0x0

    aget-wide v4, v0, v1

    .line 1977
    const/4 v1, 0x1

    aget-wide v0, v0, v1

    long-to-int v1, v0

    .line 1979
    const-wide/32 v6, 0x7fffffff

    and-long/2addr v6, v4

    cmp-long v0, v6, v4

    if-nez v0, :cond_4

    .line 1980
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1985
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1987
    :goto_4
    if-ge v2, v1, :cond_6

    .line 1988
    if-eqz p1, :cond_5

    .line 1989
    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1993
    :goto_5
    add-int/lit8 v3, v3, -0x1

    .line 1994
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 1982
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1991
    :cond_5
    const/16 v4, 0x30

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_5

    .line 1997
    :cond_6
    if-ge v3, v1, :cond_a

    .line 1999
    :goto_6
    if-ge v3, v1, :cond_7

    .line 2000
    const/4 v4, 0x1

    if-le v2, v4, :cond_7

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_8

    .line 2006
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_a

    .line 2007
    if-eqz p1, :cond_9

    .line 2008
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_0

    .line 2009
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2008
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2003
    :cond_8
    add-int/lit8 v1, v1, -0x1

    .line 2004
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 2012
    :cond_9
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v2, :cond_0

    .line 2013
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    .line 2012
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2020
    :cond_a
    if-eqz p1, :cond_b

    .line 2021
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 2023
    :cond_b
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1928
    invoke-interface {p2}, Lorg/joda/time/ReadablePartial;->c()Lorg/joda/time/Chronology;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p2, v2, v3}, Lorg/joda/time/Chronology;->b(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v4

    .line 1930
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p2}, Lorg/joda/time/ReadablePartial;->c()Lorg/joda/time/Chronology;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->a(Ljava/lang/StringBuffer;Ljava/io/Writer;JLorg/joda/time/Chronology;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1934
    :goto_0
    return-void

    .line 1931
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 2064
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Fraction;->b:I

    return v0
.end method
