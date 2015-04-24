.class public Lcom/snapchat/android/ui/ImageResourceView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/Recyclable;
.implements Lcom/snapchat/android/ui/SnapchatResource$ResourceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/ImageResourceView$1;
    }
.end annotation


# static fields
.field private static c:I

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# instance fields
.field protected a:Lcom/snapchat/android/ui/ImageResource;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/lang/String;

.field private final i:Landroid/graphics/Paint;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, -0x1

    sput v0, Lcom/snapchat/android/ui/ImageResourceView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    sget v0, Lcom/snapchat/android/ui/ImageResourceView;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/snapchat/android/ui/ImageResourceView;->c:I

    .line 62
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 63
    const v2, 0x7f0c0115

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/ImageResourceView;->d:Ljava/lang/String;

    .line 64
    const v2, 0x7f0c020c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/ImageResourceView;->e:Ljava/lang/String;

    .line 65
    const v2, 0x7f0c019f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/ImageResourceView;->f:Ljava/lang/String;

    .line 66
    const v2, 0x7f0c01a1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/ui/ImageResourceView;->g:Ljava/lang/String;

    .line 70
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->i:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->i:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->i:Landroid/graphics/Paint;

    sget v1, Lcom/snapchat/android/ui/ImageResourceView;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    const/16 v0, 0xff

    iput v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->j:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    sget v0, Lcom/snapchat/android/ui/ImageResourceView;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/snapchat/android/ui/ImageResourceView;->c:I

    .line 62
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 63
    const v2, 0x7f0c0115

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/ImageResourceView;->d:Ljava/lang/String;

    .line 64
    const v2, 0x7f0c020c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/ImageResourceView;->e:Ljava/lang/String;

    .line 65
    const v2, 0x7f0c019f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/ImageResourceView;->f:Ljava/lang/String;

    .line 66
    const v2, 0x7f0c01a1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/ui/ImageResourceView;->g:Ljava/lang/String;

    .line 70
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->i:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->i:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->i:Landroid/graphics/Paint;

    sget v1, Lcom/snapchat/android/ui/ImageResourceView;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    const/16 v0, 0xff

    iput v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->j:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    sget v0, Lcom/snapchat/android/ui/ImageResourceView;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/snapchat/android/ui/ImageResourceView;->c:I

    .line 62
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 63
    const v2, 0x7f0c0115

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/ImageResourceView;->d:Ljava/lang/String;

    .line 64
    const v2, 0x7f0c020c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/ImageResourceView;->e:Ljava/lang/String;

    .line 65
    const v2, 0x7f0c019f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/ImageResourceView;->f:Ljava/lang/String;

    .line 66
    const v2, 0x7f0c01a1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/ui/ImageResourceView;->g:Ljava/lang/String;

    .line 70
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->i:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->i:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->i:Landroid/graphics/Paint;

    sget v1, Lcom/snapchat/android/ui/ImageResourceView;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    const/16 v0, 0xff

    iput v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->j:I

    .line 55
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ImageResource;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 113
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    sget-object v0, Lcom/snapchat/android/ui/ImageResourceView$1;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    const v0, 0x7f020041

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ImageResourceView;->setImageResource(I)V

    .line 145
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 146
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->invalidate()V

    .line 149
    :goto_1
    return-void

    .line 124
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    goto :goto_1

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ImageResource;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ImageResourceView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/ui/ImageResourceView;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->d:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ImageResource;->a(Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;)V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ImageResource;->c()Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->c:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ImageResource;->c()Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 182
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-virtual {p0, v3}, Lcom/snapchat/android/ui/ImageResourceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ImageResource;->c()Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    if-eq v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/ImageResource;->a(Lcom/snapchat/android/ui/SnapchatResource$ResourceListener;)V

    .line 188
    iput-object v3, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 159
    iget-object v2, p0, Lcom/snapchat/android/ui/ImageResourceView;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/snapchat/android/ui/ImageResourceView;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/ui/ImageResourceView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    if-eqz v2, :cond_0

    .line 166
    sget-object v2, Lcom/snapchat/android/ui/ImageResourceView$1;->a:[I

    iget-object v3, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/ImageResource;->c()Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 168
    :pswitch_0
    sget-object v2, Lcom/snapchat/android/ui/ImageResourceView;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/ui/ImageResourceView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 173
    :pswitch_1
    sget-object v2, Lcom/snapchat/android/ui/ImageResourceView;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/ui/ImageResourceView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setChatMedia(Lcom/snapchat/android/model/chat/ChatMedia;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x7f

    const/16 v2, 0xff

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    if-eqz p1, :cond_2

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ImageResource;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    :cond_0
    new-instance v0, Lcom/snapchat/android/ui/ImageResource;

    invoke-direct {v0, p1, p0}, Lcom/snapchat/android/ui/ImageResource;-><init>(Lcom/snapchat/android/model/chat/ChatMedia;Lcom/snapchat/android/ui/SnapchatResource$ResourceListener;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ImageResource;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 87
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->V()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    iput v3, p0, Lcom/snapchat/android/ui/ImageResourceView;->j:I

    .line 89
    sget-object v0, Lcom/snapchat/android/ui/ImageResourceView;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->h:Ljava/lang/String;

    .line 104
    :cond_2
    :goto_0
    return-void

    .line 90
    :cond_3
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->W()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    iput v3, p0, Lcom/snapchat/android/ui/ImageResourceView;->j:I

    .line 92
    sget-object v0, Lcom/snapchat/android/ui/ImageResourceView;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->h:Ljava/lang/String;

    goto :goto_0

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ImageResource;->c()Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->c:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->j:I

    if-eq v0, v2, :cond_5

    .line 98
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 100
    :cond_5
    iput v2, p0, Lcom/snapchat/android/ui/ImageResourceView;->j:I

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->h:Ljava/lang/String;

    goto :goto_0
.end method
