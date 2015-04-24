.class public final Lcom/snapchat/android/api2/cash/CashErrorReporter$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/snapchat/android/api2/cash/CashErrorReporter;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/api2/cash/CashErrorReporter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 18
    const-string v0, "com.snapchat.android.api2.cash.CashErrorReporter"

    const-string v1, "members/com.snapchat.android.api2.cash.CashErrorReporter"

    const/4 v2, 0x1

    const-class v3, Lcom/snapchat/android/api2/cash/CashErrorReporter;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/api2/cash/CashErrorReporter;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/snapchat/android/api2/cash/CashErrorReporter;

    invoke-direct {v0}, Lcom/snapchat/android/api2/cash/CashErrorReporter;-><init>()V

    .line 28
    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/CashErrorReporter$$InjectAdapter;->a()Lcom/snapchat/android/api2/cash/CashErrorReporter;

    move-result-object v0

    return-object v0
.end method
