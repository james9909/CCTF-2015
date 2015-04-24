.class Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;->a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Lcom/snapchat/android/model/CashTransaction;)Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;

.field final synthetic val$fragment:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;

    iput-object p2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iput-object p3, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker$1;->val$fragment:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 45
    const-string v0, "SQInitiationConfirmBlocker"

    const-string v1, "CASH-LOG: SQInitiationConfirmBlocker SecurityCodeFragment CANCELED"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;)V

    .line 47
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 38
    const-string v0, "SQInitiationConfirmBlocker"

    const-string v1, "CASH-LOG: SQInitiationConfirmBlocker ENTERED security code"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/CashTransaction;->g(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker$1;->val$fragment:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->d()V

    .line 41
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;Ljava/util/List;Z)V

    .line 42
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 50
    const-string v0, "SQInitiationConfirmBlocker"

    const-string v1, "CASH-LOG: SQInitiationConfirmBlocker SecurityCodeFragment FAILED"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;->b(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;)V

    .line 52
    return-void
.end method
