.class public Lorg/joda/time/field/DelegatedDateTimeField;
.super Lorg/joda/time/DateTimeField;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lorg/joda/time/DateTimeField;

.field private final b:Lorg/joda/time/DateTimeFieldType;


# direct methods
.method public constructor <init>(Lorg/joda/time/DateTimeField;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/field/DelegatedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/joda/time/DateTimeField;-><init>()V

    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    .line 67
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->a()Lorg/joda/time/DateTimeFieldType;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lorg/joda/time/field/DelegatedDateTimeField;->b:Lorg/joda/time/DateTimeFieldType;

    .line 68
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->a(J)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/Locale;)I
    .locals 1
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->a(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public a(Lorg/joda/time/ReadablePartial;)I
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->a(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    return v0
.end method

.method public a(Lorg/joda/time/ReadablePartial;[I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->a(Lorg/joda/time/ReadablePartial;[I)I

    move-result v0

    return v0
.end method

.method public a(JI)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JJ)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->a(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->a(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->a(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->a(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->b:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public b(JJ)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->b(JJ)I

    move-result v0

    return v0
.end method

.method public b(Lorg/joda/time/ReadablePartial;)I
    .locals 1
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->b(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    return v0
.end method

.method public b(Lorg/joda/time/ReadablePartial;[I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->b(Lorg/joda/time/ReadablePartial;[I)I

    move-result v0

    return v0
.end method

.method public b(JI)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->b:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeFieldType;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->b(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->b(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->b(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Z
    .locals 1
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->b(J)Z

    move-result v0

    return v0
.end method

.method public c(J)I
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->c(J)I

    move-result v0

    return v0
.end method

.method public c(JJ)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->c(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->c()Z

    move-result v0

    return v0
.end method

.method public d(J)I
    .locals 1
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->d(J)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->d()Z

    move-result v0

    return v0
.end method

.method public e(J)J
    .locals 3
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->e()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public f(J)J
    .locals 3
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->f()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public g(J)J
    .locals 3
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->g(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->g()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->h()I

    move-result v0

    return v0
.end method

.method public h(J)J
    .locals 3
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->h(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->i()I

    move-result v0

    return v0
.end method

.method public i(J)J
    .locals 3
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->i(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public j(J)J
    .locals 3
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->j(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final j()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDateTimeField;->a:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DateTimeField["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/DelegatedDateTimeField;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
