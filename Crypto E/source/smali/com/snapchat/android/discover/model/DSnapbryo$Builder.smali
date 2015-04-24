.class public Lcom/snapchat/android/discover/model/DSnapbryo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/DSnapbryo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/net/Uri;

.field private g:Landroid/graphics/Bitmap;

.field private h:Ljava/util/Date;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

.field private l:Lcom/snapchat/android/model/Mediabryo$SendStatus;

.field private m:Lcom/snapchat/android/model/Mediabryo$PostStatus;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Lcom/snapchat/android/discover/DSnapMediaCompressor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->h:Ljava/util/Date;

    .line 249
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->j:Ljava/util/LinkedHashSet;

    .line 250
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->NOT_UPLOADED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->k:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    .line 251
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->UNSENT:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->l:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    .line 252
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->NOT_POSTED:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->m:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    .line 255
    new-instance v0, Lcom/snapchat/android/discover/DSnapMediaCompressor;

    invoke-direct {v0}, Lcom/snapchat/android/discover/DSnapMediaCompressor;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->p:Lcom/snapchat/android/discover/DSnapMediaCompressor;

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->i:Ljava/lang/String;

    .line 259
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->a:Ljava/lang/String;

    .line 260
    iput-object p2, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->b:Ljava/lang/String;

    .line 261
    iput-object p3, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->c:Ljava/lang/String;

    .line 262
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Ljava/util/Date;
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->h:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Ljava/util/LinkedHashSet;
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->j:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Lcom/snapchat/android/model/Mediabryo$UploadStatus;
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->k:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Lcom/snapchat/android/model/Mediabryo$SendStatus;
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->l:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    return-object v0
.end method

.method static synthetic j(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Lcom/snapchat/android/model/Mediabryo$PostStatus;
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->m:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    return-object v0
.end method

.method static synthetic k(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->o:Z

    return v0
.end method

.method static synthetic l(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic m(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->f:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic n(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->g:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Lcom/snapchat/android/discover/model/DSnapbryo$Builder;
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->e:Landroid/graphics/Bitmap;

    .line 332
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapbryo$Builder;
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->d:Ljava/lang/String;

    .line 276
    return-object p0
.end method

.method public a()Lcom/snapchat/android/discover/model/DSnapbryo;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->f:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapVideobryo;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/model/DSnapVideobryo;-><init>(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)V

    .line 350
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapImagebryo;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/model/DSnapImagebryo;-><init>(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)V

    goto :goto_0
.end method
