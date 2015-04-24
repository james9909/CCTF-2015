.class public Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAcceptTermsBlocker:Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accept_terms"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCardBlocker:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mConfirmBlocker:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "confirm"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPhoneNumberBlocker:Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone_number"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->d()Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->e()Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->f()Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->g()Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->c()Lcom/snapchat/android/api2/cash/blockers/square/SQUrlBlocker;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->d()Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->e()Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->f()Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->g()Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->c()Lcom/snapchat/android/api2/cash/blockers/square/SQUrlBlocker;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_4

    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_4
    return-object v0
.end method

.method public c()Lcom/snapchat/android/api2/cash/blockers/square/SQUrlBlocker;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/square/SQUrlBlocker;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQUrlBlocker;-><init>(Ljava/lang/String;)V

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->mAcceptTermsBlocker:Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;

    return-object v0
.end method

.method public e()Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->mCardBlocker:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    return-object v0
.end method

.method public f()Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->mConfirmBlocker:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    return-object v0
.end method

.method public g()Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->mPhoneNumberBlocker:Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;

    return-object v0
.end method
