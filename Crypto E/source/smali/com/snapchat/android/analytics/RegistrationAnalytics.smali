.class public Lcom/snapchat/android/analytics/RegistrationAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mIsRegisteringOnOptionalSteps:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snapchat/android/analytics/RegistrationAnalytics;->mIsRegisteringOnOptionalSteps:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 25
    sput-boolean p0, Lcom/snapchat/android/analytics/RegistrationAnalytics;->mIsRegisteringOnOptionalSteps:Z

    .line 26
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/snapchat/android/analytics/RegistrationAnalytics;->mIsRegisteringOnOptionalSteps:Z

    return v0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_FOCUS_ON_PHONE_NUMBER"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_AUTO_FILL_PHONE_NUMBER"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EDITED_PHONE_NUMBER"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_PHONE_NUMBER_INVALID"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static f()V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_FOCUS_ON_COUNTRY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static g()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EDITED_COUNTRY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static h()V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_SEND_VERIFICATION_CODE"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static i()V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_TEXT_VERIFY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static j()V
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_PHONE_CALL_VERIFY_INSTEAD"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static k()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_CANCEL_VERIFY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static l()V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_REGISTER_PHONE_NUMBER_TENTATIVE_SUCCESS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static m()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_FOCUS_ON_VERIFY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static n()V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EDITED_VERIFY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static o()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_ATTEMPT_VERIFY_WITH_CODE"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static p()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_VERIFY_INVALID"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static q()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_CLEAR_PHONE_NUMBER"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static r()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_RESEND_VERIFICATION_CODE"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static s()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_CLEAR_VERIFICATION_CODE"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static t()V
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_REGISTER_PHONE_NUMBER_VERIFICATION_SUCCESS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method
