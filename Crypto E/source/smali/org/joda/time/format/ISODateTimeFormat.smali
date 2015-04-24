.class public Lorg/joda/time/format/ISODateTimeFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/format/ISODateTimeFormat$Constants;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static a()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    .line 508
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->c()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Collection;ZZ)Lorg/joda/time/format/DateTimeFormatter;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZ)",
            "Lorg/joda/time/format/DateTimeFormatter;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 152
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The fields must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 156
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    .line 158
    new-instance v0, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 160
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->r()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    invoke-static {v0, v1, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->a(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    move-result v4

    .line 177
    :goto_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    if-ge v6, v5, :cond_8

    move v5, v2

    :goto_1
    move v2, p1

    move v3, p2

    .line 180
    invoke-static/range {v0 .. v5}, Lorg/joda/time/format/ISODateTimeFormat;->a(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZZZ)V

    .line 183
    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->c()Z

    move-result v2

    if-nez v2, :cond_9

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid format for fields: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_2
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->n()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 163
    invoke-static {v0, v1, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->b(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    move-result v4

    goto :goto_0

    .line 164
    :cond_3
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->o()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 165
    invoke-static {v0, v1, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->c(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    move-result v4

    goto :goto_0

    .line 166
    :cond_4
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->m()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 167
    invoke-static {v0, v1, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->a(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    move-result v4

    goto :goto_0

    .line 168
    :cond_5
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->l()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 169
    invoke-static {v0, v1, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->c(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    move-result v4

    goto :goto_0

    .line 170
    :cond_6
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->s()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 171
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->a()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move v4, v2

    .line 172
    goto :goto_0

    .line 173
    :cond_7
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->p()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 174
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->b()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move v4, v2

    .line 175
    goto/16 :goto_0

    :cond_8
    move v5, v3

    .line 177
    goto/16 :goto_1

    .line 190
    :cond_9
    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_2
    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0

    .line 191
    :catch_0
    move-exception v1

    goto :goto_2

    :cond_a
    move v4, v3

    goto/16 :goto_0
.end method

.method private static a(Ljava/util/Collection;Z)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 457
    if-eqz p1, :cond_0

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid ISO8601 format for fields: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_0
    return-void
.end method

.method private static a(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;",
            "Ljava/util/Collection",
            "<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZZZ)V"
        }
    .end annotation

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x2d

    const/4 v5, 0x2

    .line 392
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->g()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 393
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->e()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 394
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->c()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 395
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->a()Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 396
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-eqz v3, :cond_4

    .line 400
    :cond_2
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid ISO8601 format for fields because Date was reduced precision: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_3
    if-eqz p5, :cond_4

    .line 404
    const/16 v4, 0x54

    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 407
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-nez v2, :cond_6

    :cond_5
    if-eqz v0, :cond_c

    if-nez v2, :cond_c

    if-nez v3, :cond_c

    .line 421
    :cond_6
    if-eqz v0, :cond_11

    .line 422
    invoke-virtual {p0, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->d(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 426
    :cond_7
    :goto_1
    if-eqz p2, :cond_8

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 427
    invoke-virtual {p0, v7}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 429
    :cond_8
    if-eqz v1, :cond_13

    .line 430
    invoke-virtual {p0, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->c(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 434
    :cond_9
    :goto_2
    if-eqz p2, :cond_a

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    .line 435
    invoke-virtual {p0, v7}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 437
    :cond_a
    if-eqz v2, :cond_15

    .line 438
    invoke-virtual {p0, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->b(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 442
    :cond_b
    :goto_3
    if-eqz v3, :cond_0

    .line 443
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 444
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 410
    :cond_c
    if-eqz p3, :cond_d

    if-eqz p5, :cond_d

    .line 411
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid ISO8601 format for fields because Time was truncated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_d
    if-nez v0, :cond_10

    if-eqz v1, :cond_e

    if-nez v2, :cond_6

    :cond_e
    if-eqz v1, :cond_f

    if-eqz v3, :cond_6

    :cond_f
    if-nez v2, :cond_6

    .line 416
    :cond_10
    if-eqz p3, :cond_6

    .line 417
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid ISO8601 format for fields: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_11
    if-nez v1, :cond_12

    if-nez v2, :cond_12

    if-eqz v3, :cond_7

    .line 424
    :cond_12
    invoke-virtual {p0, v6}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_1

    .line 431
    :cond_13
    if-nez v2, :cond_14

    if-eqz v3, :cond_9

    .line 432
    :cond_14
    invoke-virtual {p0, v6}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_2

    .line 439
    :cond_15
    if-eqz v3, :cond_b

    .line 440
    invoke-virtual {p0, v6}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_3
.end method

.method private static a(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 471
    if-eqz p1, :cond_0

    .line 472
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 474
    :cond_0
    return-void
.end method

.method private static a(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;",
            "Ljava/util/Collection",
            "<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x2

    const/16 v3, 0x2d

    .line 215
    const/4 v0, 0x0

    .line 216
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->s()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->a()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 218
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->r()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->m()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->a(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 222
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->l(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 223
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->a(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 224
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->i(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 227
    :cond_1
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 228
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->l(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    move v0, v1

    .line 229
    goto :goto_0

    .line 232
    :cond_2
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->m()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 234
    invoke-static {p1, p3}, Lorg/joda/time/format/ISODateTimeFormat;->a(Ljava/util/Collection;Z)V

    .line 235
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 236
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 237
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->i(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 240
    goto :goto_0

    .line 244
    :cond_4
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->r()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 245
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 246
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 247
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->l(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 248
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->m()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 250
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->a(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 251
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->i(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    :cond_5
    move v0, v1

    .line 254
    goto :goto_0

    .line 256
    :cond_6
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->m()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 259
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 260
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 261
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->i(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_0
.end method

.method public static b()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    .line 600
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->d()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;",
            "Ljava/util/Collection",
            "<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 283
    const/4 v0, 0x0

    .line 284
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->s()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->a()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 286
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->n()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->a(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 289
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->j(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 292
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 295
    :cond_2
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->n()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 298
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->j(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_0
.end method

.method public static c()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    .line 658
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->i()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;",
            "Ljava/util/Collection",
            "<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0x57

    const/16 v3, 0x2d

    const/4 v1, 0x1

    .line 320
    const/4 v0, 0x0

    .line 321
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->p()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 322
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->b()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 323
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->o()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 324
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->a(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 325
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 326
    invoke-virtual {p0, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->k(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 327
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->l()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->a(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 330
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->h(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 368
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 333
    goto :goto_0

    .line 336
    :cond_2
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->l()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 338
    invoke-static {p1, p3}, Lorg/joda/time/format/ISODateTimeFormat;->a(Ljava/util/Collection;Z)V

    .line 339
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->a(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 340
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 341
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 342
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->h(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 345
    goto :goto_0

    .line 349
    :cond_4
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->o()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 350
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 351
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 352
    invoke-virtual {p0, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->k(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 353
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->l()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 355
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->a(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 356
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->h(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    :cond_5
    move v0, v1

    .line 359
    goto :goto_0

    .line 361
    :cond_6
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->l()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 364
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 365
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->a(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 366
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->h(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_0
.end method

.method public static d()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    .line 671
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->e()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static e()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    .line 696
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->f()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static f()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    .line 721
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->g()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static g()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    .line 780
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->h()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static h()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    .line 981
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->i()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static i()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    .line 991
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->j()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static j()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .prologue
    .line 1029
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->k()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method
