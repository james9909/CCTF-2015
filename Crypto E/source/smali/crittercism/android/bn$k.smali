.class public final Lcrittercism/android/bn$k;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/bm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/bn$k;->a:Ljava/lang/String;

    .line 203
    invoke-static {}, Lcrittercism/android/bn;->b()Landroid/content/Context;

    .line 204
    invoke-static {}, Lcrittercism/android/bn;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bn$k;->a:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcrittercism/android/bn$k;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/bn$k;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 206
    :cond_0
    const-string v0, "en"

    iput-object v0, p0, Lcrittercism/android/bn$k;->a:Ljava/lang/String;

    .line 208
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const-string v0, "locale"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcrittercism/android/bn$k;->a:Ljava/lang/String;

    return-object v0
.end method
