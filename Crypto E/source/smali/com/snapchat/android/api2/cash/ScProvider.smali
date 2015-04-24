.class public Lcom/snapchat/android/api2/cash/ScProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/ICashProvider;


# static fields
.field public static final NAME:Ljava/lang/String; = "snapcash"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "snapcash"

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 70
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 62
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
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/snapchat/android/api2/cash/blockers/Blocker;

    const/4 v1, 0x0

    new-instance v2, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;

    invoke-direct {v2}, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Collection;
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
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/snapchat/android/api2/cash/blockers/Blocker;

    const/4 v1, 0x0

    new-instance v2, Lcom/snapchat/android/api2/cash/blockers/snapchat/SendConfirmationBlocker;

    invoke-direct {v2}, Lcom/snapchat/android/api2/cash/blockers/snapchat/SendConfirmationBlocker;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

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
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/snapchat/android/api2/cash/blockers/Blocker;

    const/4 v1, 0x0

    new-instance v2, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;

    invoke-direct {v2}, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Collection;
    .locals 1
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
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/snapchat/android/api2/cash/blockers/Blocker;

    const/4 v1, 0x0

    new-instance v2, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;

    invoke-direct {v2}, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Collection;
    .locals 1
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
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
