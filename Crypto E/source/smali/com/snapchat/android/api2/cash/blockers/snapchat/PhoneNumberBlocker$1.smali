.class Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$PhoneVerificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;->e()Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$PhoneVerificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    const-string v0, "PhoneNumberBlocker"

    const-string v1, "CASH-LOG: PhoneNumberBlocker VERIFICATION COMPLETE"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->N()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;->b(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->O()V

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;->a()V

    .line 95
    return-void
.end method
