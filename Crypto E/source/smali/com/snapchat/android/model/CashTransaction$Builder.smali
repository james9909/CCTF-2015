.class public Lcom/snapchat/android/model/CashTransaction$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/CashTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAmount:I

.field private mCashRecipientId:Ljava/lang/String;

.field private mCashSenderId:Ljava/lang/String;

.field private mCreatedAt:J

.field private mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

.field private mFromRain:Z

.field private mId:Ljava/lang/String;

.field private mIsFromServer:Z

.field private mMessage:Ljava/lang/String;

.field private mProvider:Ljava/lang/String;

.field private mRecipient:Ljava/lang/String;

.field private mSender:Ljava/lang/String;

.field private mStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

.field private mUpdatedAt:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mSender:Ljava/lang/String;

    .line 314
    iput-object p2, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mRecipient:Ljava/lang/String;

    .line 315
    iput p3, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mAmount:I

    .line 316
    sget-object v0, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->USD:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    iput-object v0, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mCreatedAt:J

    .line 318
    iget-wide v0, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mCreatedAt:J

    iput-wide v0, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mUpdatedAt:J

    .line 319
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->INITIATED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 320
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/server/ServerCashTransaction;)Lcom/snapchat/android/model/CashTransaction;
    .locals 4
    .parameter

    .prologue
    .line 404
    new-instance v0, Lcom/snapchat/android/model/CashTransaction$Builder;

    iget-object v1, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mSenderUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mRecipientUsername:Ljava/lang/String;

    iget v3, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mAmount:I

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/model/CashTransaction$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 405
    iget-object v1, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mTransactionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction$Builder;->c(Ljava/lang/String;)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mCashSenderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/CashTransaction$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mCashRecipientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/CashTransaction$Builder;->b(Ljava/lang/String;)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mCurrencyCode:Ljava/lang/String;

    invoke-static {v2}, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/CashTransaction$Builder;->a(Lcom/snapchat/android/util/CashUtils$CurrencyCode;)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/CashTransaction$Builder;->d(Ljava/lang/String;)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mCreatedTimestamp:J

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/model/CashTransaction$Builder;->b(J)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mUpdatedTimestamp:J

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/model/CashTransaction$Builder;->a(J)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/CashTransaction$Builder;->e(Ljava/lang/String;)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/CashTransaction$Builder;->b(Z)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mFromRain:Z

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/CashTransaction$Builder;->a(Z)Lcom/snapchat/android/model/CashTransaction$Builder;

    .line 416
    iget v1, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mTransactionStatusCode:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mTransactionStatusCode:I

    invoke-static {}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->values()[Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 418
    invoke-static {}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->values()[Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mTransactionStatusCode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction$Builder;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)Lcom/snapchat/android/model/CashTransaction$Builder;

    .line 420
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction$Builder;->a()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    .line 421
    iget-boolean v1, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mIsViewedBySender:Z

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->d(Lcom/snapchat/android/model/CashTransaction;Z)Z

    .line 422
    iget-boolean v1, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mIsViewedByRecipient:Z

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->e(Lcom/snapchat/android/model/CashTransaction;Z)Z

    .line 423
    iget-boolean v1, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mIsSavedBySender:Z

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->f(Lcom/snapchat/android/model/CashTransaction;Z)Z

    .line 424
    iget v1, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mSenderSaveVersion:I

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction;I)I

    .line 425
    iget-boolean v1, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mIsSavedByRecipient:Z

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->g(Lcom/snapchat/android/model/CashTransaction;Z)Z

    .line 426
    iget v1, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mRecipientSaveVersion:I

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->b(Lcom/snapchat/android/model/CashTransaction;I)I

    .line 427
    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/snapchat/android/model/CashTransaction$Builder;
    .locals 1
    .parameter

    .prologue
    .line 353
    iput-wide p1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mUpdatedAt:J

    .line 354
    return-object p0
.end method

.method public a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)Lcom/snapchat/android/model/CashTransaction$Builder;
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 364
    return-object p0
.end method

.method public a(Lcom/snapchat/android/util/CashUtils$CurrencyCode;)Lcom/snapchat/android/model/CashTransaction$Builder;
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    .line 344
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/android/model/CashTransaction$Builder;
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mCashSenderId:Ljava/lang/String;

    .line 324
    return-object p0
.end method

.method public a(Z)Lcom/snapchat/android/model/CashTransaction$Builder;
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mFromRain:Z

    .line 349
    return-object p0
.end method

.method public a()Lcom/snapchat/android/model/CashTransaction;
    .locals 5

    .prologue
    .line 378
    new-instance v0, Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mSender:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mRecipient:Ljava/lang/String;

    iget v3, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mAmount:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/model/CashTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/snapchat/android/model/CashTransaction$1;)V

    .line 384
    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 385
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mId:Ljava/lang/String;

    .line 386
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Z)V

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mCashSenderId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 390
    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mCashRecipientId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->b(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->c(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/util/CashUtils$CurrencyCode;)Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    .line 393
    iget-boolean v1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mFromRain:Z

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction;Z)Z

    .line 394
    iget-wide v2, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mCreatedAt:J

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction;J)J

    .line 395
    iget-wide v2, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mUpdatedAt:J

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/model/CashTransaction;->b(Lcom/snapchat/android/model/CashTransaction;J)J

    .line 396
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->b(Lcom/snapchat/android/model/CashTransaction;Z)Z

    .line 397
    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 398
    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mProvider:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->d(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 399
    iget-boolean v1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mIsFromServer:Z

    invoke-static {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->c(Lcom/snapchat/android/model/CashTransaction;Z)Z

    .line 400
    return-object v0
.end method

.method public b(J)Lcom/snapchat/android/model/CashTransaction$Builder;
    .locals 1
    .parameter

    .prologue
    .line 358
    iput-wide p1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mCreatedAt:J

    .line 359
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/snapchat/android/model/CashTransaction$Builder;
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mCashRecipientId:Ljava/lang/String;

    .line 329
    return-object p0
.end method

.method public b(Z)Lcom/snapchat/android/model/CashTransaction$Builder;
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mIsFromServer:Z

    .line 374
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/snapchat/android/model/CashTransaction$Builder;
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mId:Ljava/lang/String;

    .line 334
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/snapchat/android/model/CashTransaction$Builder;
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mMessage:Ljava/lang/String;

    .line 339
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/snapchat/android/model/CashTransaction$Builder;
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction$Builder;->mProvider:Ljava/lang/String;

    .line 369
    return-object p0
.end method
