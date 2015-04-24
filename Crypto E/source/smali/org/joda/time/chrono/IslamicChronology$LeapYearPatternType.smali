.class public Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/IslamicChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeapYearPatternType"
.end annotation


# instance fields
.field final a:B

.field final b:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    int-to-byte v0, p1

    iput-byte v0, p0, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;->a:B

    .line 531
    iput p2, p0, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;->b:I

    .line 532
    return-void
.end method


# virtual methods
.method a(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 540
    rem-int/lit8 v1, p1, 0x1e

    shl-int v1, v0, v1

    .line 541
    iget v2, p0, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;->b:I

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 565
    instance-of v1, p1, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    if-eqz v1, :cond_0

    .line 566
    iget-byte v1, p0, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;->a:B

    check-cast p1, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    iget-byte v2, p1, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;->a:B

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 568
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 573
    iget-byte v0, p0, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;->a:B

    return v0
.end method
