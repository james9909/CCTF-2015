.class public final Lorg/joda/time/field/SkipDateTimeField;
.super Lorg/joda/time/field/DelegatedDateTimeField;
.source "SourceFile"


# instance fields
.field private final a:Lorg/joda/time/Chronology;

.field private final b:I

.field private transient c:I


# direct methods
.method public constructor <init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/field/SkipDateTimeField;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p2}, Lorg/joda/time/field/DelegatedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;)V

    .line 66
    iput-object p1, p0, Lorg/joda/time/field/SkipDateTimeField;->a:Lorg/joda/time/Chronology;

    .line 67
    invoke-super {p0}, Lorg/joda/time/field/DelegatedDateTimeField;->h()I

    move-result v0

    .line 68
    if-ge v0, p3, :cond_0

    .line 69
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/joda/time/field/SkipDateTimeField;->c:I

    .line 75
    :goto_0
    iput p3, p0, Lorg/joda/time/field/SkipDateTimeField;->b:I

    .line 76
    return-void

    .line 70
    :cond_0
    if-ne v0, p3, :cond_1

    .line 71
    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lorg/joda/time/field/SkipDateTimeField;->c:I

    goto :goto_0

    .line 73
    :cond_1
    iput v0, p0, Lorg/joda/time/field/SkipDateTimeField;->c:I

    goto :goto_0
.end method


# virtual methods
.method public a(J)I
    .locals 3
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lorg/joda/time/field/DelegatedDateTimeField;->a(J)I

    move-result v0

    .line 81
    iget v1, p0, Lorg/joda/time/field/SkipDateTimeField;->b:I

    if-gt v0, v1, :cond_0

    .line 82
    add-int/lit8 v0, v0, -0x1

    .line 84
    :cond_0
    return v0
.end method

.method public b(JI)J
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 88
    iget v0, p0, Lorg/joda/time/field/SkipDateTimeField;->c:I

    invoke-virtual {p0}, Lorg/joda/time/field/SkipDateTimeField;->i()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->a(Lorg/joda/time/DateTimeField;III)V

    .line 89
    iget v0, p0, Lorg/joda/time/field/SkipDateTimeField;->b:I

    if-gt p3, v0, :cond_1

    .line 90
    iget v0, p0, Lorg/joda/time/field/SkipDateTimeField;->b:I

    if-ne p3, v0, :cond_0

    .line 91
    new-instance v0, Lorg/joda/time/IllegalFieldValueException;

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->s()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 94
    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 96
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/joda/time/field/DelegatedDateTimeField;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/joda/time/field/SkipDateTimeField;->c:I

    return v0
.end method
