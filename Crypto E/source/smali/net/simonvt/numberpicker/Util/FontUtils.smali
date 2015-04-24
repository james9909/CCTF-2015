.class public Lnet/simonvt/numberpicker/Util/FontUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/res/AssetManager;)V
    .locals 1
    .parameter

    .prologue
    .line 14
    const-string v0, "Roboto-Light.ttf"

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lnet/simonvt/numberpicker/Util/FontUtils;->a:Landroid/graphics/Typeface;

    .line 15
    return-void
.end method
