.class public abstract Lorg/joda/time/field/DecoratedDateTimeField;
.super Lorg/joda/time/field/BaseDateTimeField;
.source "SourceFile"


# instance fields
.field private final a:Lorg/joda/time/DateTimeField;


# direct methods
.method public constructor <init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p2}, Lorg/joda/time/field/BaseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;)V

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field must be supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    iput-object p1, p0, Lorg/joda/time/field/DecoratedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    .line 63
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->a(J)I

    move-result v0

    return v0
.end method

.method public b(JI)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->d()Z

    move-result v0

    return v0
.end method

.method public e(J)J
    .locals 3
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->e()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public f()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->f()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->h()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->i()I

    move-result v0

    return v0
.end method

.method public final j()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/joda/time/field/DecoratedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    return-object v0
.end method
