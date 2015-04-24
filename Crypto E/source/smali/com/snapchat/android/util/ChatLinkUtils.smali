.class public Lcom/snapchat/android/util/ChatLinkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/ChatLinkUtils$TransformFilter;,
        Lcom/snapchat/android/util/ChatLinkUtils$MatchFilter;
    }
.end annotation


# static fields
.field public static final a:Lcom/snapchat/android/util/ChatLinkUtils$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/snapchat/android/util/ChatLinkUtils$1;

    invoke-direct {v0}, Lcom/snapchat/android/util/ChatLinkUtils$1;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/ChatLinkUtils;->a:Lcom/snapchat/android/util/ChatLinkUtils$MatchFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    return-void
.end method

.method private static final a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/snapchat/android/util/ChatLinkUtils$TransformFilter;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 275
    if-eqz p3, :cond_1

    .line 276
    invoke-interface {p3, p2, p0}, Lcom/snapchat/android/util/ChatLinkUtils$TransformFilter;->a(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move v9, v2

    .line 281
    :goto_1
    array-length v0, p1

    if-ge v9, v0, :cond_4

    .line 282
    aget-object v3, p1, v9

    aget-object v0, p1, v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    aget-object v6, p1, v9

    aget-object v0, p1, v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, p0

    move v4, v2

    move v5, v2

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, p1, v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    .line 296
    :goto_2
    if-nez v1, :cond_0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_3
    move-object v0, p0

    goto :goto_2

    :cond_4
    move v1, v2

    move-object v0, p0

    goto :goto_2
.end method

.method private static final a(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    .line 259
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_0

    instance-of v0, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_1

    .line 262
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 266
    :cond_1
    return-void
.end method

.method private static final a(Lcom/snapchat/android/model/chat/ISavableChatFeedItem;Lcom/snapchat/android/util/chat/UrlType;Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    new-instance v0, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;

    invoke-direct {v0, p2, p0, p1}, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;-><init>(Ljava/lang/String;Lcom/snapchat/android/model/chat/ISavableChatFeedItem;Lcom/snapchat/android/util/chat/UrlType;)V

    .line 270
    const/16 v1, 0x21

    invoke-interface {p5, v0, p3, p4, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 271
    return-void
.end method

.method private static final a(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 375
    new-instance v0, Lcom/snapchat/android/util/ChatLinkUtils$2;

    invoke-direct {v0}, Lcom/snapchat/android/util/ChatLinkUtils$2;-><init>()V

    .line 401
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 403
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 404
    const/4 v2, 0x0

    move v4, v0

    .line 406
    :goto_0
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_3

    .line 407
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/LinkSpec;

    .line 408
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/util/LinkSpec;

    .line 411
    iget v5, v0, Lcom/snapchat/android/util/LinkSpec;->c:I

    iget v6, v1, Lcom/snapchat/android/util/LinkSpec;->c:I

    if-gt v5, v6, :cond_2

    iget v5, v0, Lcom/snapchat/android/util/LinkSpec;->d:I

    iget v6, v1, Lcom/snapchat/android/util/LinkSpec;->c:I

    if-le v5, v6, :cond_2

    .line 412
    iget v5, v1, Lcom/snapchat/android/util/LinkSpec;->d:I

    iget v6, v0, Lcom/snapchat/android/util/LinkSpec;->d:I

    if-gt v5, v6, :cond_0

    .line 413
    add-int/lit8 v0, v2, 0x1

    .line 420
    :goto_1
    if-eq v0, v3, :cond_2

    .line 421
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 422
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    .line 423
    goto :goto_0

    .line 414
    :cond_0
    iget v5, v0, Lcom/snapchat/android/util/LinkSpec;->d:I

    iget v6, v0, Lcom/snapchat/android/util/LinkSpec;->c:I

    sub-int/2addr v5, v6

    iget v6, v1, Lcom/snapchat/android/util/LinkSpec;->d:I

    iget v7, v1, Lcom/snapchat/android/util/LinkSpec;->c:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_1

    .line 415
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 416
    :cond_1
    iget v5, v0, Lcom/snapchat/android/util/LinkSpec;->d:I

    iget v0, v0, Lcom/snapchat/android/util/LinkSpec;->c:I

    sub-int v0, v5, v0

    iget v5, v1, Lcom/snapchat/android/util/LinkSpec;->d:I

    iget v1, v1, Lcom/snapchat/android/util/LinkSpec;->c:I

    sub-int v1, v5, v1

    if-ge v0, v1, :cond_4

    move v0, v2

    .line 417
    goto :goto_1

    .line 428
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 429
    goto :goto_0

    .line 430
    :cond_3
    return-void

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private static final a(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    const/4 v0, 0x0

    .line 330
    :goto_0
    invoke-static {v1}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 333
    if-gez v3, :cond_1

    .line 358
    :cond_0
    return-void

    .line 337
    :cond_1
    new-instance v4, Lcom/snapchat/android/util/LinkSpec;

    invoke-direct {v4}, Lcom/snapchat/android/util/LinkSpec;-><init>()V

    .line 338
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 339
    add-int/2addr v5, v3

    .line 341
    add-int/2addr v3, v0

    iput v3, v4, Lcom/snapchat/android/util/LinkSpec;->c:I

    .line 342
    add-int v3, v0, v5

    iput v3, v4, Lcom/snapchat/android/util/LinkSpec;->d:I

    .line 343
    sget-object v3, Lcom/snapchat/android/util/chat/UrlType;->a:Lcom/snapchat/android/util/chat/UrlType;

    iput-object v3, v4, Lcom/snapchat/android/util/LinkSpec;->b:Lcom/snapchat/android/util/chat/UrlType;

    .line 344
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 345
    add-int/2addr v0, v5

    .line 350
    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "geo:0,0?q="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/snapchat/android/util/LinkSpec;->a:Ljava/lang/String;

    .line 356
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static final a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/snapchat/android/util/ChatLinkUtils$MatchFilter;Lcom/snapchat/android/util/ChatLinkUtils$TransformFilter;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/util/ChatLinkUtils$MatchFilter;",
            "Lcom/snapchat/android/util/ChatLinkUtils$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 308
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 310
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 312
    if-eqz p4, :cond_1

    invoke-interface {p4, p1, v1, v2}, Lcom/snapchat/android/util/ChatLinkUtils$MatchFilter;->a(Ljava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    :cond_1
    new-instance v3, Lcom/snapchat/android/util/LinkSpec;

    invoke-direct {v3}, Lcom/snapchat/android/util/LinkSpec;-><init>()V

    .line 314
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3, v0, p5}, Lcom/snapchat/android/util/ChatLinkUtils;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/snapchat/android/util/ChatLinkUtils$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 316
    iput-object v4, v3, Lcom/snapchat/android/util/LinkSpec;->a:Ljava/lang/String;

    .line 317
    iput v1, v3, Lcom/snapchat/android/util/LinkSpec;->c:I

    .line 318
    iput v2, v3, Lcom/snapchat/android/util/LinkSpec;->d:I

    .line 320
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :cond_2
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/chat/Chat;Landroid/widget/TextView;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/Chat;->ap()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 209
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v3, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 211
    if-eqz v4, :cond_0

    array-length v1, v4

    if-eqz v1, :cond_0

    .line 212
    array-length v5, v4

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    move-object v0, v1

    .line 213
    check-cast v0, Landroid/text/style/URLSpan;

    .line 214
    new-instance v6, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/snapchat/android/util/chat/UrlType;->b:Lcom/snapchat/android/util/chat/UrlType;

    invoke-direct {v6, v7, p0, v8}, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;-><init>(Ljava/lang/String;Lcom/snapchat/android/model/chat/ISavableChatFeedItem;Lcom/snapchat/android/util/chat/UrlType;)V

    .line 215
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    const/16 v8, 0x21

    invoke-virtual {v3, v6, v7, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 217
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 212
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 219
    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final a(Lcom/snapchat/android/model/chat/ISavableChatFeedItem;Landroid/text/Spannable;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 172
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;

    invoke-interface {p1, v6, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/chat/SnapchatUrlSpan;

    .line 174
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 175
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 174
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 178
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "http://"

    aput-object v1, v3, v6

    const-string v1, "https://"

    aput-object v1, v3, v7

    const/4 v1, 0x2

    const-string v4, "rtsp://"

    aput-object v4, v3, v1

    sget-object v4, Lcom/snapchat/android/util/ChatLinkUtils;->a:Lcom/snapchat/android/util/ChatLinkUtils$MatchFilter;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/util/ChatLinkUtils;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/snapchat/android/util/ChatLinkUtils$MatchFilter;Lcom/snapchat/android/util/ChatLinkUtils$TransformFilter;)V

    .line 183
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    new-array v3, v7, [Ljava/lang/String;

    const-string v1, "mailto:"

    aput-object v1, v3, v6

    move-object v1, p1

    move-object v4, v5

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/util/ChatLinkUtils;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lcom/snapchat/android/util/ChatLinkUtils$MatchFilter;Lcom/snapchat/android/util/ChatLinkUtils$TransformFilter;)V

    .line 186
    invoke-static {v0, p1}, Lcom/snapchat/android/util/ChatLinkUtils;->a(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 187
    invoke-static {v0, p1}, Lcom/snapchat/android/util/ChatLinkUtils;->b(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 189
    invoke-static {v0}, Lcom/snapchat/android/util/ChatLinkUtils;->a(Ljava/util/ArrayList;)V

    .line 191
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    move v0, v6

    .line 199
    :goto_1
    return v0

    .line 195
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/LinkSpec;

    .line 196
    iget-object v1, v0, Lcom/snapchat/android/util/LinkSpec;->b:Lcom/snapchat/android/util/chat/UrlType;

    iget-object v2, v0, Lcom/snapchat/android/util/LinkSpec;->a:Ljava/lang/String;

    iget v3, v0, Lcom/snapchat/android/util/LinkSpec;->c:I

    iget v4, v0, Lcom/snapchat/android/util/LinkSpec;->d:I

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/util/ChatLinkUtils;->a(Lcom/snapchat/android/model/chat/ISavableChatFeedItem;Lcom/snapchat/android/util/chat/UrlType;Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_2

    :cond_2
    move v0, v7

    .line 199
    goto :goto_1
.end method

.method public static final a(Lcom/snapchat/android/model/chat/ISavableChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    instance-of v0, p0, Lcom/snapchat/android/model/chat/ChatUnknown;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/snapchat/android/model/chat/ChatText;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatText;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatText;->aq()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    check-cast p0, Lcom/snapchat/android/model/chat/Chat;

    invoke-static {p0, p1}, Lcom/snapchat/android/util/ChatLinkUtils;->a(Lcom/snapchat/android/model/chat/Chat;Landroid/widget/TextView;)Z

    move-result v0

    .line 254
    :goto_0
    return v0

    .line 236
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 238
    instance-of v3, v0, Landroid/text/Spannable;

    if-eqz v3, :cond_3

    .line 239
    check-cast v0, Landroid/text/Spannable;

    invoke-static {p0, v0}, Lcom/snapchat/android/util/ChatLinkUtils;->a(Lcom/snapchat/android/model/chat/ISavableChatFeedItem;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    invoke-static {p1}, Lcom/snapchat/android/util/ChatLinkUtils;->a(Landroid/widget/TextView;)V

    move v0, v1

    .line 241
    goto :goto_0

    :cond_2
    move v0, v2

    .line 244
    goto :goto_0

    .line 246
    :cond_3
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 247
    invoke-static {p0, v0}, Lcom/snapchat/android/util/ChatLinkUtils;->a(Lcom/snapchat/android/model/chat/ISavableChatFeedItem;Landroid/text/Spannable;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 248
    invoke-static {p1}, Lcom/snapchat/android/util/ChatLinkUtils;->a(Landroid/widget/TextView;)V

    .line 249
    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 251
    goto :goto_0

    :cond_4
    move v0, v2

    .line 254
    goto :goto_0
.end method

.method private static final b(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 361
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->a()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 362
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->a:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v0

    .line 364
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    .line 365
    new-instance v2, Lcom/snapchat/android/util/LinkSpec;

    invoke-direct {v2}, Lcom/snapchat/android/util/LinkSpec;-><init>()V

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/snapchat/android/util/LinkSpec;->a:Ljava/lang/String;

    .line 367
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;->a()I

    move-result v3

    iput v3, v2, Lcom/snapchat/android/util/LinkSpec;->c:I

    .line 368
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;->b()I

    move-result v0

    iput v0, v2, Lcom/snapchat/android/util/LinkSpec;->d:I

    .line 369
    sget-object v0, Lcom/snapchat/android/util/chat/UrlType;->c:Lcom/snapchat/android/util/chat/UrlType;

    iput-object v0, v2, Lcom/snapchat/android/util/LinkSpec;->b:Lcom/snapchat/android/util/chat/UrlType;

    .line 370
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 372
    :cond_0
    return-void
.end method
