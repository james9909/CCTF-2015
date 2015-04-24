.class public Lcom/snapchat/android/util/EmojiUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:[B

.field public static b:[B

.field public static c:[B

.field public static d:[B

.field public static e:I

.field public static f:[B

.field public static g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 19
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/snapchat/android/util/EmojiUtils;->a:[B

    .line 20
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/snapchat/android/util/EmojiUtils;->b:[B

    .line 21
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/snapchat/android/util/EmojiUtils;->c:[B

    .line 22
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/snapchat/android/util/EmojiUtils;->d:[B

    .line 24
    const/16 v0, 0x263a

    sput v0, Lcom/snapchat/android/util/EmojiUtils;->e:I

    .line 25
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/snapchat/android/util/EmojiUtils;->f:[B

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/snapchat/android/util/EmojiUtils;->g:[B

    return-void

    .line 19
    nop

    :array_0
    .array-data 0x1
        0xf0t
        0x9ft
        0x98t
        0x9et
    .end array-data

    .line 20
    :array_1
    .array-data 0x1
        0xf0t
        0x9ft
        0x98t
        0x8ft
    .end array-data

    .line 21
    :array_2
    .array-data 0x1
        0xf0t
        0x9ft
        0x99t
        0x88t
    .end array-data

    .line 22
    :array_3
    .array-data 0x1
        0xf0t
        0x9ft
        0x99t
        0x8bt
    .end array-data

    .line 25
    :array_4
    .array-data 0x1
        0xf0t
        0x9ft
        0x98t
        0x81t
    .end array-data

    .line 26
    :array_5
    .array-data 0x1
        0xe2t
        0x9ct
        0x8ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 29
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 33
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-static {}, Lcom/snapchat/android/util/chat/EmojiDetector;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_2

    .line 47
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    check-cast v0, Landroid/text/Spannable;

    move v1, v2

    .line 49
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    sget v5, Lcom/snapchat/android/util/EmojiUtils;->e:I

    if-ne v4, v5, :cond_0

    .line 52
    new-instance v4, Landroid/text/style/TypefaceSpan;

    invoke-direct {v4, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v0, v4, v1, v5, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 49
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_2
    return-void
.end method
