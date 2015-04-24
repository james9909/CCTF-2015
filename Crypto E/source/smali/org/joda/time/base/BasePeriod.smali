.class public abstract Lorg/joda/time/base/BasePeriod;
.super Lorg/joda/time/base/AbstractPeriod;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/joda/time/ReadablePeriod;


# static fields
.field private static final a:Lorg/joda/time/ReadablePeriod;


# instance fields
.field private final b:Lorg/joda/time/PeriodType;

.field private final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lorg/joda/time/base/BasePeriod$1;

    invoke-direct {v0}, Lorg/joda/time/base/BasePeriod$1;-><init>()V

    sput-object v0, Lorg/joda/time/base/BasePeriod;->a:Lorg/joda/time/ReadablePeriod;

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 255
    invoke-virtual {p0, p3}, Lorg/joda/time/base/BasePeriod;->a(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object v0

    .line 256
    invoke-static {p4}, Lorg/joda/time/DateTimeUtils;->a(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 257
    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->b:Lorg/joda/time/PeriodType;

    .line 258
    invoke-virtual {v1, p0, p1, p2}, Lorg/joda/time/Chronology;->a(Lorg/joda/time/ReadablePeriod;J)[I

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->c:[I

    .line 259
    return-void
.end method


# virtual methods
.method protected a(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;
    .locals 1
    .parameter

    .prologue
    .line 308
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->a(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/joda/time/PeriodType;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lorg/joda/time/base/BasePeriod;->b:Lorg/joda/time/PeriodType;

    return-object v0
.end method

.method public c(I)I
    .locals 1
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lorg/joda/time/base/BasePeriod;->c:[I

    aget v0, v0, p1

    return v0
.end method
