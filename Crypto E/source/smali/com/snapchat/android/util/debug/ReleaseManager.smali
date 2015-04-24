.class public Lcom/snapchat/android/util/debug/ReleaseManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/debug/ReleaseManager$1;,
        Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;
    }
.end annotation


# static fields
.field private static final a:Lcom/snapchat/android/util/debug/ReleaseManager;

.field private static b:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-direct {v0}, Lcom/snapchat/android/util/debug/ReleaseManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager;->a:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 26
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->a:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager;->b:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/snapchat/android/util/debug/ReleaseManager;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager;->a:Lcom/snapchat/android/util/debug/ReleaseManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-static {p0}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    :cond_0
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->e:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager;->b:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    .line 72
    :goto_0
    return-void

    .line 58
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "PROFILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    :cond_2
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->a:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager;->b:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    goto :goto_0

    .line 62
    :cond_3
    const-string v1, "PERF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->b:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager;->b:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    goto :goto_0

    .line 64
    :cond_4
    const-string v1, "ALPHA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 65
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->c:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager;->b:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    goto :goto_0

    .line 66
    :cond_5
    const-string v1, "BETA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 67
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->d:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager;->b:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    goto :goto_0

    .line 69
    :cond_6
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->e:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager;->b:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    goto :goto_0
.end method

.method public static e()Z
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$1;->a:[I

    sget-object v1, Lcom/snapchat/android/util/debug/ReleaseManager;->b:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    invoke-virtual {v1}, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 117
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 115
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static f()Z
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$1;->a:[I

    sget-object v1, Lcom/snapchat/android/util/debug/ReleaseManager;->b:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    invoke-virtual {v1}, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 131
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 129
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static g()Z
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$1;->a:[I

    sget-object v1, Lcom/snapchat/android/util/debug/ReleaseManager;->b:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    invoke-virtual {v1}, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 145
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 143
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->g()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->a()Ljava/lang/String;

    move-result-object v0

    .line 151
    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flavortest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method
