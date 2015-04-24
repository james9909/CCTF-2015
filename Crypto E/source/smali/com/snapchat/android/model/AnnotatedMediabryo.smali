.class public abstract Lcom/snapchat/android/model/AnnotatedMediabryo;
.super Lcom/snapchat/android/model/Mediabryo;
.source "SourceFile"


# instance fields
.field private mCaptionAnalyticData:Lcom/snapchat/android/ui/caption/CaptionAnalyticData;

.field private mCaptionStyleDescription:Ljava/lang/String;

.field private mCaptionText:Ljava/lang/String;

.field private mCompositeImageBitmap:Landroid/graphics/Bitmap;

.field private mDeleteCacheAfterSent:Z

.field private mGeofilterId:Ljava/lang/String;

.field private mGeofilterImpressions:I

.field private mHasDrawing:Z

.field protected mShouldExecuteSendSnapTaskAfterUpload:Z

.field private mSwipeFilterDescription:Ljava/lang/String;

.field private mSwipeFilterNumDoubleSwipes:I

.field private mSwipeFilterNumSingleSwipes:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/Mediabryo;-><init>(Ljava/lang/String;)V

    .line 32
    iput-boolean v0, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mDeleteCacheAfterSent:Z

    .line 38
    iput-boolean v0, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mShouldExecuteSendSnapTaskAfterUpload:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/model/Mediabryo;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 32
    iput-boolean v0, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mDeleteCacheAfterSent:Z

    .line 38
    iput-boolean v0, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mShouldExecuteSendSnapTaskAfterUpload:Z

    .line 48
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mCaptionText:Ljava/lang/String;

    return-object v0
.end method

.method public B()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public C()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a()Lcom/snapchat/android/util/bitmap/BitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a(Landroid/graphics/Bitmap;)V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public a(D)V
    .locals 0
    .parameter

    .prologue
    .line 91
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput p1, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mSwipeFilterNumSingleSwipes:I

    .line 145
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    .line 216
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/caption/CaptionAnalyticData;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mCaptionAnalyticData:Lcom/snapchat/android/ui/caption/CaptionAnalyticData;

    .line 196
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/PostToStory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mShouldExecuteSendSnapTaskAfterUpload:Z

    .line 56
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput p1, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mSwipeFilterNumDoubleSwipes:I

    .line 149
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mDeleteCacheAfterSent:Z

    .line 68
    return-void
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput p1, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mGeofilterImpressions:I

    .line 169
    return-void
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 95
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->e()Lcom/snapchat/android/model/AnnotatedMediabryo;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mHasDrawing:Z

    .line 124
    return-void
.end method

.method public abstract e()Lcom/snapchat/android/model/AnnotatedMediabryo;
.end method

.method public e(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 131
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, "Geofilter"

    invoke-static {v0, p1, v1}, Lcom/snapchat/android/util/ScTextUtils;->a(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "Geofilter"

    iput-object v0, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mSwipeFilterDescription:Ljava/lang/String;

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mSwipeFilterDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 112
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    .line 115
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/model/AnnotatedMediabryo;

    if-nez v0, :cond_1

    .line 116
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :cond_1
    invoke-super {p0, p1}, Lcom/snapchat/android/model/Mediabryo;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mGeofilterId:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, ""

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mCaptionStyleDescription:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, ""

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mCaptionText:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mShouldExecuteSendSnapTaskAfterUpload:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mDeleteCacheAfterSent:Z

    return v0
.end method

.method public l()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/PostToStory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public m()D
    .locals 2

    .prologue
    .line 85
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public o()J
    .locals 2

    .prologue
    .line 93
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 102
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, ""

    return-object v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mHasDrawing:Z

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mSwipeFilterDescription:Ljava/lang/String;

    return-object v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mSwipeFilterNumSingleSwipes:I

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mSwipeFilterNumDoubleSwipes:I

    return v0
.end method

.method public w()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mGeofilterImpressions:I

    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mGeofilterId:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mCaptionStyleDescription:Ljava/lang/String;

    return-object v0
.end method

.method public z()Lcom/snapchat/android/ui/caption/CaptionAnalyticData;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/snapchat/android/model/AnnotatedMediabryo;->mCaptionAnalyticData:Lcom/snapchat/android/ui/caption/CaptionAnalyticData;

    return-object v0
.end method
