.class public Lcom/snapchat/android/api2/cash/CashProviderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mProviderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/api2/cash/ICashProvider;",
            ">;"
        }
    .end annotation
.end field

.field protected mScProvider:Lcom/snapchat/android/api2/cash/ScProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSquareProvider:Lcom/snapchat/android/api2/cash/square/SquareProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/CashProviderManager;->mProviderMap:Ljava/util/Map;

    .line 34
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/CashProviderManager;->mProviderMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/CashProviderManager;->mScProvider:Lcom/snapchat/android/api2/cash/ScProvider;

    invoke-virtual {v1}, Lcom/snapchat/android/api2/cash/ScProvider;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/api2/cash/CashProviderManager;->mScProvider:Lcom/snapchat/android/api2/cash/ScProvider;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/CashProviderManager;->mProviderMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/CashProviderManager;->mSquareProvider:Lcom/snapchat/android/api2/cash/square/SquareProvider;

    invoke-virtual {v1}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/api2/cash/CashProviderManager;->mSquareProvider:Lcom/snapchat/android/api2/cash/square/SquareProvider;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 48
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c0175

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 49
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/ICashProvider;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/CashProviderManager;->mProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/cash/ICashProvider;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/CashProviderManager;->mProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
