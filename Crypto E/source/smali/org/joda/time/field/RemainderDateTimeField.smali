.class public Lorg/joda/time/field/RemainderDateTimeField;
.super Lorg/joda/time/field/DecoratedDateTimeField;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:Lorg/joda/time/DurationField;


# direct methods
.method public constructor <init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/joda/time/field/DecoratedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    .line 55
    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The divisor must be at least 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->e()Lorg/joda/time/DurationField;

    move-result-object v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/field/RemainderDateTimeField;->b:Lorg/joda/time/DurationField;

    .line 67
    :goto_0
    iput p3, p0, Lorg/joda/time/field/RemainderDateTimeField;->a:I

    .line 68
    return-void

    .line 63
    :cond_1
    new-instance v1, Lorg/joda/time/field/ScaledDurationField;

    invoke-virtual {p2}, Lorg/joda/time/DateTimeFieldType;->z()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    invoke-direct {v1, v0, v2, p3}, Lorg/joda/time/field/ScaledDurationField;-><init>(Lorg/joda/time/DurationField;Lorg/joda/time/DurationFieldType;I)V

    iput-object v1, p0, Lorg/joda/time/field/RemainderDateTimeField;->b:Lorg/joda/time/DurationField;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/joda/time/field/DividedDateTimeField;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-virtual {p1}, Lorg/joda/time/field/DividedDateTimeField;->a()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/field/RemainderDateTimeField;-><init>(Lorg/joda/time/field/DividedDateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/field/DividedDateTimeField;Lorg/joda/time/DateTimeFieldType;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-virtual {p1}, Lorg/joda/time/field/DividedDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/field/DecoratedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    .line 89
    iget v0, p1, Lorg/joda/time/field/DividedDateTimeField;->a:I

    iput v0, p0, Lorg/joda/time/field/RemainderDateTimeField;->a:I

    .line 90
    iget-object v0, p1, Lorg/joda/time/field/DividedDateTimeField;->b:Lorg/joda/time/DurationField;

    iput-object v0, p0, Lorg/joda/time/field/RemainderDateTimeField;->b:Lorg/joda/time/DurationField;

    .line 91
    return-void
.end method

.method private a(I)I
    .locals 2
    .parameter

    .prologue
    .line 196
    if-ltz p1, :cond_0

    .line 197
    iget v0, p0, Lorg/joda/time/field/RemainderDateTimeField;->a:I

    div-int v0, p1, v0

    .line 199
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/joda/time/field/RemainderDateTimeField;->a:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public a(J)I
    .locals 3
    .parameter

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/joda/time/field/RemainderDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->a(J)I

    move-result v0

    .line 102
    if-ltz v0, :cond_0

    .line 103
    iget v1, p0, Lorg/joda/time/field/RemainderDateTimeField;->a:I

    rem-int/2addr v0, v1

    .line 105
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lorg/joda/time/field/RemainderDateTimeField;->a:I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/joda/time/field/RemainderDateTimeField;->a:I

    rem-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public b(JI)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 131
    const/4 v0, 0x0

    iget v1, p0, Lorg/joda/time/field/RemainderDateTimeField;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->a(Lorg/joda/time/DateTimeField;III)V

    .line 132
    invoke-virtual {p0}, Lorg/joda/time/field/RemainderDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->a(J)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/joda/time/field/RemainderDateTimeField;->a(I)I

    move-result v0

    .line 133
    invoke-virtual {p0}, Lorg/joda/time/field/RemainderDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget v2, p0, Lorg/joda/time/field/RemainderDateTimeField;->a:I

    mul-int/2addr v0, v2

    add-int/2addr v0, p3

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/DateTimeField;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(J)J
    .locals 3
    .parameter

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/joda/time/field/RemainderDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f(J)J
    .locals 3
    .parameter

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/joda/time/field/RemainderDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/joda/time/field/RemainderDateTimeField;->b:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public g(J)J
    .locals 3
    .parameter

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/joda/time/field/RemainderDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->g(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public h(J)J
    .locals 3
    .parameter

    .prologue
    .line 175
    invoke-virtual {p0}, Lorg/joda/time/field/RemainderDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->h(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lorg/joda/time/field/RemainderDateTimeField;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public i(J)J
    .locals 3
    .parameter

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/joda/time/field/RemainderDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->i(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public j(J)J
    .locals 3
    .parameter

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/joda/time/field/RemainderDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->j(J)J

    move-result-wide v0

    return-wide v0
.end method
