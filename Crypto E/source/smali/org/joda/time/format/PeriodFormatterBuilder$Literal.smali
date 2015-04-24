.class Lorg/joda/time/format/PeriodFormatterBuilder$Literal;
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
    name = "Literal"
.end annotation


# static fields
.field static final a:Lorg/joda/time/format/PeriodFormatterBuilder$Literal;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1545
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->a:Lorg/joda/time/format/PeriodFormatterBuilder$Literal;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1549
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->b:Ljava/lang/String;

    .line 1550
    return-void
.end method


# virtual methods
.method public a(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1553
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1557
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1561
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$Literal;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1562
    return-void
.end method
