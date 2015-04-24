.class public final Lcom/google/android/gms/internal/br;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# static fields
.field public static pA:Lcom/google/android/gms/internal/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/bo",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static pB:Lcom/google/android/gms/internal/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/bo",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static pC:Lcom/google/android/gms/internal/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/bo",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static pD:Lcom/google/android/gms/internal/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/bo",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static pE:Lcom/google/android/gms/internal/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/bo",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static pF:Lcom/google/android/gms/internal/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/bo",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static pG:Lcom/google/android/gms/internal/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/bo",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static pH:Lcom/google/android/gms/internal/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/bo",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static pI:Lcom/google/android/gms/internal/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/bo",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static pJ:Lcom/google/android/gms/internal/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/bo",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static pK:Lcom/google/android/gms/internal/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/bo",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static pL:Lcom/google/android/gms/internal/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/bo",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static pM:Lcom/google/android/gms/internal/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/bo",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static pN:Lcom/google/android/gms/internal/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/bo",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static px:Lcom/google/android/gms/internal/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/bo",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static py:Lcom/google/android/gms/internal/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/bo",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static pz:Lcom/google/android/gms/internal/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/bo",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "gads:sdk_core_experiment_id"

    invoke-static {v0}, Lcom/google/android/gms/internal/bo;->y(Ljava/lang/String;)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/br;->px:Lcom/google/android/gms/internal/bo;

    const-string v0, "gads:sdk_core_location"

    const-string v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bo;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/br;->py:Lcom/google/android/gms/internal/bo;

    const-string v0, "gads:sdk_crash_report_enabled"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bo;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/br;->pz:Lcom/google/android/gms/internal/bo;

    const-string v0, "gads:sdk_crash_report_full_stacktrace"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bo;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/br;->pA:Lcom/google/android/gms/internal/bo;

    const-string v0, "gads:block_autoclicks"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bo;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/br;->pB:Lcom/google/android/gms/internal/bo;

    const-string v0, "gads:block_autoclicks_experiment_id"

    invoke-static {v0}, Lcom/google/android/gms/internal/bo;->y(Ljava/lang/String;)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/br;->pC:Lcom/google/android/gms/internal/bo;

    const-string v0, "gads:prefetch:experiment_id"

    invoke-static {v0}, Lcom/google/android/gms/internal/bo;->y(Ljava/lang/String;)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/br;->pD:Lcom/google/android/gms/internal/bo;

    const-string v0, "gads:spam_app_context:experiment_id"

    invoke-static {v0}, Lcom/google/android/gms/internal/bo;->y(Ljava/lang/String;)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/br;->pE:Lcom/google/android/gms/internal/bo;

    const-string v0, "gads:spam_app_context:enabled"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bo;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/br;->pF:Lcom/google/android/gms/internal/bo;

    const-string v0, "gads:enable_content_fetching"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bo;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/br;->pG:Lcom/google/android/gms/internal/bo;

    const-string v0, "gads:content_length_weight"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/bo;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/br;->pH:Lcom/google/android/gms/internal/bo;

    const-string v0, "gads:content_age_weight"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/bo;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/br;->pI:Lcom/google/android/gms/internal/bo;

    const-string v0, "gads:min_content_len"

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bo;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/br;->pJ:Lcom/google/android/gms/internal/bo;

    const-string v0, "gads:fingerprint_number"

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/bo;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/br;->pK:Lcom/google/android/gms/internal/bo;

    const-string v0, "gads:sleep_sec"

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/bo;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/br;->pL:Lcom/google/android/gms/internal/bo;

    const-string v0, "gads:kitkat_interstitial_workaround:experiment_id"

    invoke-static {v0}, Lcom/google/android/gms/internal/bo;->y(Ljava/lang/String;)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/br;->pM:Lcom/google/android/gms/internal/bo;

    const-string v0, "gads:kitkat_interstitial_workaround:enabled"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bo;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/bo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/br;->pN:Lcom/google/android/gms/internal/bo;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aJ()Lcom/google/android/gms/internal/bq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/bq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bF()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aI()Lcom/google/android/gms/internal/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bp;->bF()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static j(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aJ()Lcom/google/android/gms/internal/bq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/bq;->j(Landroid/content/Context;)V

    return-void
.end method
