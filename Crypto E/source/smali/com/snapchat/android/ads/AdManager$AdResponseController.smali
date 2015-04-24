.class public Lcom/snapchat/android/ads/AdManager$AdResponseController;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ads/AdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdResponseController"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ads/AdManager;

.field private b:Lcom/snapchat/android/ads/AdPlacement;

.field private c:Lcom/snapchat/android/ads/AdTransformListener;

.field private d:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

.field private e:Z

.field private f:Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ads/AdManager;Lcom/snapchat/android/ads/AdPlacement;Lcom/snapchat/android/ads/AdTransformListener;Lcom/google/android/gms/ads/doubleclick/PublisherAdView;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->a:Lcom/snapchat/android/ads/AdManager;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->e:Z

    .line 288
    iput-object p2, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->b:Lcom/snapchat/android/ads/AdPlacement;

    .line 289
    iput-object p3, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->c:Lcom/snapchat/android/ads/AdTransformListener;

    .line 290
    iput-object p4, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->d:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 291
    return-void
.end method


# virtual methods
.method a()Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->d:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    return-object v0
.end method

.method protected a(Ljava/lang/String;Lcom/snapchat/android/ads/AdPlacement;)Lcom/snapchat/android/api2/framework/HyperRequestTask;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 405
    new-instance v0, Lcom/snapchat/android/ads/AdManager$AdResponseController$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/snapchat/android/ads/AdManager$AdResponseController$1;-><init>(Lcom/snapchat/android/ads/AdManager$AdResponseController;Ljava/lang/String;Lcom/snapchat/android/ads/AdPlacement;)V

    return-object v0
.end method

.method protected a(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 374
    const-string v0, "ERROR_CODE_UNKNOWN"

    .line 375
    packed-switch p1, :pswitch_data_0

    .line 381
    :goto_0
    const-string v1, "%s(%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 376
    :pswitch_0
    const-string v0, "ERROR_CODE_INTERNAL_ERROR"

    goto :goto_0

    .line 377
    :pswitch_1
    const-string v0, "ERROR_CODE_INVALID_REQUEST"

    goto :goto_0

    .line 378
    :pswitch_2
    const-string v0, "ERROR_CODE_NETWORK_ERROR"

    goto :goto_0

    .line 379
    :pswitch_3
    const-string v0, "ERROR_CODE_NO_FILL"

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 296
    .line 298
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 299
    const-string v0, "AdManager"

    const-string v2, "extractJSONData(%s) for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->b:Lcom/snapchat/android/ads/AdPlacement;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    const-string v0, "content"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 302
    :try_start_1
    const-string v2, "imp-url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->g:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    :goto_0
    return-object v0

    .line 303
    :catch_0
    move-exception v0

    move-object v0, p1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 3
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->a:Lcom/snapchat/android/ads/AdManager;

    iget-object v0, v0, Lcom/snapchat/android/ads/AdManager;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->b:Lcom/snapchat/android/ads/AdPlacement;

    invoke-virtual {v1}, Lcom/snapchat/android/ads/AdPlacement;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->c:Lcom/snapchat/android/ads/AdTransformListener;

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Lcom/snapchat/android/ads/AdTransformResponse$Builder;

    invoke-direct {v0}, Lcom/snapchat/android/ads/AdTransformResponse$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ads/AdTransformResponse$Builder;->a(Ljava/lang/Exception;)Lcom/snapchat/android/ads/AdTransformResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ads/AdTransformResponse$Builder;->a()Lcom/snapchat/android/ads/AdTransformResponse;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->c:Lcom/snapchat/android/ads/AdTransformListener;

    iget-object v2, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->b:Lcom/snapchat/android/ads/AdPlacement;

    invoke-interface {v1, v2, v0}, Lcom/snapchat/android/ads/AdTransformListener;->a(Lcom/snapchat/android/ads/AdPlacement;Lcom/snapchat/android/ads/AdTransformResponse;)V

    .line 398
    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 320
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EXPLICIT_NO_FILL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    :cond_0
    const-string v0, "Empty adUnitUrl in handleAdResponse"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ads/AdManager$AdResponseController;->c(Ljava/lang/String;)V

    .line 360
    :cond_1
    :goto_0
    return-void

    .line 326
    :cond_2
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {}, Lcom/snapchat/android/ads/AdManager;->c()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 329
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 332
    :cond_3
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ads/AdManager$AdResponseController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_4

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 339
    :cond_4
    const-string v1, "Invalid adUnitURL \'%s\' in handleAdResponse"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ads/AdManager$AdResponseController;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_5
    iget-object v1, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->c:Lcom/snapchat/android/ads/AdTransformListener;

    if-eqz v1, :cond_6

    .line 345
    new-instance v1, Lcom/snapchat/android/ads/AdTransformResponse$Builder;

    invoke-direct {v1}, Lcom/snapchat/android/ads/AdTransformResponse$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ads/AdTransformResponse$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/ads/AdTransformResponse$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/ads/AdTransformResponse$Builder;->a()Lcom/snapchat/android/ads/AdTransformResponse;

    move-result-object v1

    .line 349
    const-string v2, "AdManager"

    const-string v3, "onTransformationComplete for %s with url %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->b:Lcom/snapchat/android/ads/AdPlacement;

    aput-object v5, v4, v7

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->c:Lcom/snapchat/android/ads/AdTransformListener;

    iget-object v2, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->b:Lcom/snapchat/android/ads/AdPlacement;

    invoke-interface {v0, v2, v1}, Lcom/snapchat/android/ads/AdTransformListener;->a(Lcom/snapchat/android/ads/AdPlacement;Lcom/snapchat/android/ads/AdTransformResponse;)V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->c:Lcom/snapchat/android/ads/AdTransformListener;

    .line 357
    :cond_6
    iget-boolean v0, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->e:Z

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/snapchat/android/ads/AdManager$AdResponseController;->c()V

    goto :goto_0
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->f:Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/snapchat/android/ads/AdManager$AdResponseController;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->b:Lcom/snapchat/android/ads/AdPlacement;

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ads/AdManager$AdResponseController;->a(Ljava/lang/String;Lcom/snapchat/android/ads/AdPlacement;)Lcom/snapchat/android/api2/framework/HyperRequestTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/framework/HyperRequestTask;->g()V

    .line 445
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->a:Lcom/snapchat/android/ads/AdManager;

    iget-object v0, v0, Lcom/snapchat/android/ads/AdManager;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->b:Lcom/snapchat/android/ads/AdPlacement;

    invoke-virtual {v1}, Lcom/snapchat/android/ads/AdPlacement;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :goto_1
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->f:Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;->recordImpression()V

    goto :goto_0

    .line 447
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->e:Z

    goto :goto_1
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 385
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ads/AdManager$AdResponseController;->a(Ljava/lang/Exception;)V

    .line 386
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 6
    .parameter

    .prologue
    .line 364
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 366
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ads/AdManager$AdResponseController;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    const-string v1, "AdManager"

    const-string v2, "onAdFailedToLoad(%s) for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->b:Lcom/snapchat/android/ads/AdPlacement;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ads/AdManager$AdResponseController;->c(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public onCustomRenderedAdLoaded(Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;)V
    .locals 1
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController;->f:Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;

    .line 314
    invoke-interface {p1}, Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ads/AdManager$AdResponseController;->b(Ljava/lang/String;)V

    .line 315
    return-void
.end method
