.class public final enum Lcrittercism/android/bi;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcrittercism/android/bi;

.field public static final enum b:Lcrittercism/android/bi;

.field public static final enum c:Lcrittercism/android/bi;

.field public static final enum d:Lcrittercism/android/bi;

.field public static final enum e:Lcrittercism/android/bi;

.field public static final enum f:Lcrittercism/android/bi;

.field public static final enum g:Lcrittercism/android/bi;

.field public static final enum h:Lcrittercism/android/bi;

.field private static final synthetic p:[Lcrittercism/android/bi;


# instance fields
.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Lcrittercism/android/bj$a;

.field private m:Lcrittercism/android/bw;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 9
    new-instance v0, Lcrittercism/android/bi;

    const-string v1, "APP_LOADS"

    const/4 v2, 0x0

    const-string v3, "app_loads"

    const/16 v4, 0xa

    const v5, 0x7fffffff

    new-instance v6, Lcrittercism/android/bj$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcrittercism/android/bj$a;-><init>(I)V

    new-instance v7, Lcrittercism/android/bp$a;

    invoke-direct {v7}, Lcrittercism/android/bp$a;-><init>()V

    const-string v8, "/android_v2/handle_app_loads"

    const-string v9, "app_loads"

    invoke-direct/range {v0 .. v9}, Lcrittercism/android/bi;-><init>(Ljava/lang/String;ILjava/lang/String;IILcrittercism/android/bj$a;Lcrittercism/android/bw;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcrittercism/android/bi;->a:Lcrittercism/android/bi;

    .line 17
    new-instance v0, Lcrittercism/android/bi;

    const-string v1, "HAND_EXCS"

    const/4 v2, 0x1

    const-string v3, "exceptions"

    const/4 v4, 0x5

    const/16 v5, 0x32

    new-instance v6, Lcrittercism/android/bj$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcrittercism/android/bj$a;-><init>(I)V

    new-instance v7, Lcrittercism/android/bp$a;

    invoke-direct {v7}, Lcrittercism/android/bp$a;-><init>()V

    const-string v8, "/android_v2/handle_exceptions"

    const-string v9, "exceptions"

    invoke-direct/range {v0 .. v9}, Lcrittercism/android/bi;-><init>(Ljava/lang/String;ILjava/lang/String;IILcrittercism/android/bj$a;Lcrittercism/android/bw;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcrittercism/android/bi;->b:Lcrittercism/android/bi;

    .line 25
    new-instance v0, Lcrittercism/android/bi;

    const-string v1, "INTERNAL_EXCS"

    const/4 v2, 0x2

    const-string v3, "internal_excs"

    const/4 v4, 0x3

    const/4 v5, 0x3

    new-instance v6, Lcrittercism/android/bj$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcrittercism/android/bj$a;-><init>(I)V

    new-instance v7, Lcrittercism/android/bp$a;

    invoke-direct {v7}, Lcrittercism/android/bp$a;-><init>()V

    const-string v8, "/android_v2/handle_exceptions"

    const-string v9, "exceptions"

    invoke-direct/range {v0 .. v9}, Lcrittercism/android/bi;-><init>(Ljava/lang/String;ILjava/lang/String;IILcrittercism/android/bj$a;Lcrittercism/android/bw;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcrittercism/android/bi;->c:Lcrittercism/android/bi;

    .line 33
    new-instance v0, Lcrittercism/android/bi;

    const-string v1, "NDK_CRASHES"

    const/4 v2, 0x3

    const-string v3, "ndk_crashes"

    const/4 v4, 0x5

    const v5, 0x7fffffff

    new-instance v6, Lcrittercism/android/bj$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcrittercism/android/bj$a;-><init>(I)V

    new-instance v7, Lcrittercism/android/bp$a;

    invoke-direct {v7}, Lcrittercism/android/bp$a;-><init>()V

    const-string v8, "/android_v2/handle_ndk_crashes"

    const-string v9, "crashes"

    invoke-direct/range {v0 .. v9}, Lcrittercism/android/bi;-><init>(Ljava/lang/String;ILjava/lang/String;IILcrittercism/android/bj$a;Lcrittercism/android/bw;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcrittercism/android/bi;->d:Lcrittercism/android/bi;

    .line 41
    new-instance v0, Lcrittercism/android/bi;

    const-string v1, "SDK_CRASHES"

    const/4 v2, 0x4

    const-string v3, "sdk_crashes"

    const/4 v4, 0x5

    const v5, 0x7fffffff

    new-instance v6, Lcrittercism/android/bj$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcrittercism/android/bj$a;-><init>(I)V

    new-instance v7, Lcrittercism/android/bp$a;

    invoke-direct {v7}, Lcrittercism/android/bp$a;-><init>()V

    const-string v8, "/android_v2/handle_crashes"

    const-string v9, "crashes"

    invoke-direct/range {v0 .. v9}, Lcrittercism/android/bi;-><init>(Ljava/lang/String;ILjava/lang/String;IILcrittercism/android/bj$a;Lcrittercism/android/bw;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcrittercism/android/bi;->e:Lcrittercism/android/bi;

    .line 49
    new-instance v0, Lcrittercism/android/bi;

    const-string v1, "CURR_BCS"

    const/4 v2, 0x5

    const-string v3, "current_bcs"

    const/16 v4, 0x32

    const v5, 0x7fffffff

    new-instance v6, Lcrittercism/android/bj$a;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcrittercism/android/bj$a;-><init>(I)V

    new-instance v7, Lcrittercism/android/bo$a;

    invoke-direct {v7}, Lcrittercism/android/bo$a;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcrittercism/android/bi;-><init>(Ljava/lang/String;ILjava/lang/String;IILcrittercism/android/bj$a;Lcrittercism/android/bw;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcrittercism/android/bi;->f:Lcrittercism/android/bi;

    .line 57
    new-instance v0, Lcrittercism/android/bi;

    const-string v1, "NW_BCS"

    const/4 v2, 0x6

    const-string v3, "network_bcs"

    const/16 v4, 0xa

    const v5, 0x7fffffff

    new-instance v6, Lcrittercism/android/bj$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcrittercism/android/bj$a;-><init>(I)V

    new-instance v7, Lcrittercism/android/bo$a;

    invoke-direct {v7}, Lcrittercism/android/bo$a;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcrittercism/android/bi;-><init>(Ljava/lang/String;ILjava/lang/String;IILcrittercism/android/bj$a;Lcrittercism/android/bw;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcrittercism/android/bi;->g:Lcrittercism/android/bi;

    .line 65
    new-instance v0, Lcrittercism/android/bi;

    const-string v1, "PREV_BCS"

    const/4 v2, 0x7

    const-string v3, "previous_bcs"

    const/16 v4, 0x32

    const v5, 0x7fffffff

    new-instance v6, Lcrittercism/android/bj$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcrittercism/android/bj$a;-><init>(I)V

    new-instance v7, Lcrittercism/android/bo$a;

    invoke-direct {v7}, Lcrittercism/android/bo$a;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcrittercism/android/bi;-><init>(Ljava/lang/String;ILjava/lang/String;IILcrittercism/android/bj$a;Lcrittercism/android/bw;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcrittercism/android/bi;->h:Lcrittercism/android/bi;

    .line 8
    const/16 v0, 0x8

    new-array v0, v0, [Lcrittercism/android/bi;

    const/4 v1, 0x0

    sget-object v2, Lcrittercism/android/bi;->a:Lcrittercism/android/bi;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcrittercism/android/bi;->b:Lcrittercism/android/bi;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcrittercism/android/bi;->c:Lcrittercism/android/bi;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcrittercism/android/bi;->d:Lcrittercism/android/bi;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcrittercism/android/bi;->e:Lcrittercism/android/bi;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcrittercism/android/bi;->f:Lcrittercism/android/bi;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcrittercism/android/bi;->g:Lcrittercism/android/bi;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcrittercism/android/bi;->h:Lcrittercism/android/bi;

    aput-object v2, v0, v1

    sput-object v0, Lcrittercism/android/bi;->p:[Lcrittercism/android/bi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IILcrittercism/android/bj$a;Lcrittercism/android/bw;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-object p3, p0, Lcrittercism/android/bi;->i:Ljava/lang/String;

    .line 90
    iput p4, p0, Lcrittercism/android/bi;->j:I

    .line 91
    iput p5, p0, Lcrittercism/android/bi;->k:I

    .line 92
    iput-object p6, p0, Lcrittercism/android/bi;->l:Lcrittercism/android/bj$a;

    .line 93
    iput-object p7, p0, Lcrittercism/android/bi;->m:Lcrittercism/android/bw;

    .line 94
    iput-object p8, p0, Lcrittercism/android/bi;->n:Ljava/lang/String;

    .line 95
    iput-object p9, p0, Lcrittercism/android/bi;->o:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/bi;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcrittercism/android/bi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bi;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/bi;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcrittercism/android/bi;->p:[Lcrittercism/android/bi;

    invoke-virtual {v0}, [Lcrittercism/android/bi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/bi;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcrittercism/android/bi;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcrittercism/android/bi;->j:I

    return v0
.end method

.method public final c()Lcrittercism/android/bj$a;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcrittercism/android/bi;->l:Lcrittercism/android/bj$a;

    return-object v0
.end method

.method public final d()Lcrittercism/android/bw;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcrittercism/android/bi;->m:Lcrittercism/android/bw;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcrittercism/android/bi;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcrittercism/android/bi;->k:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcrittercism/android/bi;->o:Ljava/lang/String;

    return-object v0
.end method
