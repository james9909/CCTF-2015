.class public Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "SourceFile"


# static fields
.field static d:[[[[I


# instance fields
.field private final e:Lcom/googlecode/mp4parser/DataSource;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end field

.field private g:[J

.field private h:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 273
    const/16 v0, 0x13

    filled-new-array {v0, v4, v5, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[[I

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    .line 277
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x20

    aput v1, v0, v2

    .line 278
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x20

    aput v1, v0, v2

    .line 279
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x40

    aput v1, v0, v3

    .line 280
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x40

    aput v1, v0, v3

    .line 281
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x28

    aput v1, v0, v2

    .line 282
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x28

    aput v1, v0, v2

    .line 283
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x50

    aput v1, v0, v3

    .line 284
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x50

    aput v1, v0, v3

    .line 285
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x30

    aput v1, v0, v2

    .line 286
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x30

    aput v1, v0, v2

    .line 287
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x60

    aput v1, v0, v3

    .line 288
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x60

    aput v1, v0, v3

    .line 289
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x38

    aput v1, v0, v2

    .line 290
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x38

    aput v1, v0, v2

    .line 291
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x70

    aput v1, v0, v3

    .line 292
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x70

    aput v1, v0, v3

    .line 293
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x40

    aput v1, v0, v2

    .line 294
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x40

    aput v1, v0, v2

    .line 295
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x80

    aput v1, v0, v3

    .line 296
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x80

    aput v1, v0, v3

    .line 297
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x50

    aput v1, v0, v2

    .line 298
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x50

    aput v1, v0, v2

    .line 299
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0xa0

    aput v1, v0, v3

    .line 300
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0xa0

    aput v1, v0, v3

    .line 301
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x60

    aput v1, v0, v2

    .line 302
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x60

    aput v1, v0, v2

    .line 303
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0xc0

    aput v1, v0, v3

    .line 304
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0xc0

    aput v1, v0, v3

    .line 305
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x70

    aput v1, v0, v2

    .line 306
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x70

    aput v1, v0, v2

    .line 307
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0xe0

    aput v1, v0, v3

    .line 308
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0xe0

    aput v1, v0, v3

    .line 309
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x80

    aput v1, v0, v2

    .line 310
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x80

    aput v1, v0, v2

    .line 311
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x100

    aput v1, v0, v3

    .line 312
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x100

    aput v1, v0, v3

    .line 313
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0xa0

    aput v1, v0, v2

    .line 314
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0xa0

    aput v1, v0, v2

    .line 315
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x140

    aput v1, v0, v3

    .line 316
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x140

    aput v1, v0, v3

    .line 317
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0xc0

    aput v1, v0, v2

    .line 318
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0xc0

    aput v1, v0, v2

    .line 319
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x180

    aput v1, v0, v3

    .line 320
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x180

    aput v1, v0, v3

    .line 321
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0xe0

    aput v1, v0, v2

    .line 322
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0xe0

    aput v1, v0, v2

    .line 323
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x1c0

    aput v1, v0, v3

    .line 324
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x1c0

    aput v1, v0, v3

    .line 325
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x100

    aput v1, v0, v2

    .line 326
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x100

    aput v1, v0, v2

    .line 327
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x200

    aput v1, v0, v3

    .line 328
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x200

    aput v1, v0, v3

    .line 329
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x140

    aput v1, v0, v2

    .line 330
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x140

    aput v1, v0, v2

    .line 331
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x280

    aput v1, v0, v3

    .line 332
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x280

    aput v1, v0, v3

    .line 333
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x180

    aput v1, v0, v2

    .line 334
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x180

    aput v1, v0, v2

    .line 335
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x300

    aput v1, v0, v3

    .line 336
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x300

    aput v1, v0, v3

    .line 337
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x1c0

    aput v1, v0, v2

    .line 338
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x1c0

    aput v1, v0, v2

    .line 339
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x380

    aput v1, v0, v3

    .line 340
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x380

    aput v1, v0, v3

    .line 341
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x200

    aput v1, v0, v2

    .line 342
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x200

    aput v1, v0, v2

    .line 343
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x400

    aput v1, v0, v3

    .line 344
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x400

    aput v1, v0, v3

    .line 345
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x240

    aput v1, v0, v2

    .line 346
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x240

    aput v1, v0, v2

    .line 347
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x480

    aput v1, v0, v3

    .line 348
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x480

    aput v1, v0, v3

    .line 349
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x280

    aput v1, v0, v2

    .line 350
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x280

    aput v1, v0, v2

    .line 351
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    const/16 v1, 0x500

    aput v1, v0, v3

    .line 352
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    const/16 v1, 0x500

    aput v1, v0, v3

    .line 355
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x20

    aput v1, v0, v2

    .line 356
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x20

    aput v1, v0, v2

    .line 357
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x45

    aput v1, v0, v3

    .line 358
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x46

    aput v1, v0, v3

    .line 359
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x28

    aput v1, v0, v2

    .line 360
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x28

    aput v1, v0, v2

    .line 361
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x57

    aput v1, v0, v3

    .line 362
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x58

    aput v1, v0, v3

    .line 363
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x30

    aput v1, v0, v2

    .line 364
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x30

    aput v1, v0, v2

    .line 365
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x68

    aput v1, v0, v3

    .line 366
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x69

    aput v1, v0, v3

    .line 367
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x38

    aput v1, v0, v2

    .line 368
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x38

    aput v1, v0, v2

    .line 369
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x79

    aput v1, v0, v3

    .line 370
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x7a

    aput v1, v0, v3

    .line 371
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x40

    aput v1, v0, v2

    .line 372
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x40

    aput v1, v0, v2

    .line 373
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x8b

    aput v1, v0, v3

    .line 374
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x8c

    aput v1, v0, v3

    .line 375
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x50

    aput v1, v0, v2

    .line 376
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x50

    aput v1, v0, v2

    .line 377
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0xae

    aput v1, v0, v3

    .line 378
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0xaf

    aput v1, v0, v3

    .line 379
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x60

    aput v1, v0, v2

    .line 380
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x60

    aput v1, v0, v2

    .line 381
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0xd0

    aput v1, v0, v3

    .line 382
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0xd1

    aput v1, v0, v3

    .line 383
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x70

    aput v1, v0, v2

    .line 384
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x70

    aput v1, v0, v2

    .line 385
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0xf3

    aput v1, v0, v3

    .line 386
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0xf4

    aput v1, v0, v3

    .line 387
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x80

    aput v1, v0, v2

    .line 388
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x80

    aput v1, v0, v2

    .line 389
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x116

    aput v1, v0, v3

    .line 390
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x117

    aput v1, v0, v3

    .line 391
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0xa0

    aput v1, v0, v2

    .line 392
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0xa0

    aput v1, v0, v2

    .line 393
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x15c

    aput v1, v0, v3

    .line 394
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x15d

    aput v1, v0, v3

    .line 395
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0xc0

    aput v1, v0, v2

    .line 396
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0xc0

    aput v1, v0, v2

    .line 397
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x1a1

    aput v1, v0, v3

    .line 398
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x1a2

    aput v1, v0, v3

    .line 399
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0xe0

    aput v1, v0, v2

    .line 400
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0xe0

    aput v1, v0, v2

    .line 401
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x1e7

    aput v1, v0, v3

    .line 402
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x1e8

    aput v1, v0, v3

    .line 403
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x100

    aput v1, v0, v2

    .line 404
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x100

    aput v1, v0, v2

    .line 405
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x22d

    aput v1, v0, v3

    .line 406
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x22e

    aput v1, v0, v3

    .line 407
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x140

    aput v1, v0, v2

    .line 408
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x140

    aput v1, v0, v2

    .line 409
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x2b8

    aput v1, v0, v3

    .line 410
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x2b9

    aput v1, v0, v3

    .line 411
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x180

    aput v1, v0, v2

    .line 412
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x180

    aput v1, v0, v2

    .line 413
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x343

    aput v1, v0, v3

    .line 414
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x344

    aput v1, v0, v3

    .line 415
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x1c0

    aput v1, v0, v2

    .line 416
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x1c0

    aput v1, v0, v2

    .line 417
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x3cf

    aput v1, v0, v3

    .line 418
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x3cf

    aput v1, v0, v3

    .line 419
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x200

    aput v1, v0, v2

    .line 420
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x200

    aput v1, v0, v2

    .line 421
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x45a

    aput v1, v0, v3

    .line 422
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x45b

    aput v1, v0, v3

    .line 423
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x240

    aput v1, v0, v2

    .line 424
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x240

    aput v1, v0, v2

    .line 425
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x4e5

    aput v1, v0, v3

    .line 426
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x4e6

    aput v1, v0, v3

    .line 427
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x280

    aput v1, v0, v2

    .line 428
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x280

    aput v1, v0, v2

    .line 429
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    const/16 v1, 0x571

    aput v1, v0, v3

    .line 430
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    const/16 v1, 0x572

    aput v1, v0, v3

    .line 433
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x20

    aput v1, v0, v2

    .line 434
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x20

    aput v1, v0, v2

    .line 435
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x60

    aput v1, v0, v3

    .line 436
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v2

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x60

    aput v1, v0, v3

    .line 437
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x28

    aput v1, v0, v2

    .line 438
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x28

    aput v1, v0, v2

    .line 439
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x78

    aput v1, v0, v3

    .line 440
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v3

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x78

    aput v1, v0, v3

    .line 441
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x30

    aput v1, v0, v2

    .line 442
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x30

    aput v1, v0, v2

    .line 443
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x90

    aput v1, v0, v3

    .line 444
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x90

    aput v1, v0, v3

    .line 445
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x38

    aput v1, v0, v2

    .line 446
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x38

    aput v1, v0, v2

    .line 447
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0xa8

    aput v1, v0, v3

    .line 448
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v5

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0xa8

    aput v1, v0, v3

    .line 449
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x40

    aput v1, v0, v2

    .line 450
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x40

    aput v1, v0, v2

    .line 451
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0xc0

    aput v1, v0, v3

    .line 452
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    aget-object v0, v0, v6

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0xc0

    aput v1, v0, v3

    .line 453
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x50

    aput v1, v0, v2

    .line 454
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x50

    aput v1, v0, v2

    .line 455
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0xf0

    aput v1, v0, v3

    .line 456
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0xf0

    aput v1, v0, v3

    .line 457
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x60

    aput v1, v0, v2

    .line 458
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x60

    aput v1, v0, v2

    .line 459
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x120

    aput v1, v0, v3

    .line 460
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x120

    aput v1, v0, v3

    .line 461
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x70

    aput v1, v0, v2

    .line 462
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x70

    aput v1, v0, v2

    .line 463
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x150

    aput v1, v0, v3

    .line 464
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x150

    aput v1, v0, v3

    .line 465
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x80

    aput v1, v0, v2

    .line 466
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x80

    aput v1, v0, v2

    .line 467
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x180

    aput v1, v0, v3

    .line 468
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x180

    aput v1, v0, v3

    .line 469
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0xa0

    aput v1, v0, v2

    .line 470
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0xa0

    aput v1, v0, v2

    .line 471
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x1e0

    aput v1, v0, v3

    .line 472
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x1e0

    aput v1, v0, v3

    .line 473
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0xc0

    aput v1, v0, v2

    .line 474
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0xc0

    aput v1, v0, v2

    .line 475
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x240

    aput v1, v0, v3

    .line 476
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x240

    aput v1, v0, v3

    .line 477
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0xe0

    aput v1, v0, v2

    .line 478
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0xe0

    aput v1, v0, v2

    .line 479
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x2a0

    aput v1, v0, v3

    .line 480
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x2a0

    aput v1, v0, v3

    .line 481
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x100

    aput v1, v0, v2

    .line 482
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x100

    aput v1, v0, v2

    .line 483
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x300

    aput v1, v0, v3

    .line 484
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xc

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x300

    aput v1, v0, v3

    .line 485
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x140

    aput v1, v0, v2

    .line 486
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x140

    aput v1, v0, v2

    .line 487
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x3c0

    aput v1, v0, v3

    .line 488
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xd

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x3c0

    aput v1, v0, v3

    .line 489
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x180

    aput v1, v0, v2

    .line 490
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x180

    aput v1, v0, v2

    .line 491
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x480

    aput v1, v0, v3

    .line 492
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xe

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x480

    aput v1, v0, v3

    .line 493
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x1c0

    aput v1, v0, v2

    .line 494
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x1c0

    aput v1, v0, v2

    .line 495
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x540

    aput v1, v0, v3

    .line 496
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0xf

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x540

    aput v1, v0, v3

    .line 497
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x200

    aput v1, v0, v2

    .line 498
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x200

    aput v1, v0, v2

    .line 499
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x600

    aput v1, v0, v3

    .line 500
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x10

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x600

    aput v1, v0, v3

    .line 501
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x240

    aput v1, v0, v2

    .line 502
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x240

    aput v1, v0, v2

    .line 503
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x6c0

    aput v1, v0, v3

    .line 504
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x11

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x6c0

    aput v1, v0, v3

    .line 505
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x280

    aput v1, v0, v2

    .line 506
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x280

    aput v1, v0, v2

    .line 507
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    aget-object v0, v0, v4

    const/16 v1, 0x780

    aput v1, v0, v3

    .line 508
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->d:[[[[I

    const/16 v1, 0x12

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    const/16 v1, 0x780

    aput v1, v0, v3

    .line 509
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->f:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized b()[J
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->g:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->h:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AC3TrackImpl;->e:Lcom/googlecode/mp4parser/DataSource;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/DataSource;->close()V

    .line 55
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "soun"

    return-object v0
.end method
