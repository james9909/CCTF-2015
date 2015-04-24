.class public Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Bitmap;

.field private e:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;

.field private f:Z

.field private g:Landroid/os/Bundle;

.field private h:Z

.field private i:Ljava/lang/Integer;

.field private j:[B

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->b:I

    .line 112
    iput v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->c:I

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->f:Z

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->h:Z

    .line 122
    iput-object v1, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->i:Ljava/lang/Integer;

    .line 123
    iput-object v1, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->j:[B

    .line 124
    iput-object v1, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->e:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 175
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build AsyncLoadBitmapRequest without ImageView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->l:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build AsyncLoadBitmapRequest with null request ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    const/4 v0, 0x0

    .line 184
    iget-object v2, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->i:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    move v0, v1

    .line 185
    :cond_2
    iget-object v2, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->j:[B

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 186
    :cond_3
    iget-object v2, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->k:Ljava/lang/String;

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 188
    :cond_4
    if-eq v0, v1, :cond_5

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must have exactly one Bitmap source for request!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_5
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 109
    iget v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->b:I

    return v0
.end method

.method static synthetic e(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 109
    iget v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->c:I

    return v0
.end method

.method static synthetic f(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->h:Z

    return v0
.end method

.method static synthetic h(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->g:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic k(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)[B
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->j:[B

    return-object v0
.end method

.method static synthetic l(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;
    .locals 0
    .parameter

    .prologue
    .line 132
    iput p1, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->b:I

    .line 133
    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->g:Landroid/os/Bundle;

    .line 157
    return-object p0
.end method

.method public a(Landroid/widget/ImageView;)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a:Landroid/widget/ImageView;

    .line 129
    return-object p0
.end method

.method public a(Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->e:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;

    .line 149
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->k:Ljava/lang/String;

    .line 171
    iput-object p1, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->l:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public a(Z)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->h:Z

    .line 141
    return-object p0
.end method

.method public a()Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->b()V

    .line 195
    new-instance v0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;-><init>(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$1;)V

    return-object v0
.end method

.method public b(I)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;
    .locals 0
    .parameter

    .prologue
    .line 136
    iput p1, p0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->c:I

    .line 137
    return-object p0
.end method
