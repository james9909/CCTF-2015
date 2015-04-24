.class public final Lorg/joda/time/field/UnsupportedDateTimeField;
.super Lorg/joda/time/DateTimeField;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/joda/time/DateTimeFieldType;",
            "Lorg/joda/time/field/UnsupportedDateTimeField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lorg/joda/time/DateTimeFieldType;

.field private final c:Lorg/joda/time/DurationField;


# direct methods
.method private constructor <init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/joda/time/DateTimeField;-><init>()V

    .line 83
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 86
    :cond_1
    iput-object p1, p0, Lorg/joda/time/field/UnsupportedDateTimeField;->b:Lorg/joda/time/DateTimeFieldType;

    .line 87
    iput-object p2, p0, Lorg/joda/time/field/UnsupportedDateTimeField;->c:Lorg/joda/time/DurationField;

    .line 88
    return-void
.end method

.method public static declared-synchronized a(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;)Lorg/joda/time/field/UnsupportedDateTimeField;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 55
    const-class v2, Lorg/joda/time/field/UnsupportedDateTimeField;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lorg/joda/time/field/UnsupportedDateTimeField;->a:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 56
    new-instance v0, Ljava/util/HashMap;

    const/4 v3, 0x7

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/joda/time/field/UnsupportedDateTimeField;->a:Ljava/util/HashMap;

    move-object v0, v1

    .line 64
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 65
    new-instance v0, Lorg/joda/time/field/UnsupportedDateTimeField;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/field/UnsupportedDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;)V

    .line 66
    sget-object v1, Lorg/joda/time/field/UnsupportedDateTimeField;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_1
    monitor-exit v2

    return-object v0

    .line 59
    :cond_2
    :try_start_1
    sget-object v0, Lorg/joda/time/field/UnsupportedDateTimeField;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/field/UnsupportedDateTimeField;

    .line 60
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/joda/time/field/UnsupportedDateTimeField;->e()Lorg/joda/time/DurationField;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eq v3, p1, :cond_0

    move-object v0, v1

    .line 61
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private j()Ljava/lang/UnsupportedOperationException;
    .locals 3

    .prologue
    .line 544
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/joda/time/field/UnsupportedDateTimeField;->b:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " field is unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(J)I
    .locals 1
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/util/Locale;)I
    .locals 1
    .parameter

    .prologue
    .line 460
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public a(Lorg/joda/time/ReadablePartial;)I
    .locals 1
    .parameter

    .prologue
    .line 406
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public a(Lorg/joda/time/ReadablePartial;[I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 415
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public a(JI)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->e()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DurationField;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JJ)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->e()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public a(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public a(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public a()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/joda/time/field/UnsupportedDateTimeField;->b:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public b(JJ)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->e()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->b(JJ)I

    move-result v0

    return v0
.end method

.method public b(Lorg/joda/time/ReadablePartial;)I
    .locals 1
    .parameter

    .prologue
    .line 442
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public b(Lorg/joda/time/ReadablePartial;[I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 451
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public b(JI)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 297
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/joda/time/field/UnsupportedDateTimeField;->b:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeFieldType;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public b(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public b(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public b(J)Z
    .locals 1
    .parameter

    .prologue
    .line 361
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public c(J)I
    .locals 1
    .parameter

    .prologue
    .line 397
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public c(JJ)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->e()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->c(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public d(J)I
    .locals 1
    .parameter

    .prologue
    .line 433
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public e(J)J
    .locals 1
    .parameter

    .prologue
    .line 478
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public e()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lorg/joda/time/field/UnsupportedDateTimeField;->c:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public f(J)J
    .locals 1
    .parameter

    .prologue
    .line 487
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public f()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method public g(J)J
    .locals 1
    .parameter

    .prologue
    .line 496
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public g()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 388
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public h(J)J
    .locals 1
    .parameter

    .prologue
    .line 505
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 424
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public i(J)J
    .locals 1
    .parameter

    .prologue
    .line 514
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public j(J)J
    .locals 1
    .parameter

    .prologue
    .line 523
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    const-string v0, "UnsupportedDateTimeField"

    return-object v0
.end method
