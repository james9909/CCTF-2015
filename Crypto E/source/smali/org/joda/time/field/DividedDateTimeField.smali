.class public Lorg/joda/time/field/DividedDateTimeField;
.super Lorg/joda/time/field/DecoratedDateTimeField;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:Lorg/joda/time/DurationField;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/joda/time/field/DecoratedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    .line 59
    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The divisor must be at least 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->e()Lorg/joda/time/DurationField;

    move-result-object v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/field/DividedDateTimeField;->b:Lorg/joda/time/DurationField;

    .line 71
    :goto_0
    iput p3, p0, Lorg/joda/time/field/DividedDateTimeField;->a:I

    .line 73
    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->h()I

    move-result v0

    .line 74
    if-ltz v0, :cond_2

    div-int/2addr v0, p3

    .line 76
    :goto_1
    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->i()I

    move-result v1

    .line 77
    if-ltz v1, :cond_3

    div-int/2addr v1, p3

    .line 79
    :goto_2
    iput v0, p0, Lorg/joda/time/field/DividedDateTimeField;->c:I

    .line 80
    iput v1, p0, Lorg/joda/time/field/DividedDateTimeField;->d:I

    .line 81
    return-void

    .line 67
    :cond_1
    new-instance v1, Lorg/joda/time/field/ScaledDurationField;

    invoke-virtual {p2}, Lorg/joda/time/DateTimeFieldType;->y()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    invoke-direct {v1, v0, v2, p3}, Lorg/joda/time/field/ScaledDurationField;-><init>(Lorg/joda/time/DurationField;Lorg/joda/time/DurationFieldType;I)V

    iput-object v1, p0, Lorg/joda/time/field/DividedDateTimeField;->b:Lorg/joda/time/DurationField;

    goto :goto_0

    .line 74
    :cond_2
    add-int/lit8 v0, v0, 0x1

    div-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 77
    :cond_3
    add-int/lit8 v1, v1, 0x1

    div-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method private a(I)I
    .locals 3
    .parameter

    .prologue
    .line 223
    if-ltz p1, :cond_0

    .line 224
    iget v0, p0, Lorg/joda/time/field/DividedDateTimeField;->a:I

    rem-int v0, p1, v0

    .line 226
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/joda/time/field/DividedDateTimeField;->a:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lorg/joda/time/field/DividedDateTimeField;->a:I

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(J)I
    .locals 3
    .parameter

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->a(J)I

    move-result v0

    .line 114
    if-ltz v0, :cond_0

    .line 115
    iget v1, p0, Lorg/joda/time/field/DividedDateTimeField;->a:I

    div-int/2addr v0, v1

    .line 117
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/joda/time/field/DividedDateTimeField;->a:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public a(JI)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/field/DividedDateTimeField;->a:I

    mul-int/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/DateTimeField;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JJ)J
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/field/DividedDateTimeField;->a:I

    int-to-long v2, v1

    mul-long/2addr v2, p3

    invoke-virtual {v0, p1, p2, v2, v3}, Lorg/joda/time/DateTimeField;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(JJ)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->b(JJ)I

    move-result v0

    iget v1, p0, Lorg/joda/time/field/DividedDateTimeField;->a:I

    div-int/2addr v0, v1

    return v0
.end method

.method public b(JI)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 174
    iget v0, p0, Lorg/joda/time/field/DividedDateTimeField;->c:I

    iget v1, p0, Lorg/joda/time/field/DividedDateTimeField;->d:I

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->a(Lorg/joda/time/DateTimeField;III)V

    .line 175
    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->a(J)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/joda/time/field/DividedDateTimeField;->a(I)I

    move-result v0

    .line 176
    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget v2, p0, Lorg/joda/time/field/DividedDateTimeField;->a:I

    mul-int/2addr v2, p3

    add-int/2addr v0, v2

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/DateTimeField;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(JJ)J
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->c(JJ)J

    move-result-wide v0

    iget v2, p0, Lorg/joda/time/field/DividedDateTimeField;->a:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public e(J)J
    .locals 5
    .parameter

    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 206
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/DividedDateTimeField;->a(J)I

    move-result v1

    iget v2, p0, Lorg/joda/time/field/DividedDateTimeField;->a:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/DateTimeField;->b(JI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/joda/time/field/DividedDateTimeField;->b:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lorg/joda/time/field/DividedDateTimeField;->c:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lorg/joda/time/field/DividedDateTimeField;->d:I

    return v0
.end method

.method public j(J)J
    .locals 3
    .parameter

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->j(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/field/DividedDateTimeField;->a(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/field/DividedDateTimeField;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method
