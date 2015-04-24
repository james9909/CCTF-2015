.class Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;-><init>(Z)V

    .line 122
    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2$1;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;)V

    .line 145
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 146
    return-void
.end method
