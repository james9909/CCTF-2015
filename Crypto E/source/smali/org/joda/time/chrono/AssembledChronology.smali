.class public abstract Lorg/joda/time/chrono/AssembledChronology;
.super Lorg/joda/time/chrono/BaseChronology;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/chrono/AssembledChronology$Fields;
    }
.end annotation


# instance fields
.field private transient A:Lorg/joda/time/DateTimeField;

.field private transient B:Lorg/joda/time/DateTimeField;

.field private transient C:Lorg/joda/time/DateTimeField;

.field private transient D:Lorg/joda/time/DateTimeField;

.field private transient E:Lorg/joda/time/DateTimeField;

.field private transient F:Lorg/joda/time/DateTimeField;

.field private transient G:Lorg/joda/time/DateTimeField;

.field private transient H:Lorg/joda/time/DateTimeField;

.field private transient I:Lorg/joda/time/DateTimeField;

.field private transient J:Lorg/joda/time/DateTimeField;

.field private transient K:Lorg/joda/time/DateTimeField;

.field private transient L:I

.field private final a:Lorg/joda/time/Chronology;

.field private final b:Ljava/lang/Object;

.field private transient c:Lorg/joda/time/DurationField;

.field private transient d:Lorg/joda/time/DurationField;

.field private transient e:Lorg/joda/time/DurationField;

.field private transient f:Lorg/joda/time/DurationField;

.field private transient g:Lorg/joda/time/DurationField;

.field private transient h:Lorg/joda/time/DurationField;

.field private transient i:Lorg/joda/time/DurationField;

.field private transient j:Lorg/joda/time/DurationField;

.field private transient k:Lorg/joda/time/DurationField;

.field private transient l:Lorg/joda/time/DurationField;

.field private transient m:Lorg/joda/time/DurationField;

.field private transient n:Lorg/joda/time/DurationField;

.field private transient o:Lorg/joda/time/DateTimeField;

.field private transient p:Lorg/joda/time/DateTimeField;

.field private transient q:Lorg/joda/time/DateTimeField;

.field private transient r:Lorg/joda/time/DateTimeField;

.field private transient s:Lorg/joda/time/DateTimeField;

.field private transient t:Lorg/joda/time/DateTimeField;

.field private transient u:Lorg/joda/time/DateTimeField;

.field private transient v:Lorg/joda/time/DateTimeField;

.field private transient w:Lorg/joda/time/DateTimeField;

.field private transient x:Lorg/joda/time/DateTimeField;

.field private transient y:Lorg/joda/time/DateTimeField;

.field private transient z:Lorg/joda/time/DateTimeField;


# direct methods
.method protected constructor <init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/joda/time/chrono/BaseChronology;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/joda/time/chrono/AssembledChronology;->a:Lorg/joda/time/Chronology;

    .line 101
    iput-object p2, p0, Lorg/joda/time/chrono/AssembledChronology;->b:Ljava/lang/Object;

    .line 102
    invoke-direct {p0}, Lorg/joda/time/chrono/AssembledChronology;->N()V

    .line 103
    return-void
.end method

.method private N()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 319
    new-instance v2, Lorg/joda/time/chrono/AssembledChronology$Fields;

    invoke-direct {v2}, Lorg/joda/time/chrono/AssembledChronology$Fields;-><init>()V

    .line 320
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->a:Lorg/joda/time/Chronology;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->a:Lorg/joda/time/Chronology;

    invoke-virtual {v2, v0}, Lorg/joda/time/chrono/AssembledChronology$Fields;->a(Lorg/joda/time/Chronology;)V

    .line 323
    :cond_0
    invoke-virtual {p0, v2}, Lorg/joda/time/chrono/AssembledChronology;->a(Lorg/joda/time/chrono/AssembledChronology$Fields;)V

    .line 327
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->a:Lorg/joda/time/DurationField;

    if-eqz v0, :cond_1

    :goto_0
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->c:Lorg/joda/time/DurationField;

    .line 328
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->b:Lorg/joda/time/DurationField;

    if-eqz v0, :cond_2

    :goto_1
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->d:Lorg/joda/time/DurationField;

    .line 329
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->c:Lorg/joda/time/DurationField;

    if-eqz v0, :cond_3

    :goto_2
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->e:Lorg/joda/time/DurationField;

    .line 330
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->d:Lorg/joda/time/DurationField;

    if-eqz v0, :cond_4

    :goto_3
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->f:Lorg/joda/time/DurationField;

    .line 331
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->e:Lorg/joda/time/DurationField;

    if-eqz v0, :cond_5

    :goto_4
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->g:Lorg/joda/time/DurationField;

    .line 332
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->f:Lorg/joda/time/DurationField;

    if-eqz v0, :cond_6

    :goto_5
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->h:Lorg/joda/time/DurationField;

    .line 333
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->g:Lorg/joda/time/DurationField;

    if-eqz v0, :cond_7

    :goto_6
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->i:Lorg/joda/time/DurationField;

    .line 334
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->h:Lorg/joda/time/DurationField;

    if-eqz v0, :cond_8

    :goto_7
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->j:Lorg/joda/time/DurationField;

    .line 335
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->i:Lorg/joda/time/DurationField;

    if-eqz v0, :cond_9

    :goto_8
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->k:Lorg/joda/time/DurationField;

    .line 336
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->j:Lorg/joda/time/DurationField;

    if-eqz v0, :cond_a

    :goto_9
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->l:Lorg/joda/time/DurationField;

    .line 337
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->k:Lorg/joda/time/DurationField;

    if-eqz v0, :cond_b

    :goto_a
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->m:Lorg/joda/time/DurationField;

    .line 338
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->l:Lorg/joda/time/DurationField;

    if-eqz v0, :cond_c

    :goto_b
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->n:Lorg/joda/time/DurationField;

    .line 343
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->m:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_d

    :goto_c
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->o:Lorg/joda/time/DateTimeField;

    .line 344
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->n:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_e

    :goto_d
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->p:Lorg/joda/time/DateTimeField;

    .line 345
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->o:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_f

    :goto_e
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->q:Lorg/joda/time/DateTimeField;

    .line 346
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->p:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_10

    :goto_f
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->r:Lorg/joda/time/DateTimeField;

    .line 347
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->q:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_11

    :goto_10
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->s:Lorg/joda/time/DateTimeField;

    .line 348
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->r:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_12

    :goto_11
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->t:Lorg/joda/time/DateTimeField;

    .line 349
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->s:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_13

    :goto_12
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->u:Lorg/joda/time/DateTimeField;

    .line 350
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->t:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_14

    :goto_13
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->v:Lorg/joda/time/DateTimeField;

    .line 351
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->u:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_15

    :goto_14
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->w:Lorg/joda/time/DateTimeField;

    .line 352
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->v:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_16

    :goto_15
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->x:Lorg/joda/time/DateTimeField;

    .line 353
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->w:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_17

    :goto_16
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->y:Lorg/joda/time/DateTimeField;

    .line 354
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->x:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_18

    :goto_17
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->z:Lorg/joda/time/DateTimeField;

    .line 355
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->y:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_19

    :goto_18
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->A:Lorg/joda/time/DateTimeField;

    .line 356
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->z:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_1a

    :goto_19
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->B:Lorg/joda/time/DateTimeField;

    .line 357
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->A:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_1b

    :goto_1a
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->C:Lorg/joda/time/DateTimeField;

    .line 358
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->B:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_1c

    :goto_1b
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->D:Lorg/joda/time/DateTimeField;

    .line 359
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->C:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_1d

    :goto_1c
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->E:Lorg/joda/time/DateTimeField;

    .line 360
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->D:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_1e

    :goto_1d
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->F:Lorg/joda/time/DateTimeField;

    .line 361
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->E:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_1f

    :goto_1e
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->G:Lorg/joda/time/DateTimeField;

    .line 362
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->F:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_20

    :goto_1f
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->H:Lorg/joda/time/DateTimeField;

    .line 363
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->G:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_21

    :goto_20
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->I:Lorg/joda/time/DateTimeField;

    .line 364
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->H:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_22

    :goto_21
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->J:Lorg/joda/time/DateTimeField;

    .line 365
    iget-object v0, v2, Lorg/joda/time/chrono/AssembledChronology$Fields;->I:Lorg/joda/time/DateTimeField;

    if-eqz v0, :cond_23

    :goto_22
    iput-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->K:Lorg/joda/time/DateTimeField;

    .line 369
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->a:Lorg/joda/time/Chronology;

    if-nez v0, :cond_24

    .line 385
    :goto_23
    iput v1, p0, Lorg/joda/time/chrono/AssembledChronology;->L:I

    .line 386
    return-void

    .line 327
    :cond_1
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->c()Lorg/joda/time/DurationField;

    move-result-object v0

    goto/16 :goto_0

    .line 328
    :cond_2
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->f()Lorg/joda/time/DurationField;

    move-result-object v0

    goto/16 :goto_1

    .line 329
    :cond_3
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->i()Lorg/joda/time/DurationField;

    move-result-object v0

    goto/16 :goto_2

    .line 330
    :cond_4
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->l()Lorg/joda/time/DurationField;

    move-result-object v0

    goto/16 :goto_3

    .line 331
    :cond_5
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->o()Lorg/joda/time/DurationField;

    move-result-object v0

    goto/16 :goto_4

    .line 332
    :cond_6
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->s()Lorg/joda/time/DurationField;

    move-result-object v0

    goto/16 :goto_5

    .line 333
    :cond_7
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->w()Lorg/joda/time/DurationField;

    move-result-object v0

    goto/16 :goto_6

    .line 334
    :cond_8
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->y()Lorg/joda/time/DurationField;

    move-result-object v0

    goto/16 :goto_7

    .line 335
    :cond_9
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->B()Lorg/joda/time/DurationField;

    move-result-object v0

    goto/16 :goto_8

    .line 336
    :cond_a
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->D()Lorg/joda/time/DurationField;

    move-result-object v0

    goto/16 :goto_9

    .line 337
    :cond_b
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->H()Lorg/joda/time/DurationField;

    move-result-object v0

    goto/16 :goto_a

    .line 338
    :cond_c
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->J()Lorg/joda/time/DurationField;

    move-result-object v0

    goto/16 :goto_b

    .line 343
    :cond_d
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->d()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_c

    .line 344
    :cond_e
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->e()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_d

    .line 345
    :cond_f
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->g()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_e

    .line 346
    :cond_10
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->h()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_f

    .line 347
    :cond_11
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->j()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_10

    .line 348
    :cond_12
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->k()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_11

    .line 349
    :cond_13
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->m()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_12

    .line 350
    :cond_14
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->n()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_13

    .line 351
    :cond_15
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->p()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_14

    .line 352
    :cond_16
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->q()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_15

    .line 353
    :cond_17
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->r()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_16

    .line 354
    :cond_18
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->t()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_17

    .line 355
    :cond_19
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->u()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_18

    .line 356
    :cond_1a
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->v()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_19

    .line 357
    :cond_1b
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->x()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_1a

    .line 358
    :cond_1c
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->z()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_1b

    .line 359
    :cond_1d
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->A()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_1c

    .line 360
    :cond_1e
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->C()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_1d

    .line 361
    :cond_1f
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->E()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_1e

    .line 362
    :cond_20
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->F()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_1f

    .line 363
    :cond_21
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->G()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_20

    .line 364
    :cond_22
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->I()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_21

    .line 365
    :cond_23
    invoke-super {p0}, Lorg/joda/time/chrono/BaseChronology;->K()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto/16 :goto_22

    .line 372
    :cond_24
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->u:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->a:Lorg/joda/time/Chronology;

    invoke-virtual {v2}, Lorg/joda/time/Chronology;->m()Lorg/joda/time/DateTimeField;

    move-result-object v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->s:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->a:Lorg/joda/time/Chronology;

    invoke-virtual {v2}, Lorg/joda/time/Chronology;->j()Lorg/joda/time/DateTimeField;

    move-result-object v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->q:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->a:Lorg/joda/time/Chronology;

    invoke-virtual {v2}, Lorg/joda/time/Chronology;->g()Lorg/joda/time/DateTimeField;

    move-result-object v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->o:Lorg/joda/time/DateTimeField;

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->a:Lorg/joda/time/Chronology;

    invoke-virtual {v2}, Lorg/joda/time/Chronology;->d()Lorg/joda/time/DateTimeField;

    move-result-object v2

    if-ne v0, v2, :cond_26

    const/4 v0, 0x1

    :goto_24
    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->p:Lorg/joda/time/DateTimeField;

    iget-object v3, p0, Lorg/joda/time/chrono/AssembledChronology;->a:Lorg/joda/time/Chronology;

    invoke-virtual {v3}, Lorg/joda/time/Chronology;->e()Lorg/joda/time/DateTimeField;

    move-result-object v3

    if-ne v2, v3, :cond_27

    const/4 v2, 0x2

    :goto_25
    or-int/2addr v0, v2

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->G:Lorg/joda/time/DateTimeField;

    iget-object v3, p0, Lorg/joda/time/chrono/AssembledChronology;->a:Lorg/joda/time/Chronology;

    invoke-virtual {v3}, Lorg/joda/time/Chronology;->E()Lorg/joda/time/DateTimeField;

    move-result-object v3

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->F:Lorg/joda/time/DateTimeField;

    iget-object v3, p0, Lorg/joda/time/chrono/AssembledChronology;->a:Lorg/joda/time/Chronology;

    invoke-virtual {v3}, Lorg/joda/time/Chronology;->C()Lorg/joda/time/DateTimeField;

    move-result-object v3

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lorg/joda/time/chrono/AssembledChronology;->A:Lorg/joda/time/DateTimeField;

    iget-object v3, p0, Lorg/joda/time/chrono/AssembledChronology;->a:Lorg/joda/time/Chronology;

    invoke-virtual {v3}, Lorg/joda/time/Chronology;->u()Lorg/joda/time/DateTimeField;

    move-result-object v3

    if-ne v2, v3, :cond_25

    const/4 v1, 0x4

    :cond_25
    or-int/2addr v1, v0

    goto/16 :goto_23

    :cond_26
    move v0, v1

    goto :goto_24

    :cond_27
    move v2, v1

    goto :goto_25
.end method


# virtual methods
.method public final A()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->E:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final B()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->k:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final C()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->F:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final D()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->l:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final E()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->G:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final F()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->H:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final G()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->I:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final H()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->m:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final I()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->J:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final J()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->n:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final K()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->K:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method protected final L()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->a:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method protected final M()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(IIII)J
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->a:Lorg/joda/time/Chronology;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/joda/time/chrono/AssembledChronology;->L:I

    and-int/lit8 v1, v1, 0x6

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 120
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/Chronology;->a(IIII)J

    move-result-wide v0

    .line 122
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/joda/time/chrono/BaseChronology;->a(IIII)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(IIIIIII)J
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->a:Lorg/joda/time/Chronology;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/joda/time/chrono/AssembledChronology;->L:I

    and-int/lit8 v1, v1, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 133
    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/Chronology;->a(IIIIIII)J

    move-result-wide v0

    .line 136
    :goto_0
    return-wide v0

    :cond_0
    invoke-super/range {p0 .. p7}, Lorg/joda/time/chrono/BaseChronology;->a(IIIIIII)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(JIIII)J
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    iget-object v1, p0, Lorg/joda/time/chrono/AssembledChronology;->a:Lorg/joda/time/Chronology;

    if-eqz v1, :cond_0

    iget v0, p0, Lorg/joda/time/chrono/AssembledChronology;->L:I

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 148
    invoke-virtual/range {v1 .. v7}, Lorg/joda/time/Chronology;->a(JIIII)J

    move-result-wide v0

    .line 151
    :goto_0
    return-wide v0

    :cond_0
    invoke-super/range {p0 .. p6}, Lorg/joda/time/chrono/BaseChronology;->a(JIIII)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a()Lorg/joda/time/DateTimeZone;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->a:Lorg/joda/time/Chronology;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->a()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
.end method

.method public final c()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->c:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final d()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->o:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final e()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->p:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final f()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->d:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final g()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->q:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final h()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->r:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final i()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->e:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final j()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->s:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final k()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->t:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final l()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->f:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final m()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->u:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final n()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->v:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final o()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->g:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final p()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->w:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final q()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->x:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final r()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->y:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final s()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->h:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final t()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->z:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final u()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->A:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final v()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->B:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final w()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->i:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final x()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->C:Lorg/joda/time/DateTimeField;

    return-object v0
.end method

.method public final y()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->j:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public final z()Lorg/joda/time/DateTimeField;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/joda/time/chrono/AssembledChronology;->D:Lorg/joda/time/DateTimeField;

    return-object v0
.end method
