.class Lorg/joda/time/chrono/LimitChronology$LimitDurationField;
.super Lorg/joda/time/field/DecoratedDurationField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/LimitChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LimitDurationField"
.end annotation


# instance fields
.field final synthetic a:Lorg/joda/time/chrono/LimitChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/LimitChronology;Lorg/joda/time/DurationField;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->a:Lorg/joda/time/chrono/LimitChronology;

    .line 392
    invoke-virtual {p2}, Lorg/joda/time/DurationField;->a()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/joda/time/field/DecoratedDurationField;-><init>(Lorg/joda/time/DurationField;Lorg/joda/time/DurationFieldType;)V

    .line 393
    return-void
.end method


# virtual methods
.method public a(JI)J
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->a(JLjava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->f()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DurationField;->a(JI)J

    move-result-wide v0

    .line 418
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->a(JLjava/lang/String;)V

    .line 419
    return-wide v0
.end method

.method public a(JJ)J
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 423
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->a:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->a(JLjava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->f()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->a(JJ)J

    move-result-wide v0

    .line 425
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->a(JLjava/lang/String;)V

    .line 426
    return-wide v0
.end method

.method public b(JJ)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->a(JLjava/lang/String;)V

    .line 431
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->a(JLjava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->f()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->b(JJ)I

    move-result v0

    return v0
.end method

.method public c(JJ)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 436
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->a(JLjava/lang/String;)V

    .line 437
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->a:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->a(JLjava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDurationField;->f()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->c(JJ)J

    move-result-wide v0

    return-wide v0
.end method
