.class public Lcom/snapchat/android/api2/cash/GetCashEligibilityTask;
.super Lcom/snapchat/android/api2/framework/BasicScRequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/GetCashEligibilityTask$RequestPayload;
    }
.end annotation


# instance fields
.field private final mFriendName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/GetCashEligibilityTask;->mFriendName:Ljava/lang/String;

    .line 19
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/GetCashEligibilityTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/GetCashEligibilityTask;->mFriendName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/snapchat/android/api2/cash/GetCashEligibilityTask$RequestPayload;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/cash/GetCashEligibilityTask$RequestPayload;-><init>(Lcom/snapchat/android/api2/cash/GetCashEligibilityTask;)V

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "/cash/check_recipient_eligible"

    return-object v0
.end method
