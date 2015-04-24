.class public final enum Lcom/snapchat/android/database/OnboardingTooltip;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/OnboardingTooltip;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/database/OnboardingTooltip;

.field public static final enum b:Lcom/snapchat/android/database/OnboardingTooltip;

.field public static final enum c:Lcom/snapchat/android/database/OnboardingTooltip;

.field public static final enum d:Lcom/snapchat/android/database/OnboardingTooltip;

.field public static final enum e:Lcom/snapchat/android/database/OnboardingTooltip;

.field public static final enum f:Lcom/snapchat/android/database/OnboardingTooltip;

.field public static final enum g:Lcom/snapchat/android/database/OnboardingTooltip;

.field public static final enum h:Lcom/snapchat/android/database/OnboardingTooltip;

.field private static final synthetic j:[Lcom/snapchat/android/database/OnboardingTooltip;


# instance fields
.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    new-instance v0, Lcom/snapchat/android/database/OnboardingTooltip;

    const-string v1, "SNAP"

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->L:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/snapchat/android/database/OnboardingTooltip;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->a:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 21
    new-instance v0, Lcom/snapchat/android/database/OnboardingTooltip;

    const-string v1, "CAPTION"

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->M:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/snapchat/android/database/OnboardingTooltip;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->b:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 22
    new-instance v0, Lcom/snapchat/android/database/OnboardingTooltip;

    const-string v1, "SWIPE_FILTERS"

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->N:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/snapchat/android/database/OnboardingTooltip;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->c:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 23
    new-instance v0, Lcom/snapchat/android/database/OnboardingTooltip;

    const-string v1, "MY_STORY"

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->O:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/snapchat/android/database/OnboardingTooltip;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->d:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 24
    new-instance v0, Lcom/snapchat/android/database/OnboardingTooltip;

    const-string v1, "FIRST_LOCATION"

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->Q:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/snapchat/android/database/OnboardingTooltip;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->e:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 25
    new-instance v0, Lcom/snapchat/android/database/OnboardingTooltip;

    const-string v1, "PROFILE"

    const/4 v2, 0x5

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->bh:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/OnboardingTooltip;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->f:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 26
    new-instance v0, Lcom/snapchat/android/database/OnboardingTooltip;

    const-string v1, "NEW_FRIEND_REQUEST"

    const/4 v2, 0x6

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->bi:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/OnboardingTooltip;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->g:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 28
    new-instance v0, Lcom/snapchat/android/database/OnboardingTooltip;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/OnboardingTooltip;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->h:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 19
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/snapchat/android/database/OnboardingTooltip;

    sget-object v1, Lcom/snapchat/android/database/OnboardingTooltip;->a:Lcom/snapchat/android/database/OnboardingTooltip;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/database/OnboardingTooltip;->b:Lcom/snapchat/android/database/OnboardingTooltip;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/database/OnboardingTooltip;->c:Lcom/snapchat/android/database/OnboardingTooltip;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/database/OnboardingTooltip;->d:Lcom/snapchat/android/database/OnboardingTooltip;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/database/OnboardingTooltip;->e:Lcom/snapchat/android/database/OnboardingTooltip;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/database/OnboardingTooltip;->f:Lcom/snapchat/android/database/OnboardingTooltip;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/database/OnboardingTooltip;->g:Lcom/snapchat/android/database/OnboardingTooltip;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/database/OnboardingTooltip;->h:Lcom/snapchat/android/database/OnboardingTooltip;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->j:[Lcom/snapchat/android/database/OnboardingTooltip;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/snapchat/android/database/OnboardingTooltip;->i:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/snapchat/android/database/OnboardingTooltip;
    .locals 5
    .parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "OnBoardingTooltip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert an empty string("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") into OnboardingTooltip. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->h:Lcom/snapchat/android/database/OnboardingTooltip;

    .line 54
    :goto_0
    return-object v0

    .line 51
    :cond_0
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/database/OnboardingTooltip;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/OnboardingTooltip;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string v1, "OnBoardingTooltip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " into OnboardingTooltip. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->h:Lcom/snapchat/android/database/OnboardingTooltip;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/OnboardingTooltip;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/snapchat/android/database/OnboardingTooltip;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/OnboardingTooltip;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/OnboardingTooltip;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/snapchat/android/database/OnboardingTooltip;->j:[Lcom/snapchat/android/database/OnboardingTooltip;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/OnboardingTooltip;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/OnboardingTooltip;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/database/OnboardingTooltip;->i:Ljava/lang/String;

    return-object v0
.end method
