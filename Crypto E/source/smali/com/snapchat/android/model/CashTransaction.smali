.class public Lcom/snapchat/android/model/CashTransaction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/CashTransaction$1;,
        Lcom/snapchat/android/model/CashTransaction$Builder;,
        Lcom/snapchat/android/model/CashTransaction$TransactionStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAmount:I

.field private mCashRecipientId:Ljava/lang/String;

.field private mCashSenderId:Ljava/lang/String;

.field private mConversationId:Ljava/lang/String;

.field private mCreatedTimestamp:J

.field private mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

.field private mFromRain:Z

.field private mIsFromServer:Z

.field private mIsInFlight:Z

.field private mIsInvisible:Z

.field private mIsSavedByRecipient:Z

.field private mIsSavedBySender:Z

.field private mIsViewedByRecipient:Z

.field private mIsViewedBySender:Z

.field private mMessage:Ljava/lang/String;

.field private mProvider:Ljava/lang/String;

.field private mRecipientBankStatementMessage:Ljava/lang/String;

.field private mRecipientSaveVersion:I

.field private mRecipientUsername:Ljava/lang/String;

.field private mSecurityCode:Ljava/lang/String;

.field private mSenderBankStatementMessage:Ljava/lang/String;

.field private mSenderSaveVersion:I

.field private mSenderUsername:Ljava/lang/String;

.field private mSignature:Ljava/lang/String;

.field private mTransactionId:Ljava/lang/String;

.field private mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

.field private mUpdatedTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/model/CashTransaction;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mSenderUsername:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    .line 61
    iput p3, p0, Lcom/snapchat/android/model/CashTransaction;->mAmount:I

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/model/CashTransaction;->mSenderUsername:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/CashTransaction;->mConversationId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/snapchat/android/model/CashTransaction$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/model/CashTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/model/CashTransaction;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput p1, p0, Lcom/snapchat/android/model/CashTransaction;->mSenderSaveVersion:I

    return p1
.end method

.method static synthetic a(Lcom/snapchat/android/model/CashTransaction;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/snapchat/android/model/CashTransaction;->mCreatedTimestamp:J

    return-wide p1
.end method

.method static synthetic a(Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/util/CashUtils$CurrencyCode;)Lcom/snapchat/android/util/CashUtils$CurrencyCode;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mCashSenderId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/model/CashTransaction;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction;->mFromRain:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/model/CashTransaction;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput p1, p0, Lcom/snapchat/android/model/CashTransaction;->mRecipientSaveVersion:I

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/model/CashTransaction;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/snapchat/android/model/CashTransaction;->mUpdatedTimestamp:J

    return-wide p1
.end method

.method static synthetic b(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mCashRecipientId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/snapchat/android/model/CashTransaction;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction;->mIsInvisible:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/snapchat/android/model/CashTransaction;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction;->mIsFromServer:Z

    return p1
.end method

.method static synthetic d(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mProvider:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/snapchat/android/model/CashTransaction;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction;->mIsViewedBySender:Z

    return p1
.end method

.method static synthetic e(Lcom/snapchat/android/model/CashTransaction;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction;->mIsViewedByRecipient:Z

    return p1
.end method

.method static synthetic f(Lcom/snapchat/android/model/CashTransaction;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction;->mIsSavedBySender:Z

    return p1
.end method

.method static synthetic g(Lcom/snapchat/android/model/CashTransaction;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction;->mIsSavedByRecipient:Z

    return p1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/snapchat/android/model/CashTransaction;->mSenderBankStatementMessage:Ljava/lang/String;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/snapchat/android/model/CashTransaction;->mRecipientBankStatementMessage:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/model/CashTransaction;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput p1, p0, Lcom/snapchat/android/model/CashTransaction;->mAmount:I

    .line 97
    return-void
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 194
    iput-wide p1, p0, Lcom/snapchat/android/model/CashTransaction;->mCreatedTimestamp:J

    .line 195
    return-void
.end method

.method public a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V
    .locals 5
    .parameter

    .prologue
    .line 226
    sget-object v0, Lcom/snapchat/android/model/CashTransaction;->TAG:Ljava/lang/String;

    const-string v1, "CASH-LOG: SETTING transaction status to %s id[%s] sender[%s] recipient[%s] amount[%s]"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/snapchat/android/model/CashTransaction;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/snapchat/android/model/CashTransaction;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 229
    return-void
.end method

.method public a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 254
    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->q()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/CashTransaction;->c(Z)V

    .line 255
    invoke-virtual {p0}, Lcom/snapchat/android/model/CashTransaction;->t()I

    move-result v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->t()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 256
    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->s()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/CashTransaction;->e(Z)V

    .line 257
    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->t()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/CashTransaction;->b(I)V

    .line 259
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction;->mIsInFlight:Z

    .line 105
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput p1, p0, Lcom/snapchat/android/model/CashTransaction;->mSenderSaveVersion:I

    .line 215
    return-void
.end method

.method public b(J)V
    .locals 1
    .parameter

    .prologue
    .line 198
    iput-wide p1, p0, Lcom/snapchat/android/model/CashTransaction;->mUpdatedTimestamp:J

    .line 199
    return-void
.end method

.method public b(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 262
    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->r()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/CashTransaction;->d(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/snapchat/android/model/CashTransaction;->v()I

    move-result v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->v()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 264
    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->u()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/CashTransaction;->f(Z)V

    .line 265
    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->v()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/CashTransaction;->c(I)V

    .line 267
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mCashSenderId:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction;->mIsFromServer:Z

    .line 113
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/snapchat/android/model/CashTransaction;->mCashSenderId:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput p1, p0, Lcom/snapchat/android/model/CashTransaction;->mRecipientSaveVersion:I

    .line 223
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mCashRecipientId:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction;->mIsViewedBySender:Z

    .line 203
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/snapchat/android/model/CashTransaction;->mSenderUsername:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mSignature:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction;->mIsViewedByRecipient:Z

    .line 207
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/snapchat/android/model/CashTransaction;->mCashRecipientId:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mProvider:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction;->mIsSavedBySender:Z

    .line 211
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mMessage:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public f(Z)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/snapchat/android/model/CashTransaction;->mIsSavedByRecipient:Z

    .line 219
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/snapchat/android/model/CashTransaction;->mAmount:I

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mSecurityCode:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mSenderBankStatementMessage:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/snapchat/android/model/CashTransaction;->mIsInFlight:Z

    return v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/snapchat/android/model/CashTransaction;->mRecipientBankStatementMessage:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/snapchat/android/model/CashTransaction;->mIsFromServer:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/snapchat/android/model/CashTransaction;->g()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_0

    .line 118
    const-string v0, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/model/CashTransaction;->g()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%.2f"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/model/CashTransaction;->g()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public k()Lcom/snapchat/android/util/CashUtils$CurrencyCode;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/snapchat/android/model/CashTransaction;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/model/CashTransaction;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public m()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/snapchat/android/model/CashTransaction;->mCreatedTimestamp:J

    return-wide v0
.end method

.method public n()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/snapchat/android/model/CashTransaction;->mUpdatedTimestamp:J

    return-wide v0
.end method

.method public o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/snapchat/android/model/CashTransaction;->mIsInvisible:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/snapchat/android/model/CashTransaction;->mIsViewedBySender:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/snapchat/android/model/CashTransaction;->mIsViewedByRecipient:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/snapchat/android/model/CashTransaction;->mIsSavedBySender:Z

    return v0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/snapchat/android/model/CashTransaction;->mSenderSaveVersion:I

    return v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/snapchat/android/model/CashTransaction;->mIsSavedByRecipient:Z

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/snapchat/android/model/CashTransaction;->mRecipientSaveVersion:I

    return v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/snapchat/android/model/CashTransaction;->mFromRain:Z

    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/snapchat/android/model/CashTransaction;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/snapchat/android/model/CashTransaction;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/snapchat/android/model/CashTransaction;->mSecurityCode:Ljava/lang/String;

    return-object v0
.end method
