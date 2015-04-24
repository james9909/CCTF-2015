.class public Lcom/snapchat/android/util/FontUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/res/AssetManager;)V
    .locals 1
    .parameter

    .prologue
    .line 13
    const-string v0, "Roboto-BoldCondensed.ttf"

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/util/FontUtils;->a:Landroid/graphics/Typeface;

    .line 14
    invoke-static {p0}, Lnet/simonvt/numberpicker/Util/FontUtils;->a(Landroid/content/res/AssetManager;)V

    .line 15
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/content/res/AssetManager;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    check-cast p0, Landroid/widget/TextView;

    sget-object v0, Lcom/snapchat/android/util/FontUtils;->a:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    return-void
.end method
