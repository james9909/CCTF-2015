.class public Lcom/snapchat/android/api2/cash/square/SquareProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/ICashProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/square/SquareProvider$5;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final CLIENT_IDENTITY:Ljava/lang/String; = "chartreuse"

.field public static final CLIENT_PARAM:Ljava/lang/String; = "client"

.field public static final NAME:Ljava/lang/String; = "SQUARE"

.field private static final TAG:Ljava/lang/String; = "SquareProvider"


# instance fields
.field protected mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public static a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 233
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    if-ne p0, v0, :cond_0

    .line 234
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 252
    :goto_0
    return-object v0

    .line 235
    :cond_0
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    if-ne p0, v0, :cond_4

    .line 236
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->EXPIRED_WAITING_ON_RECIPIENT:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    if-ne p1, v0, :cond_1

    .line 237
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->EXPIRED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    goto :goto_0

    .line 238
    :cond_1
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->RECIPIENT_CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    if-ne p1, v0, :cond_2

    .line 239
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->RECIPIENT_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    goto :goto_0

    .line 240
    :cond_2
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->SQUARE_CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    if-ne p1, v0, :cond_3

    .line 241
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    goto :goto_0

    .line 246
    :cond_3
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->SENDER_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    goto :goto_0

    .line 248
    :cond_4
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->COMPLETED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    if-ne p0, v0, :cond_5

    .line 249
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->COMPLETED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    goto :goto_0

    .line 252
    :cond_5
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->INITIATED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/api2/cash/blockers/Blocker;I)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 187
    sparse-switch p1, :sswitch_data_0

    .line 196
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 189
    :sswitch_0
    new-array v0, v2, [Lcom/snapchat/android/api2/cash/blockers/Blocker;

    new-instance v1, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;

    invoke-direct {v1, v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;-><init>(Z)V

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 191
    :sswitch_1
    instance-of v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    if-eqz v0, :cond_0

    .line 192
    new-array v0, v2, [Lcom/snapchat/android/api2/cash/blockers/Blocker;

    new-instance v1, Lcom/snapchat/android/api2/cash/blockers/square/SQConflictBlocker;

    invoke-direct {v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQConflictBlocker;-><init>()V

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 187
    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x199 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/CashTransaction;)Lcom/snapchat/android/api2/cash/square/DeleteCashPaymentTask;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 280
    new-instance v0, Lcom/snapchat/android/api2/cash/square/DeleteCashPaymentTask;

    invoke-direct {v0, p1}, Lcom/snapchat/android/api2/cash/square/DeleteCashPaymentTask;-><init>(Lcom/snapchat/android/model/CashTransaction;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "SQUARE"

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->i()Lcom/snapchat/android/api2/cash/blockers/Blocker;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/snapchat/android/api2/cash/square/SquareProvider$1;

    invoke-direct {v1, p0, p2}, Lcom/snapchat/android/api2/cash/square/SquareProvider$1;-><init>(Lcom/snapchat/android/api2/cash/square/SquareProvider;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;)V

    .line 135
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 136
    return-void
.end method

.method public a(Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const v3, 0x7f0c014f

    const/4 v2, 0x0

    .line 201
    if-eqz p2, :cond_0

    .line 202
    sget-object v0, Lcom/snapchat/android/api2/cash/square/SquareProvider$5;->$SwitchMap$com$snapchat$android$api2$cash$square$data$CashPayment$CancellationReason:[I

    invoke-virtual {p2}, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 219
    const-string v0, "OTHER"

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->q(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareProvider;->mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3, v1}, Lcom/snapchat/android/api2/cash/CashErrorReporter;->a(Lcom/snapchat/android/model/CashTransaction;I[Ljava/lang/Object;)V

    .line 227
    :goto_0
    return-void

    .line 204
    :pswitch_0
    const-string v0, "CARD_DECLINED"

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->q(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareProvider;->mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;

    const v1, 0x7f0c014d

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/snapchat/android/api2/cash/CashErrorReporter;->a(Lcom/snapchat/android/model/CashTransaction;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 208
    :pswitch_1
    const-string v0, "LIMIT_EXCEEDED"

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->q(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareProvider;->mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;

    const v1, 0x7f0c014b

    const v2, 0x7f0c0150

    invoke-virtual {v0, p1, v1, v2}, Lcom/snapchat/android/api2/cash/CashErrorReporter;->a(Lcom/snapchat/android/model/CashTransaction;II)V

    goto :goto_0

    .line 214
    :pswitch_2
    const-string v0, "SQUARE_CANCELED"

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->q(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareProvider;->mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;

    const v1, 0x7f0c0153

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/snapchat/android/api2/cash/CashErrorReporter;->a(Lcom/snapchat/android/model/CashTransaction;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 224
    :cond_0
    const-string v0, "UNKNOWN"

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->q(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareProvider;->mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3, v1}, Lcom/snapchat/android/api2/cash/CashErrorReporter;->a(Lcom/snapchat/android/model/CashTransaction;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 143
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must have verified phone number before calling SquareProvider#getAccessToken!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->D()V

    .line 148
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;

    invoke-direct {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/util/ListUtils;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 149
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->b(Lcom/snapchat/android/model/CashTransaction;)Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V

    .line 150
    return-void
.end method

.method protected b(Lcom/snapchat/android/model/CashTransaction;)Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 286
    new-instance v0, Lcom/snapchat/android/api2/cash/square/SquareProvider$4;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/api2/cash/square/SquareProvider$4;-><init>(Lcom/snapchat/android/api2/cash/square/SquareProvider;Lcom/snapchat/android/model/CashTransaction;)V

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->U()V

    .line 158
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->i()Lcom/snapchat/android/api2/cash/blockers/Blocker;

    move-result-object v0

    .line 159
    new-instance v1, Lcom/snapchat/android/api2/cash/square/SquareProvider$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/api2/cash/square/SquareProvider$2;-><init>(Lcom/snapchat/android/api2/cash/square/SquareProvider;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;)V

    .line 182
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 183
    return-void
.end method

.method public c()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/api2/cash/blockers/Blocker;

    const/4 v1, 0x0

    new-instance v2, Lcom/snapchat/android/api2/cash/blockers/snapchat/LocalSQAcceptTermsBlocker;

    invoke-direct {v2}, Lcom/snapchat/android/api2/cash/blockers/snapchat/LocalSQAcceptTermsBlocker;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    invoke-direct {v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->af()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;

    invoke-direct {v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    return-object v0
.end method

.method public e()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/snapchat/android/api2/cash/blockers/Blocker;

    const/4 v1, 0x0

    new-instance v2, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    invoke-direct {v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/api2/cash/blockers/Blocker;

    const/4 v1, 0x0

    new-instance v2, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;

    invoke-direct {v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;

    invoke-direct {v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/api2/cash/blockers/Blocker;

    const/4 v1, 0x0

    new-instance v2, Lcom/snapchat/android/api2/cash/blockers/snapchat/LocalSQAcceptTermsBlocker;

    invoke-direct {v2}, Lcom/snapchat/android/api2/cash/blockers/snapchat/LocalSQAcceptTermsBlocker;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;

    invoke-direct {v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveReceivingCashPaymentBlocker;

    invoke-direct {v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveReceivingCashPaymentBlocker;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/snapchat/android/api2/cash/blockers/Blocker;

    const/4 v1, 0x0

    new-instance v2, Lcom/snapchat/android/api2/cash/blockers/square/SQUpdateReceivedCashPaymentBlocker;

    invoke-direct {v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQUpdateReceivedCashPaymentBlocker;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected i()Lcom/snapchat/android/api2/cash/blockers/Blocker;
    .locals 1

    .prologue
    .line 257
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;

    invoke-direct {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;-><init>()V

    return-object v0
.end method

.method protected j()Lcom/snapchat/android/api2/cash/square/SquareRequestTask;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Lcom/snapchat/android/api2/cash/square/RetrieveCashCustomerStatusTask;

    new-instance v1, Lcom/snapchat/android/api2/cash/square/SquareProvider$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/api2/cash/square/SquareProvider$3;-><init>(Lcom/snapchat/android/api2/cash/square/SquareProvider;)V

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/cash/square/RetrieveCashCustomerStatusTask;-><init>(Lcom/snapchat/android/api2/cash/square/SquareCashCustomerStatusCallback;)V

    return-object v0
.end method
