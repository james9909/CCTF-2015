.class public Lcom/snapchat/android/discover/model/DSnapPage$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/DSnapPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Integer;

.field private l:Lcom/snapchat/android/discover/model/MediaState;

.field private m:Lcom/snapchat/android/discover/model/MediaState;

.field private n:Z

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/DSnapPanel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object v1, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->a:Ljava/lang/String;

    .line 253
    iput-object v1, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->c:Ljava/lang/Integer;

    .line 254
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->d:I

    .line 255
    iput-object v1, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->e:Ljava/lang/String;

    .line 261
    iput-object v1, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->k:Ljava/lang/Integer;

    .line 262
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->l:Lcom/snapchat/android/discover/model/MediaState;

    .line 263
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->m:Lcom/snapchat/android/discover/model/MediaState;

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->o:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;

    const-string v1, "Cannot build dsnap page with null id."

    const-string v2, "dsnap_id"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 280
    new-instance v0, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;

    const-string v1, "Cannot build dsnap page with null edition id."

    const-string v2, "edition_id"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 283
    new-instance v0, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;

    const-string v1, "Cannot build dsnap page with null publisher name."

    const-string v2, "publisher_name"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->i:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 287
    :cond_3
    new-instance v0, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;

    const-string v1, "Cannot build dsnap page with null color."

    const-string v2, "color"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->i:Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->k:Ljava/lang/Integer;

    if-nez v0, :cond_5

    .line 292
    new-instance v0, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;

    const-string v1, "Cannot build dsnap page with null ad type."

    const-string v2, "ad_type"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->o:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 295
    new-instance v0, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;

    const-string v1, "Cannot build dsnap page with invalid dsnap items."

    const-string v2, "dsnap_item"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_6
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->j:Ljava/lang/String;

    return-object v0
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/16 v1, 0x23

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 272
    :cond_0
    return-object p1
.end method

.method static synthetic j(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->k:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic k(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 249
    iget v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->d:I

    return v0
.end method

.method static synthetic l(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->l:Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method static synthetic m(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->m:Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method static synthetic n(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->o:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic o(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->n:Z

    return v0
.end method


# virtual methods
.method public a(I)Lcom/snapchat/android/discover/model/DSnapPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 351
    iput p1, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->d:I

    .line 352
    return-object p0
.end method

.method public a(Lcom/snapchat/android/discover/model/MediaState;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->l:Lcom/snapchat/android/discover/model/MediaState;

    .line 357
    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->c:Ljava/lang/Integer;

    .line 312
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->a:Ljava/lang/String;

    .line 302
    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    return-object p0
.end method

.method public a(Z)Lcom/snapchat/android/discover/model/DSnapPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->n:Z

    .line 373
    return-object p0
.end method

.method public a()Lcom/snapchat/android/discover/model/DSnapPage;
    .locals 2

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->b()V

    .line 378
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/discover/model/DSnapPage;-><init>(Lcom/snapchat/android/discover/model/DSnapPage$Builder;Lcom/snapchat/android/discover/model/DSnapPage$1;)V

    return-object v0
.end method

.method public b(Lcom/snapchat/android/discover/model/MediaState;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->m:Lcom/snapchat/android/discover/model/MediaState;

    .line 362
    return-object p0
.end method

.method public b(Ljava/lang/Integer;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->k:Ljava/lang/Integer;

    .line 347
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->b:Ljava/lang/String;

    .line 307
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->e:Ljava/lang/String;

    .line 317
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->f:Ljava/lang/String;

    .line 322
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->g:Ljava/lang/String;

    .line 327
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->h:Ljava/lang/String;

    .line 332
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->i:Ljava/lang/String;

    .line 337
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->j:Ljava/lang/String;

    .line 342
    return-object p0
.end method
