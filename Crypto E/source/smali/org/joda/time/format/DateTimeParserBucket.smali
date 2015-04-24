.class public Lorg/joda/time/format/DateTimeParserBucket;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/format/DateTimeParserBucket$SavedField;,
        Lorg/joda/time/format/DateTimeParserBucket$SavedState;
    }
.end annotation


# instance fields
.field private final a:Lorg/joda/time/Chronology;

.field private final b:J

.field private c:Lorg/joda/time/DateTimeZone;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/util/Locale;

.field private f:Ljava/lang/Integer;

.field private g:I

.field private h:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

.field private i:I

.field private j:Z

.field private k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLorg/joda/time/Chronology;Ljava/util/Locale;Ljava/lang/Integer;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->h:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 121
    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->a(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 122
    iput-wide p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->b:J

    .line 123
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->a()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    iput-object v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->c:Lorg/joda/time/DateTimeZone;

    .line 124
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->b()Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->a:Lorg/joda/time/Chronology;

    .line 125
    if-nez p4, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    :cond_0
    iput-object p4, p0, Lorg/joda/time/format/DateTimeParserBucket;->e:Ljava/util/Locale;

    .line 126
    iput-object p5, p0, Lorg/joda/time/format/DateTimeParserBucket;->f:Ljava/lang/Integer;

    .line 127
    iput p6, p0, Lorg/joda/time/format/DateTimeParserBucket;->g:I

    .line 128
    return-void
.end method

.method static a(Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 511
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/DurationField;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 512
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/joda/time/DurationField;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 513
    :cond_1
    const/4 v0, 0x0

    .line 520
    :goto_0
    return v0

    .line 515
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 517
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/joda/time/DurationField;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 518
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 520
    :cond_5
    invoke-virtual {p0, p1}, Lorg/joda/time/DurationField;->compareTo(Ljava/lang/Object;)I

    move-result v0

    neg-int v0, v0

    goto :goto_0
.end method

.method static synthetic a(Lorg/joda/time/format/DateTimeParserBucket;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->i:I

    return p1
.end method

.method static synthetic a(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->d:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic a(Lorg/joda/time/format/DateTimeParserBucket;)Lorg/joda/time/DateTimeZone;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->c:Lorg/joda/time/DateTimeZone;

    return-object v0
.end method

.method static synthetic a(Lorg/joda/time/format/DateTimeParserBucket;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->c:Lorg/joda/time/DateTimeZone;

    return-object p1
.end method

.method private a(Lorg/joda/time/format/DateTimeParserBucket$SavedField;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-object v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->h:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 263
    iget v2, p0, Lorg/joda/time/format/DateTimeParserBucket;->i:I

    .line 265
    array-length v0, v1

    if-eq v2, v0, :cond_0

    iget-boolean v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->j:Z

    if-eqz v0, :cond_2

    .line 267
    :cond_0
    array-length v0, v1

    if-ne v2, v0, :cond_1

    mul-int/lit8 v0, v2, 0x2

    :goto_0
    new-array v0, v0, [Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 269
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->h:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 271
    iput-boolean v3, p0, Lorg/joda/time/format/DateTimeParserBucket;->j:Z

    .line 274
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->k:Ljava/lang/Object;

    .line 275
    aput-object p1, v0, v2

    .line 276
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->i:I

    .line 277
    return-void

    .line 267
    :cond_1
    array-length v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static a([Lorg/joda/time/format/DateTimeParserBucket$SavedField;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 416
    const/16 v0, 0xa

    if-le p1, v0, :cond_2

    .line 417
    invoke-static {p0, v1, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 427
    :cond_0
    return-void

    .line 419
    :cond_1
    add-int/lit8 v1, v1, 0x1

    :cond_2
    if-ge v1, p1, :cond_0

    move v0, v1

    .line 420
    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->a(Lorg/joda/time/format/DateTimeParserBucket$SavedField;)I

    move-result v2

    if-lez v2, :cond_1

    .line 421
    aget-object v2, p0, v0

    .line 422
    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    aput-object v3, p0, v0

    .line 423
    add-int/lit8 v3, v0, -0x1

    aput-object v2, p0, v3

    .line 420
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Lorg/joda/time/format/DateTimeParserBucket;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-boolean p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->j:Z

    return p1
.end method

.method static synthetic a(Lorg/joda/time/format/DateTimeParserBucket;[Lorg/joda/time/format/DateTimeParserBucket$SavedField;)[Lorg/joda/time/format/DateTimeParserBucket$SavedField;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->h:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    return-object p1
.end method

.method static synthetic b(Lorg/joda/time/format/DateTimeParserBucket;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic c(Lorg/joda/time/format/DateTimeParserBucket;)[Lorg/joda/time/format/DateTimeParserBucket$SavedField;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->h:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    return-object v0
.end method

.method static synthetic d(Lorg/joda/time/format/DateTimeParserBucket;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->i:I

    return v0
.end method


# virtual methods
.method public a(ZLjava/lang/String;)J
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 345
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->h:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 346
    iget v6, p0, Lorg/joda/time/format/DateTimeParserBucket;->i:I

    .line 347
    iget-boolean v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->j:Z

    if-eqz v1, :cond_0

    .line 348
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->h:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    invoke-virtual {v0}, [Lorg/joda/time/format/DateTimeParserBucket$SavedField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    check-cast v0, [Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->h:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 349
    iput-boolean v4, p0, Lorg/joda/time/format/DateTimeParserBucket;->j:Z

    .line 351
    :cond_0
    invoke-static {v0, v6}, Lorg/joda/time/format/DateTimeParserBucket;->a([Lorg/joda/time/format/DateTimeParserBucket$SavedField;I)V

    .line 352
    if-lez v6, :cond_2

    .line 354
    invoke-static {}, Lorg/joda/time/DurationFieldType;->i()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/format/DateTimeParserBucket;->a:Lorg/joda/time/Chronology;

    invoke-virtual {v1, v2}, Lorg/joda/time/DurationFieldType;->a(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v1

    .line 355
    invoke-static {}, Lorg/joda/time/DurationFieldType;->f()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    iget-object v3, p0, Lorg/joda/time/format/DateTimeParserBucket;->a:Lorg/joda/time/Chronology;

    invoke-virtual {v2, v3}, Lorg/joda/time/DurationFieldType;->a(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v2

    .line 356
    aget-object v3, v0, v4

    iget-object v3, v3, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->a:Lorg/joda/time/DateTimeField;

    invoke-virtual {v3}, Lorg/joda/time/DateTimeField;->e()Lorg/joda/time/DurationField;

    move-result-object v3

    .line 357
    invoke-static {v3, v1}, Lorg/joda/time/format/DateTimeParserBucket;->a(Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-static {v3, v2}, Lorg/joda/time/format/DateTimeParserBucket;->a(Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 358
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->s()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->g:I

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/format/DateTimeParserBucket;->a(Lorg/joda/time/DateTimeFieldType;I)V

    .line 359
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/format/DateTimeParserBucket;->a(ZLjava/lang/String;)J

    move-result-wide v0

    .line 394
    :cond_1
    :goto_0
    return-wide v0

    .line 363
    :cond_2
    iget-wide v2, p0, Lorg/joda/time/format/DateTimeParserBucket;->b:J

    move v1, v4

    .line 365
    :goto_1
    if-ge v1, v6, :cond_3

    .line 366
    :try_start_0
    aget-object v5, v0, v1

    invoke-virtual {v5, v2, v3, p1}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->a(JZ)J

    move-result-wide v2

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 368
    :cond_3
    if-eqz p1, :cond_6

    move v5, v4

    .line 369
    :goto_2
    if-ge v5, v6, :cond_6

    .line 370
    aget-object v7, v0, v5

    add-int/lit8 v1, v6, -0x1

    if-ne v5, v1, :cond_4

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v7, v2, v3, v1}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->a(JZ)J
    :try_end_0
    .catch Lorg/joda/time/IllegalFieldValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 369
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    :cond_4
    move v1, v4

    .line 370
    goto :goto_3

    .line 373
    :catch_0
    move-exception v0

    .line 374
    if-eqz p2, :cond_5

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/IllegalFieldValueException;->a(Ljava/lang/String;)V

    .line 377
    :cond_5
    throw v0

    :cond_6
    move-wide v0, v2

    .line 380
    iget-object v2, p0, Lorg/joda/time/format/DateTimeParserBucket;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    .line 381
    iget-object v2, p0, Lorg/joda/time/format/DateTimeParserBucket;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0

    .line 382
    :cond_7
    iget-object v2, p0, Lorg/joda/time/format/DateTimeParserBucket;->c:Lorg/joda/time/DateTimeZone;

    if-eqz v2, :cond_1

    .line 383
    iget-object v2, p0, Lorg/joda/time/format/DateTimeParserBucket;->c:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/DateTimeZone;->c(J)I

    move-result v2

    .line 384
    int-to-long v4, v2

    sub-long/2addr v0, v4

    .line 385
    iget-object v3, p0, Lorg/joda/time/format/DateTimeParserBucket;->c:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v3, v0, v1}, Lorg/joda/time/DateTimeZone;->b(J)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal instant due to time zone offset transition ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->c:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    if-eqz p2, :cond_8

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    :cond_8
    new-instance v1, Lorg/joda/time/IllegalInstantException;

    invoke-direct {v1, v0}, Lorg/joda/time/IllegalInstantException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->a:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 1
    .parameter

    .prologue
    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->k:Ljava/lang/Object;

    .line 196
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->d:Ljava/lang/Integer;

    .line 197
    return-void
.end method

.method public a(Lorg/joda/time/DateTimeField;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 237
    new-instance v0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    invoke-direct {v0, p1, p2}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;-><init>(Lorg/joda/time/DateTimeField;I)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeParserBucket;->a(Lorg/joda/time/format/DateTimeParserBucket$SavedField;)V

    .line 238
    return-void
.end method

.method public a(Lorg/joda/time/DateTimeFieldType;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 247
    new-instance v0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    iget-object v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->a:Lorg/joda/time/Chronology;

    invoke-virtual {p1, v1}, Lorg/joda/time/DateTimeFieldType;->a(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;-><init>(Lorg/joda/time/DateTimeField;I)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeParserBucket;->a(Lorg/joda/time/format/DateTimeParserBucket$SavedField;)V

    .line 248
    return-void
.end method

.method public a(Lorg/joda/time/DateTimeFieldType;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    new-instance v0, Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    iget-object v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->a:Lorg/joda/time/Chronology;

    invoke-virtual {p1, v1}, Lorg/joda/time/DateTimeFieldType;->a(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;-><init>(Lorg/joda/time/DateTimeField;Ljava/lang/String;Ljava/util/Locale;)V

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeParserBucket;->a(Lorg/joda/time/format/DateTimeParserBucket$SavedField;)V

    .line 259
    return-void
.end method

.method public a(Lorg/joda/time/DateTimeZone;)V
    .locals 1
    .parameter

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->k:Ljava/lang/Object;

    .line 161
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->c:Lorg/joda/time/DateTimeZone;

    .line 162
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 302
    instance-of v0, p1, Lorg/joda/time/format/DateTimeParserBucket$SavedState;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 303
    check-cast v0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->a(Lorg/joda/time/format/DateTimeParserBucket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->k:Ljava/lang/Object;

    .line 305
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->e:Ljava/util/Locale;

    return-object v0
.end method

.method public c()Lorg/joda/time/DateTimeZone;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->c:Lorg/joda/time/DateTimeZone;

    return-object v0
.end method

.method public d()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public e()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->k:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;

    invoke-direct {v0, p0}, Lorg/joda/time/format/DateTimeParserBucket$SavedState;-><init>(Lorg/joda/time/format/DateTimeParserBucket;)V

    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->k:Ljava/lang/Object;

    .line 290
    :cond_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->k:Ljava/lang/Object;

    return-object v0
.end method
