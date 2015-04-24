.class public abstract Lorg/joda/time/field/BaseDurationField;
.super Lorg/joda/time/DurationField;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lorg/joda/time/DurationFieldType;


# direct methods
.method public constructor <init>(Lorg/joda/time/DurationFieldType;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/joda/time/DurationField;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lorg/joda/time/field/BaseDurationField;->a:Lorg/joda/time/DurationFieldType;

    .line 52
    return-void
.end method


# virtual methods
.method public a(Lorg/joda/time/DurationField;)I
    .locals 5
    .parameter

    .prologue
    .line 146
    invoke-virtual {p1}, Lorg/joda/time/DurationField;->d()J

    move-result-wide v0

    .line 147
    invoke-virtual {p0}, Lorg/joda/time/field/BaseDurationField;->d()J

    move-result-wide v2

    .line 149
    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    .line 152
    :cond_0
    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 153
    const/4 v0, -0x1

    goto :goto_0

    .line 155
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a()Lorg/joda/time/DurationFieldType;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/joda/time/field/BaseDurationField;->a:Lorg/joda/time/DurationFieldType;

    return-object v0
.end method

.method public b(JJ)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/field/BaseDurationField;->c(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->a(J)I

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    check-cast p1, Lorg/joda/time/DurationField;

    invoke-virtual {p0, p1}, Lorg/joda/time/field/BaseDurationField;->a(Lorg/joda/time/DurationField;)I

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/joda/time/field/BaseDurationField;->a:Lorg/joda/time/DurationFieldType;

    invoke-virtual {v0}, Lorg/joda/time/DurationFieldType;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DurationField["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/BaseDurationField;->e()Ljava/lang/String;

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
