.class public Lorg/joda/time/field/ScaledDurationField;
.super Lorg/joda/time/field/DecoratedDurationField;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Lorg/joda/time/DurationField;Lorg/joda/time/DurationFieldType;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/joda/time/field/DecoratedDurationField;-><init>(Lorg/joda/time/DurationField;Lorg/joda/time/DurationFieldType;)V

    .line 48
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The scalar must not be 0 or 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput p3, p0, Lorg/joda/time/field/ScaledDurationField;->a:I

    .line 52
    return-void
.end method


# virtual methods
.method public a(JI)J
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 91
    int-to-long v0, p3

    iget v2, p0, Lorg/joda/time/field/ScaledDurationField;->a:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 92
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->f()Lorg/joda/time/DurationField;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/joda/time/DurationField;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JJ)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 96
    iget v0, p0, Lorg/joda/time/field/ScaledDurationField;->a:I

    invoke-static {p3, p4, v0}, Lorg/joda/time/field/FieldUtils;->a(JI)J

    move-result-wide v0

    .line 97
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->f()Lorg/joda/time/DurationField;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/joda/time/DurationField;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(JJ)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->f()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->b(JJ)I

    move-result v0

    iget v1, p0, Lorg/joda/time/field/ScaledDurationField;->a:I

    div-int/2addr v0, v1

    return v0
.end method

.method public c(JJ)J
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->f()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->c(JJ)J

    move-result-wide v0

    iget v2, p0, Lorg/joda/time/field/ScaledDurationField;->a:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public d()J
    .locals 4

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->f()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DurationField;->d()J

    move-result-wide v0

    iget v2, p0, Lorg/joda/time/field/ScaledDurationField;->a:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    if-ne p0, p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 132
    :cond_1
    instance-of v2, p1, Lorg/joda/time/field/ScaledDurationField;

    if-eqz v2, :cond_3

    .line 133
    check-cast p1, Lorg/joda/time/field/ScaledDurationField;

    .line 134
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->f()Lorg/joda/time/DurationField;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/field/ScaledDurationField;->f()Lorg/joda/time/DurationField;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->a()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/field/ScaledDurationField;->a()Lorg/joda/time/DurationFieldType;

    move-result-object v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/joda/time/field/ScaledDurationField;->a:I

    iget v3, p1, Lorg/joda/time/field/ScaledDurationField;->a:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 147
    iget v0, p0, Lorg/joda/time/field/ScaledDurationField;->a:I

    int-to-long v0, v0

    .line 148
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 149
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->a()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    invoke-virtual {p0}, Lorg/joda/time/field/ScaledDurationField;->f()Lorg/joda/time/DurationField;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    return v0
.end method
