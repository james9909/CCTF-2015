.class public abstract Lcom/snapchat/android/ui/swipefilters/FilterPage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(Landroid/graphics/Paint;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/snapchat/android/ui/swipefilters/FilterPage;->a:Landroid/graphics/Paint;

    .line 43
    return-void
.end method

.method public a(ZLandroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()Lcom/snapchat/android/ui/swipefilters/FilterPageType;
.end method

.method public c()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/snapchat/android/ui/swipefilters/FilterPage;->a:Landroid/graphics/Paint;

    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 70
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    .line 72
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/ui/swipefilters/FilterPage;

    if-nez v0, :cond_1

    .line 73
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :cond_1
    check-cast p1, Lcom/snapchat/android/ui/swipefilters/FilterPage;

    .line 77
    invoke-virtual {p0}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
