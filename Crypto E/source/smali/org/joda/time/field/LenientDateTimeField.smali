.class public Lorg/joda/time/field/LenientDateTimeField;
.super Lorg/joda/time/field/DelegatedDateTimeField;
.source "SourceFile"


# instance fields
.field private final a:Lorg/joda/time/Chronology;


# direct methods
.method protected constructor <init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/Chronology;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/joda/time/field/DelegatedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;)V

    .line 58
    iput-object p2, p0, Lorg/joda/time/field/LenientDateTimeField;->a:Lorg/joda/time/Chronology;

    .line 59
    return-void
.end method

.method public static a(Lorg/joda/time/DateTimeField;Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    if-nez p0, :cond_1

    .line 45
    const/4 p0, 0x0

    .line 53
    :cond_0
    :goto_0
    return-object p0

    .line 47
    :cond_1
    instance-of v0, p0, Lorg/joda/time/field/StrictDateTimeField;

    if-eqz v0, :cond_2

    .line 48
    check-cast p0, Lorg/joda/time/field/StrictDateTimeField;

    invoke-virtual {p0}, Lorg/joda/time/field/StrictDateTimeField;->j()Lorg/joda/time/DateTimeField;

    move-result-object p0

    .line 50
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/DateTimeField;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lorg/joda/time/field/LenientDateTimeField;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/field/LenientDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/Chronology;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public b(JI)J
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lorg/joda/time/field/LenientDateTimeField;->a:Lorg/joda/time/Chronology;

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->a()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->d(J)J

    move-result-wide v0

    .line 73
    int-to-long v2, p3

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/LenientDateTimeField;->a(J)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/joda/time/field/FieldUtils;->b(JJ)J

    move-result-wide v2

    .line 74
    invoke-virtual {p0}, Lorg/joda/time/field/LenientDateTimeField;->a()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    iget-object v5, p0, Lorg/joda/time/field/LenientDateTimeField;->a:Lorg/joda/time/Chronology;

    invoke-virtual {v5}, Lorg/joda/time/Chronology;->b()Lorg/joda/time/Chronology;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/joda/time/DateTimeFieldType;->a(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/joda/time/DateTimeField;->a(JJ)J

    move-result-wide v1

    .line 75
    iget-object v0, p0, Lorg/joda/time/field/LenientDateTimeField;->a:Lorg/joda/time/Chronology;

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->a()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->a(JZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method
