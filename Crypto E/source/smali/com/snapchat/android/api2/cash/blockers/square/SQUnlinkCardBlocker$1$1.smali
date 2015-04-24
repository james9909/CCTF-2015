.class Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/square/UnlinkCardTask$UnlinkSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->a(Ljava/util/List;Z)V

    .line 51
    return-void
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 55
    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;Z)Z

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->mCashAuthManager:Lcom/snapchat/android/cash/CashAuthManager;

    invoke-virtual {v0}, Lcom/snapchat/android/cash/CashAuthManager;->b()V

    .line 58
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->b(Ljava/util/List;Z)V

    goto :goto_0
.end method
