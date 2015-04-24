.class public Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;
.super Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;
.source "SourceFile"


# instance fields
.field private final n:Lcom/snapchat/android/util/eventbus/SwitchToInChatCameraEvent;

.field private final o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;Lcom/snapchat/android/util/eventbus/SwitchToInChatCameraEvent;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    .line 44
    iput-object p4, p0, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;->n:Lcom/snapchat/android/util/eventbus/SwitchToInChatCameraEvent;

    .line 45
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;->g:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;->o:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;->f:Landroid/widget/TextView;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor$1;-><init>(Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-static {p1}, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 56
    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;->o:Landroid/widget/TextView;

    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;->o:Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor$2;-><init>(Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;->a()V

    .line 75
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 145
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "date_modified DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 165
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_1
    :goto_0
    return-object v3

    .line 160
    :cond_2
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Lcom/snapchat/android/util/SnapMediaUtils;->a(Ljava/lang/String;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 162
    if-nez v0, :cond_3

    .line 165
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 163
    :cond_3
    :try_start_2
    invoke-static {p0, v0}, Lcom/snapchat/android/util/SnapMediaUtils;->a(Landroid/content/Context;[B)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 165
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_4
    if-eqz v0, :cond_1

    .line 169
    invoke-static {v0, p1, p1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 170
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private static a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/high16 v10, 0x4000

    const/4 v9, 0x0

    .line 101
    const v1, 0x7f020026

    invoke-static {p0, v1}, Lcom/snapchat/android/util/SnapMediaUtils;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 102
    if-nez v1, :cond_0

    .line 136
    :goto_0
    return-object v0

    .line 103
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 106
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v3}, Lcom/snapchat/android/util/SnapMediaUtils;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 107
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 108
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 109
    const v6, 0x3e9eb852

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    .line 111
    int-to-float v2, v2

    mul-float v7, v10, v6

    sub-float/2addr v2, v7

    float-to-int v2, v2

    invoke-static {p0, v2}, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 112
    if-nez v2, :cond_1

    .line 113
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 114
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 118
    :cond_1
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 121
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 122
    invoke-virtual {v4, v6, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 123
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v8, v10, v6

    sub-float/2addr v7, v8

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v6, v10

    sub-float v6, v8, v6

    invoke-direct {v0, v9, v9, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 124
    const/high16 v6, 0x40a0

    invoke-static {v6, p0}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v6

    float-to-int v6, v6

    .line 125
    int-to-float v7, v6

    int-to-float v6, v6

    invoke-virtual {v4, v0, v7, v6, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 126
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 129
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v0, v9, v9, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 130
    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v1, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 131
    invoke-virtual {v4, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 133
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 134
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 136
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public e()Z
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;->n:Lcom/snapchat/android/util/eventbus/SwitchToInChatCameraEvent;

    iget v1, v1, Lcom/snapchat/android/util/eventbus/SwitchToInChatCameraEvent;->a:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(IZ)V

    .line 88
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/CancelInChatSnapEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/CancelInChatSnapEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method
