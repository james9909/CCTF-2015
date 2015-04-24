.class public Lcom/snapchat/android/util/CashUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/CashUtils$1;,
        Lcom/snapchat/android/util/CashUtils$CurrencyCode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 110
    if-eqz p2, :cond_5

    .line 111
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    .line 112
    if-eqz p1, :cond_4

    .line 114
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/model/chat/CashFeedItem;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object p1, v0

    .line 167
    :cond_0
    :goto_0
    return-object p1

    .line 117
    :cond_1
    const-string v0, "CashUtils"

    const-string v2, "CASH-LOG: Cash Item %s is being updated"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v2

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    invoke-static {p1}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->b(Lcom/snapchat/android/model/CashTransaction;)V

    .line 135
    :goto_1
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->K()Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 136
    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->h()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/CashTransaction;->a(Z)V

    .line 137
    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->i()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/CashTransaction;->b(Z)V

    .line 138
    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->m()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/CashTransaction;->a(J)V

    .line 139
    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->n()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/CashTransaction;->b(J)V

    .line 141
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->A()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction;)V

    goto :goto_1

    .line 130
    :cond_3
    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 132
    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 133
    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->b(Lcom/snapchat/android/model/CashTransaction;)V

    goto :goto_1

    .line 147
    :cond_4
    invoke-virtual {p0, p2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    move-object p1, p2

    .line 148
    goto :goto_0

    .line 154
    :cond_5
    if-eqz p1, :cond_6

    .line 155
    const-string v0, "CashUtils"

    const-string v1, "CASH-LOG: Cash Item is not found on server for %s "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->INITIATED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/model/CashTransaction;)V

    goto/16 :goto_0

    :cond_6
    move-object p1, v0

    .line 167
    goto/16 :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 67
    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    .line 68
    const-string v0, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    div-int/lit8 v2, p0, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%.2f"

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float v2, p0

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(ILcom/snapchat/android/util/CashUtils$CurrencyCode;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    sget-object v1, Lcom/snapchat/android/util/CashUtils$1;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 33
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 34
    rem-int/lit8 v2, p0, 0x64

    if-eqz v2, :cond_0

    .line 35
    const/4 v0, 0x2

    .line 37
    :cond_0
    int-to-double v2, p0

    const-wide/high16 v4, 0x4059

    div-double/2addr v2, v4

    .line 40
    invoke-static {v2, v3, v1, v0}, Lcom/snapchat/android/util/NumberFormatUtils;->a(DLjava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v0

    .line 177
    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->COMPLETED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 183
    :cond_0
    invoke-virtual {p0, v3}, Lcom/snapchat/android/model/CashTransaction;->d(Z)V

    .line 184
    invoke-virtual {p0, v2}, Lcom/snapchat/android/model/CashTransaction;->f(Z)V

    .line 185
    invoke-virtual {p0, v3}, Lcom/snapchat/android/model/CashTransaction;->c(Z)V

    .line 186
    invoke-virtual {p0, v2}, Lcom/snapchat/android/model/CashTransaction;->e(Z)V

    .line 187
    return-void
.end method

.method public static a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    sget-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->NON_US_USER:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->UNDER_AGE_LIMIT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->LOCKED_ACCOUNT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->SERVICE_NOT_AVAILABLE_TO_RECIPIENT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/model/Friend;)Z
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 55
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->Z()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->M()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/snapchat/android/model/chat/CashFeedItem;)Z
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v1

    .line 91
    sget-object v2, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->COMPLETED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    sget-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->OK:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
