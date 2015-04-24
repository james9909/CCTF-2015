.class public Lcom/snapchat/android/discover/model/ChannelPage$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/ChannelPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:I

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Lcom/snapchat/android/discover/model/MediaState;

.field private s:Lcom/snapchat/android/discover/model/MediaState;

.field private t:Lcom/snapchat/android/discover/model/MediaState;

.field private u:Lcom/snapchat/android/discover/model/MediaState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->l:Ljava/lang/String;

    .line 244
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->r:Lcom/snapchat/android/discover/model/MediaState;

    .line 245
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->s:Lcom/snapchat/android/discover/model/MediaState;

    .line 246
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->t:Lcom/snapchat/android/discover/model/MediaState;

    .line 247
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->u:Lcom/snapchat/android/discover/model/MediaState;

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 226
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->d:I

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;

    const-string v1, "Cannot build ChannelPage with null publisher name."

    const-string v2, "publisher_name"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 262
    :cond_1
    new-instance v0, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot build ChannelPage with primary color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "primary_color"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->m(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->d:I

    .line 267
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 268
    :cond_3
    new-instance v0, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot build ChannelPage with secondary color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "secondary_color"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->m(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->e:I

    .line 273
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->f:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 274
    new-instance v0, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;

    const-string v1, "Cannot build ChannelPage with null filled icon URL."

    const-string v2, "filled_icon"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->g:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 278
    new-instance v0, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;

    const-string v1, "Cannot build ChannelPage with null inverted icon URL."

    const-string v2, "inverted_icon"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->i:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 282
    new-instance v0, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;

    const-string v1, "Cannot build ChannelPage with null intro video URL."

    const-string v2, "intro_video"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_7
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 226
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->e:I

    return v0
.end method

.method static synthetic d(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 226
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->k:I

    return v0
.end method

.method static synthetic e(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 226
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->m:I

    return v0
.end method

.method static synthetic g(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->j:Z

    return v0
.end method

.method static synthetic h(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->n:Ljava/lang/String;

    return-object v0
.end method

.method private m(Ljava/lang/String;)I
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/16 v1, 0x23

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic m(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->r:Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method static synthetic q(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->s:Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method static synthetic r(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->t:Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method static synthetic s(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->u:Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/snapchat/android/discover/model/ChannelPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 336
    iput p1, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->m:I

    .line 337
    return-object p0
.end method

.method public a(Lcom/snapchat/android/discover/model/MediaState;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->r:Lcom/snapchat/android/discover/model/MediaState;

    .line 349
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->a:Ljava/lang/String;

    .line 289
    return-object p0
.end method

.method public a(Z)Lcom/snapchat/android/discover/model/ChannelPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->j:Z

    .line 345
    return-object p0
.end method

.method public a()Lcom/snapchat/android/discover/model/ChannelPage;
    .locals 2

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->b()V

    .line 365
    new-instance v0, Lcom/snapchat/android/discover/model/ChannelPage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/discover/model/ChannelPage;-><init>(Lcom/snapchat/android/discover/model/ChannelPage$Builder;Lcom/snapchat/android/discover/model/ChannelPage$1;)V

    return-object v0
.end method

.method public b(I)Lcom/snapchat/android/discover/model/ChannelPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 340
    iput p1, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->k:I

    .line 341
    return-object p0
.end method

.method public b(Lcom/snapchat/android/discover/model/MediaState;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->s:Lcom/snapchat/android/discover/model/MediaState;

    .line 353
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->b:Ljava/lang/String;

    .line 293
    return-object p0
.end method

.method public c(Lcom/snapchat/android/discover/model/MediaState;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->t:Lcom/snapchat/android/discover/model/MediaState;

    .line 357
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->c:Ljava/lang/String;

    .line 297
    return-object p0
.end method

.method public d(Lcom/snapchat/android/discover/model/MediaState;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->u:Lcom/snapchat/android/discover/model/MediaState;

    .line 361
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->f:Ljava/lang/String;

    .line 301
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->g:Ljava/lang/String;

    .line 305
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->h:Ljava/lang/String;

    .line 309
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->i:Ljava/lang/String;

    .line 313
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->n:Ljava/lang/String;

    .line 317
    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->o:Ljava/lang/String;

    .line 321
    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->p:Ljava/lang/String;

    .line 325
    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->q:Ljava/lang/String;

    .line 329
    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->l:Ljava/lang/String;

    .line 333
    return-object p0
.end method
