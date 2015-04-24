.class public Lorg/joda/time/format/PeriodFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/joda/time/format/PeriodPrinter;

.field private final b:Lorg/joda/time/format/PeriodParser;

.field private final c:Ljava/util/Locale;

.field private final d:Lorg/joda/time/PeriodType;


# direct methods
.method public constructor <init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatter;->a:Lorg/joda/time/format/PeriodPrinter;

    .line 89
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatter;->b:Lorg/joda/time/format/PeriodParser;

    .line 90
    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->c:Ljava/util/Locale;

    .line 91
    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->d:Lorg/joda/time/PeriodType;

    .line 92
    return-void
.end method

.method private constructor <init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;Ljava/util/Locale;Lorg/joda/time/PeriodType;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatter;->a:Lorg/joda/time/format/PeriodPrinter;

    .line 107
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatter;->b:Lorg/joda/time/format/PeriodParser;

    .line 108
    iput-object p3, p0, Lorg/joda/time/format/PeriodFormatter;->c:Ljava/util/Locale;

    .line 109
    iput-object p4, p0, Lorg/joda/time/format/PeriodFormatter;->d:Lorg/joda/time/PeriodType;

    .line 110
    return-void
.end method

.method private b(Lorg/joda/time/ReadablePeriod;)V
    .locals 2
    .parameter

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Period must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->a:Lorg/joda/time/format/PeriodPrinter;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Printing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/joda/time/ReadablePeriod;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 236
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatter;->c()V

    .line 237
    invoke-direct {p0, p1}, Lorg/joda/time/format/PeriodFormatter;->b(Lorg/joda/time/ReadablePeriod;)V

    .line 239
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatter;->a()Lorg/joda/time/format/PeriodPrinter;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatter;->c:Ljava/util/Locale;

    invoke-interface {v0, p1, v2}, Lorg/joda/time/format/PeriodPrinter;->a(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 241
    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatter;->c:Ljava/util/Locale;

    invoke-interface {v0, v1, p1, v2}, Lorg/joda/time/format/PeriodPrinter;->a(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V

    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;
    .locals 4
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->d:Lorg/joda/time/PeriodType;

    if-ne p1, v0, :cond_0

    .line 190
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/format/PeriodFormatter;

    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatter;->a:Lorg/joda/time/format/PeriodPrinter;

    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatter;->b:Lorg/joda/time/format/PeriodParser;

    iget-object v3, p0, Lorg/joda/time/format/PeriodFormatter;->c:Ljava/util/Locale;

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/joda/time/format/PeriodFormatter;-><init>(Lorg/joda/time/format/PeriodPrinter;Lorg/joda/time/format/PeriodParser;Ljava/util/Locale;Lorg/joda/time/PeriodType;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public a()Lorg/joda/time/format/PeriodPrinter;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->a:Lorg/joda/time/format/PeriodPrinter;

    return-object v0
.end method

.method public b()Lorg/joda/time/format/PeriodParser;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatter;->b:Lorg/joda/time/format/PeriodParser;

    return-object v0
.end method
